class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "<h1> La Estampa </h1>"
  end

end
