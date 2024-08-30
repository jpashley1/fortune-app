class MyExamplesController < ApplicationController
  def testing
    intro_message = "testing testing... one two"
    render json: { message: "#{intro_message}" }
  end

  def fortune
    your_fortune = "outlook not so good"
    # Feature 1: The page should return a random fortune. Every time you refresh the page, you’ll get a new fortune. You should make up at least 3 different fortunes.
    render json: { message: "You're future: #{your_fortune}" }
  end

  def lottery
    # Feature 2: The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.
    lotto_numbers = []
    6.times do lotto_numbers.push(rand(1...60)) end
    render json: { message: "Your lotto numbers this week are: #{lotto_numbers}" }
  end

  def pagecount
   # Feature 3: Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it’s impossible.
   counter = .count
    render(json: { message: counter})
  end
end
