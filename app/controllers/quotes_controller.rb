class QuotesController < ApplicationController
  def new
    @title = "Request a Quote"
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to new_quote_path, notice: "Thank you for your quote request!  You will be contacted shortly."
    else
      render new_quote_path(@quote), error: "Sorry, something went wrong. Please try again."
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:name, :email, :telephone, :website, :company, :address, :address2, :city, :state, :country, :zipcode, :industry, :product, :project_timing, :budget, :project_spec, :project_description)
  end
end
