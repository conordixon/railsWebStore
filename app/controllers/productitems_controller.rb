class ProductitemsController < ApplicationController
  before_action :set_productitem, only: [:show, :edit, :update, :destroy]

  # GET /productitems
  # GET /productitems.json
  def index
    @productitem = Productitem.all
  end

  # GET /productitems/1
  # GET /productitems/1.json
  def show
    @productitem = Productitem.find(params[:id])
  end

  # GET /productitems/new
  def new
    @productitem = Productitem.new
  end

  # GET /productitems/1/edit
  def edit
    @productitem = Productitem.find(params[:id])
  end

  # POST /productitems
  # POST /productitems.json
  def create
  #render plain: params[:productitem].inspect
    @productitem = Productitem.new(productitem_params)

    respond_to do |format|
      if @productitem.save
        format.html { redirect_to @productitem, notice: 'Productitem was successfully created.' }
        format.json { render :show, status: :created, location: @productitem }
      else
        format.html { render :new }
        format.json { render json: @productitem.errors, status: :unprocessable_entity }
      end
    end


    def productitem_params
      params.require(:productitem).permit(:productname, :description, :price, :brand)
    end
  end

  # PATCH/PUT /productitems/1
  # PATCH/PUT /productitems/1.json
  def update
    respond_to do |format|
      if @productitem.update(productitem_params)
        format.html { redirect_to @productitem, notice: 'Productitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @productitem }
      else
        format.html { render :edit }
        format.json { render json: @productitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productitems/1
  # DELETE /productitems/1.json
  def destroy
    @productitem.destroy
    respond_to do |format|
      format.html { redirect_to productitems_url, notice: 'Productitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # # Use callbacks to share common setup or constraints between actions.
    def set_productitem
      @productitem = Productitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productitem_params
      params.require(:productitem).permit(:productname, :description, :price, :brand)
    end
end
