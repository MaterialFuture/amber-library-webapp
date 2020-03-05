class HTTP::Server::Context
  property current_user : User?
end

class CurrentUser < Amber::Pipe::Base
  def call(context)
    user_id = context.session["user_id"]?
    if user = User.find user_id
      context.current_user = user
    end
    call_next(context)
  end
end

class Authenticate < Amber::Pipe::Base
  PUBLIC_PATHS = ["/"]

  def call(context)
    user_id = context.session["user_id"]?
    if user_id || public_path?(context.request.path)
      call_next(context)
    elsif context.current_user
      call_next(context)
    else
      context.flash[:warning] = "Please Sign In"
      context.response.headers.add "Location", "/signin"
      context.response.status_code = 302
    end
  end

  private def public_path?(path)
    PUBLIC_PATHS.includes?(path)
    # Different strategies can be used to determine if a path is public
    # Example, if /admin/* paths are the only private paths
    # return false if path.starts_with?("/profile")
    # Example, if only a few private paths exist
    return false if ["/books", "/admin", "/books/new"].includes?(path)
  end
end
