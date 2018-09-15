class StocksController < ApplicationController
  def update
    @stock.update(stock_params)
    redirect_to stock_path(@stock)
  end
  def create
    @stock = Stock.create(stock_params)
    redirect_to stock_path(@stock)
  end
  def new
    @stock = Stock.new
  end

  def edit
  end

  def show
    @stock = Stock.find_by(params[:id])
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_params
      params.require(:stock).permit(:symbol, :sector, :high, :low, :price, stock_id:[], user_id:[])
    end
end
