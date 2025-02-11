class CalculationController < ApplicationController

  def homepage
    render({ :template => "calculation_templates/homepage"})
  end

  def square
    render({ :template => "calculation_templates/square"})
  end

  def square_root
    render({ :template => "calculation_templates/square_root"})
  end

  def random
    render({ :template => "calculation_templates/random"})
  end

  def payment
    render({ :template => "calculation_templates/payment"})
  end

  def do_square
    @number = params.fetch("number").to_f
    @result = (@number ** 2).round(4)
    render({ :template => "calculation_templates/do_square"})
  end

  def do_square_root
    @number = params.fetch("number").to_f
    @result = (@number ** 0.5).round(3)
    render({ :template => "calculation_templates/do_square_root"})
  end

  def do_random
    @min = params.fetch("minimum").to_f
    @max = params.fetch("maximum").to_f
    @result = rand(@min..@max)
    render({ :template => "calculation_templates/do_random"})
  end

  def do_payment
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_f
    @result = (@apr / 1200 * @principal) / (1 - (1 + @apr / 1200) ** (-@years * 12))
    render({ :template => "calculation_templates/do_payment"})
  end

end 
