class SayController < ApplicationController
  def hello
    @name = "Akshay"
    @time = Time.now
  end

  def goodbye
    @dirs = Dir.glob("*")
  end
end
