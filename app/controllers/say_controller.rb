class SayController < ApplicationController
  def hello
    @name = "Akshay"
    @time = Time.now
  end

  def goodbye
  end
end
