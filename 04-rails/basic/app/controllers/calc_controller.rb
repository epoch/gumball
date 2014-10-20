class CalcController < ApplicationController

  def calculate
    @num1 = params[:num1].to_f
    @num2 = params[:num2].to_f
    @operator = params[:operator]

    @result = case @operator
    when '+' then @num1 + @num2
    when '-' then @num1 - @num2
    when '*' then @num1 * @num2
    end 

    # template will be in calc/calculate.html.erb
  end

end