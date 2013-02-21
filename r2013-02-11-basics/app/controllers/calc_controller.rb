class CalcController < ApplicationController
  def calculate
    @x = params[:x]
    @y = params[:y]

    @result = case params['operator']
      when '+' then @x + @y
      when '-' then @x - @y
    end
  end
end