class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "La Estampa"
    #article = Article.new(:title => "Muere Frizzi", :subtitle => "A los 60 años",
    #  body: "Era muy querido")
    #article.save
    end

  end
