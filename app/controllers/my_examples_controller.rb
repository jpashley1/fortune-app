class MyExamplesController < ApplicationController
end

def testing
  intro_message = "testing testing... one two"
  render json: { message: "#{intro_message}" }
end
