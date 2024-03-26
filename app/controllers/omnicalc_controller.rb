class OmnicalcController < ApplicationController
  def render_home
    render template: "omnicalc_templates/index"
  end

  def square
    render template: "omnicalc_templates/square"
  end

  def square_root
    render template: "omnicalc_templates/square_root"
  end

  def random
    render template: "omnicalc_templates/random"
  end

  def payment
    render template: "omnicalc_templates/payments"
  end

  def square_res
    @num = params['user_number'].to_f
    @result = (@num**2).round(4)

    render template: "omnicalc_templates/square_res"
  end

  def square_root_res
    @num = params['user_number'].to_f
    @result = Math.sqrt(@num).round(4)

    render template: "omnicalc_templates/square_root_res"
  end

  def random_res
    @mini = params['user_min'].to_f
    @maxi = params['user_max'].to_f
  
    @result = (@mini + rand * (@maxi - @mini)).round(4)
    render template: "omnicalc_templates/random_res"
  end

  def payment_res
    @apr = params["user_apr"].to_f
    @years = params["user_years"].to_f
    @present_value = params["user_pv"].to_f

    monthly_rate = @apr / 100 / 12
    @result = @present_value * (monthly_rate / (1 - (1 + monthly_rate) ** (-@years * 12)))

    render template: "omnicalc_templates/payments_res"
  end
end
