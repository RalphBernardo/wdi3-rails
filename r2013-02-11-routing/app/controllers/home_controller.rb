class HomeController < ApplicationController
  def homepage
  end

  def gotoA
  end

  def gotoB
  end

  def form
    case params[:choice]
      when '1' then redirect_to('/one')
      when '2' then redirect_to('/two')
      when '3' then redirect_to('/three')
      when 'A' then redirect_to('/gotoA')
      when 'B' then redirect_to('/gotoB')
    end
  end

  def one
    render 'one'
  end

  def two
    render 'two'
  end

  def three
    render 'three'
  end
end

