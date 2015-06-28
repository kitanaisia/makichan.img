require "RMagick"
include Magick

class WelcomeController < ApplicationController
  def index
    @hex_matrix = []
    @chars = ["ま","き","ち","ゃ","ん"]
    @source = Source.new
    
    # RGB16進数の二次元配列の作成
    img = ImageList.new("image/after.png")
    for y in 0..img.rows
      hex_arr = []
      for x in 0..img.columns
        src = img.pixel_color(x,y)
    
        rgb = [src.red/256, src.green/256, src.blue/256]
        hex = rgb.inject(""){|result, elem| result + sprintf("%02s",elem.to_s(16)).gsub(/ /, "0")}
    
        hex_arr << hex
      end
      @hex_matrix << hex_arr
    end

  end
end
