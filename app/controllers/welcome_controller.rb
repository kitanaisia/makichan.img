class WelcomeController < ApplicationController
  def index
    @user = Hash.new
    @user[:name] = "Maki Nishikino"
    @user[:username] = "Maki Nishikino"
    @user[:location] = "Otonokizaka, Japan"
    @user[:about] = "Imiwakannai"
  end
end
