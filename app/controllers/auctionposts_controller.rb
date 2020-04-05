class AuctionpostsController < ApplicationController
  before_action :set_auctionpost, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!
  # GET /auctionposts
  # GET /auctionposts.json
  def index
    @auctionposts = Auctionpost.all
  end

  # GET /auctionposts/1
  # GET /auctionposts/1.json
  def show
  end

  # GET /auctionposts/new
  def new
    @auctionpost = Auctionpost.new
  end
 def myposts
   @auctionposts = Auctionpost.all
  end
  def myclaims
    @auctionposts = Auctionpost.all
  end
  # GET /auctionposts/1/edit
  def edit
  end
  def bid
      @auctionpost=Auctionpost.find(params[:id])
      @auctionpost.update_attribute(:claimedbyname, current_user.name)
      @auctionpost.update_attribute(:claimedbyid, current_user.id)
   #  @auctionpost.raise_amount = params[:raise_amount]

      @auctionpost.startingbid += @auctionpost.raise_amount.to_i
  #    respond_to do |format|

    respond_to do |format|
      if @auctionpost.save
        format.html { redirect_to @auctionpost, notice: 'The Bid was sucesfully raised.' }
        format.json { render :show, status: :created, location: @auctionpost }
      else
        format.html { render :new }
        format.json { render json: @auctionpost.errors, status: :unprocessable_entity }
      end
end
      #respond_to auction_save.js.erb
    #render :text => "Successfully Completed."
  #  end
  end
  # POST /auctionposts
  # POST /auctionposts.json
  def claim
      @auctionpost=Auctionpost.find(params[:id])
      @auctionpost.update_attribute(:claimed, true)
      respond_to do |format|
        if @auctionpost.save
          format.html { redirect_to @auctionpost, notice: 'The product was successfully claimed.' }
          format.json { render :show, status: :created, location: @auctionpost }
        else
          format.html { render :new }
          format.json { render json: @auctionpost.errors, status: :unprocessable_entity }
        end
      end
  end
  def create
    @auctionpost = Auctionpost.new(auctionpost_params)
    @auctionpost.user = current_user
    respond_to do |format|
      if @auctionpost.save
        format.html { redirect_to @auctionpost, notice: 'Auctionpost was successfully created.' }
        format.json { render :show, status: :created, location: @auctionpost }
      else
        format.html { render :new }
        format.json { render json: @auctionpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auctionposts/1
  # PATCH/PUT /auctionposts/1.json
  def update
        @auctionpost=Auctionpost.find(params[:id])
    respond_to do |format|
      if @auctionpost.update(auctionpost_params)
        format.html { redirect_to @auctionpost}
        format.json { render :show, status: :ok, location: @auctionpost }
      else
        format.html { render :edit }
        format.json { render json: @auctionpost.errors, status: :unprocessable_entity }
      end

    end
  end

  # DELETE /auctionposts/1
  # DELETE /auctionposts/1.json
  def destroy
    @auctionpost.destroy
    respond_to do |format|
      format.html { redirect_to auctionposts_url, notice: 'Auctionpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def auction_save
  @auctionpost = Auctionposts.find(params[:id])
  @auctionpost.raise_amount = params[:raise_amount]
  @auctionpost.startingbid += [:raise_amount].to_i

    respond_to do |format|
      format.js
    #respond_to auction_save.js.erb
  #render :text => "Successfully Completed."
  end
end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auctionpost
      @auctionpost = Auctionpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auctionpost_params
      params.require(:auctionpost).permit(:name, :description, :startingbid, :deadlinetime, :contactnumber, :image, :raise_amount, :claimedbyname, :claimedbyid, :claimed)
    end
end
