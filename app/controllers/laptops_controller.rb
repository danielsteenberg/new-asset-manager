class LaptopsController < ApplicationController
  before_action :set_asset_directory, only: [:show, :edit, :update, :destroy]

  def index
    @asset_directories = AssetDirectory.where(category: 'Laptops')
  end

  def show
  end

  def new
    @laptop = AssetDirectory.new
  end

  def edit
  end

  def create
    @laptop = AssetDirectory.new(asset_directory_params)

    respond_to do |format|
      if @laptop.save
        format.html { redirect_to @laptop, notice: 'Laptop was successfully created.' }
        format.json { render :show, status: :created, location: @laptop }
      else
        format.html { render :new }
        format.json { render json: @laptop.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @laptop.update(asset_directory_params)
        format.html { redirect_to @laptop, notice: 'Laptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @laptop }
      else
        format.html { render :edit }
        format.json { render json: @laptop.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @laptop.destroy
    respond_to do |format|
      format.html { redirect_to laptops_url, notice: 'Laptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    private
    def set_asset_directory
      @asset_directory = AssetDirectory.find(params[:id])
    end

    def asset_directory_params
      params.require(:asset_directory).permit(:item_model, :item_description, :item_price, :item_attributes, :assignee, :category)
    end
end
