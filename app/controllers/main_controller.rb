class MainController < ApplicationController
  def hello
    
  end

  def hi
    params
  end

  def greetings
    @name = params[:name]
    
  end
end