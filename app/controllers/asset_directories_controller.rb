class AssetDirectoriesController < ApplicationController
  before_action :set_asset_directory, only: [:show, :edit, :update, :destroy]

  def index
    @asset_directories = AssetDirectory.all
  end

  def show
  end

  def new
    @asset_directory = AssetDirectory.new
  end

  def edit
  end

  def create
    @asset_directory = AssetDirectory.new(asset_directory_params)

    respond_to do |format|
      if @asset_directory.save
        format.html { redirect_to @asset_directory, notice: 'Asset directory was successfully created.' }
        format.json { render :show, status: :created, location: @asset_directory }
      else
        format.html { render :new }
        format.json { render json: @asset_directory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @asset_directory.update(asset_directory_params)
        format.html { redirect_to @asset_directory, notice: 'Asset directory was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset_directory }
      else
        format.html { render :edit }
        format.json { render json: @asset_directory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @asset_directory.destroy
    respond_to do |format|
      format.html { redirect_to asset_directories_url, notice: 'Asset directory was successfully destroyed.' }
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
