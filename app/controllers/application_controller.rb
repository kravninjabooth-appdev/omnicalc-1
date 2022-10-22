class ApplicationController < ActionController::Base
  def blank_square_form

    render ({:template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    #params = "elephant"=>"42"

      @num = params.fetch("elephant").to_f
      @square_of_num = @num **2
    render ({:template => "calculation_templates/square_results.html.erb"})
  end

  def blank_rand_form

    render ({:template => "calculation_templates/blank_rand_form.html.erb"})
  end


  def calculate_random
    
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
  
    render ({:template => "calculation_templates/rand_results.html.erb"})

  end

  def blank_sqrt

    render ({:template => "calculation_templates/blank_sqrt_form.html.erb"})
  end

#calculate_sqrt
  def calculate_sqrt
 
    @num = params.fetch("user_number").to_f
    @squarert_of_num = @num **0.5
  render ({:template => "calculation_templates/squarert_results.html.erb"})
  end

  def blank

    render ({:template => "calculation_templates/blank_payment_form.html.erb"})
  end

 # def calculate_pymt
 
    # @num = 
    # 
  #render ({:template => "calculation_templates/payment_results.html.erb"})
  #end
end
