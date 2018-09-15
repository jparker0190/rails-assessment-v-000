class PortfoliosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /portfolios
  # GET /portfolios.json
  def index
      @portfolio = Portfolio.all
  end

  # GET /portfolios/1
  # GET /portfolios/1.json
  def show
    @portfolio = Portfolio.find(params[:id])
  end

  # GET /portfolios/new
  def new
    @portfolio = Portfolio.new
  end

  # GET /portfolios/1/edit
  def edit
    redirect_if_not_logged_in
    @error_message = params[:error]
    @portfolio = Portfolio.find(params[:id])
    if @portfolio.user == current_user
     erb :'portfolios/edit'
   else
     redirect to '/portfolios'
   end
  end

  # POST /portfolios
  # POST /portfolios.json
  def create
    portfolio = Portfolio.create(portfolio_params)
    redirect_to portfolio
  end

  # PATCH/PUT /portfolios/1
  # PATCH/PUT /portfolios/1.json
  def update
    @portfolio = Portfolio.find(params[:id])
    @portfolio.update(portfolio_params)
    redirect_to portfolio_path(@portfolio)
  end

  # DELETE /portfolios/1
  # DELETE /portfolios/1.json
  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:symbol, :sector, :high, :low, :price, :stock_id[], :user_id[])
    end
end
