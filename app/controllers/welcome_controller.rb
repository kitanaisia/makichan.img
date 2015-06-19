require "RMagick"
include Magick

class WelcomeController < ApplicationController
  def index
    # @user = Hash.new
    # @user[:name] = "Maki Nishikino"
    # @user[:username] = "Maki Nishikino"
    # @user[:location] = "Otonokizaka, Japan"
     
    @hex_matrix = []
    @chars = ["ま","き","ち","ゃ","ん"]
    
    # RGB16進数の二次元配列の作成
    img = ImageList.new("image/after.png")
    for y in 0..img.rows
      hex_arr = []
      for x in 0..img.columns
        src = img.pixel_color(x,y)
    
        rgb = [src.red/256, src.green/256, src.blue/256]
        hex = rgb.inject(""){|result, elem| result + elem.to_s(16)}
    
        hex_arr << hex
      end
      @hex_matrix << hex_arr
    end

  end
end
