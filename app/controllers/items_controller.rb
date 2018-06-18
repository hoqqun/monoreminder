class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @q = Item.where(user_id: current_user.id).ransack(params[:q])
    @q.sorts = 'id desc'
    @items = @q.result.page(params[:page]).per(20)
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = User.find(current_user.id).items.build(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: t('flash.items.create') }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: t('flash.items.update') }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: t('flash.items.destroy') }
      format.json { head :no_content }
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :price, :purchase_date, :memo, :image1, :image2, :image3, :location_id, :category_id)
    end
end
