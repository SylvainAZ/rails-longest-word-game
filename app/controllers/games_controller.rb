class GamesController < ApplicationController


  def new
    @sample = []
    alphabet = ("A".."Z").to_a
    10.times { @sample << alphabet.sample }
  end

  def score
    @message = ""
    letters = params[:sample]
    user_input = params[:word].split("")
    user_input.each do |letter|
      if letters.include? letter
        letters.delete(letter)
      else
        @message = "sorry but #{params[:word]} is not included in #{@sample}  "
      end
    end
  end
end
