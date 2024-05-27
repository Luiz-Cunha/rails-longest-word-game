require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = (0...10).map{65.+(rand(26)).chr}
    session[:letters] = @letters
  end

  def score
    @word = params[:word]
    @letters = session[:letters]
  end
end
