class AwesomeQuotesController < ApplicationController
  before_action :set_awesome_quote, only: [:show, :edit, :update, :destroy]

  # GET /awesome_quotes
  # GET /awesome_quotes.json
  def index
    @awesome_quotes = AwesomeQuote.all
  end

  # GET /awesome_quotes/1
  # GET /awesome_quotes/1.json
  def show
  end

  # GET /awesome_quotes/new
  def new
    @awesome_quote = AwesomeQuote.new
  end

  # GET /awesome_quotes/1/edit
  def edit
  end

  # POST /awesome_quotes
  # POST /awesome_quotes.json
  def create
    @awesome_quote = AwesomeQuote.new(awesome_quote_params)

    respond_to do |format|
      if @awesome_quote.save
        format.html { redirect_to @awesome_quote, notice: 'Awesome quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @awesome_quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @awesome_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /awesome_quotes/1
  # PATCH/PUT /awesome_quotes/1.json
  def update
    respond_to do |format|
      if @awesome_quote.update(awesome_quote_params)
        format.html { redirect_to @awesome_quote, notice: 'Awesome quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @awesome_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awesome_quotes/1
  # DELETE /awesome_quotes/1.json
  def destroy
    @awesome_quote.destroy
    respond_to do |format|
      format.html { redirect_to awesome_quotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_awesome_quote
      @awesome_quote = AwesomeQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def awesome_quote_params
      params.require(:awesome_quote).permit(:partaker_id, :quote)
    end
end
