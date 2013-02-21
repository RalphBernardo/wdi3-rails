class HomeController < ApplicationController

  def home
  end

  def numbers
    @amount = 234
    @large_number = 987657483928345
    @phone = 2126543456
  end

  def text
    @numbers = (1..20).to_a
    @person_count1 = 1
    @person_count2 = 2
    @story = "A long, long time ago in a galaxy far, far away."
  end

  def url

  end

end