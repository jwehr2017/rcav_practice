class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square

@number = params[:id].to_i
@number_square = (@number**2)
  end
  def square_root
@number = params[:id].to_i
@number_square_root = (@number**0.5)
  end
  def random
@number_1 = params[:id_low].to_i
@number_2 = params[:id_high].to_i
@random = Random.new.rand(@number_1..@number_2)
end
def payment
@year = params[:year].to_i
@loan = params[:loan].to_i
@rate = params[:rate].to_f
@months = @year * 12
@interest = @rate/120000
@payment = @loan*(@interest*((1+@interest)**(@months)))/((1+@interest)**(@months)-1)
end
end
