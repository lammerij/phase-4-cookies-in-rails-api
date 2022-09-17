class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "World"
    cookies[:cookies_heaven] ||= "Heaven"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
