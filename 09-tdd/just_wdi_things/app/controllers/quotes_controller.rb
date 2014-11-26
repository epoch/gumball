class QuotesController < ApplicationController

  def index
    @quotes = Quote.all

    respond_to do |format|
      format.html {}
      format.json { render :json => @quotes }
    end
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.save
    render :json => @quote
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    render :json => @quote
  end
  
  private

  def quote_params
    params.require(:quote).permit(:body, :author)
  end

end