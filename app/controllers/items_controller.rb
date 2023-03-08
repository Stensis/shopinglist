class ItemsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:show, :edit, :update, :destroy]

       # GET /items
    def index
        render json: Item.all, status: :ok
    end
      
    def show 
        items = find_items
        render json:items, status: :ok
    end

    def new
       items = Item.new
    end
    
    def create
        items = Item.new(user_params)
        if items.save
          redirect_to items
        else
          render :new
        end
    end

    def edit
        items = Item.find(params[:id])
    end
    
    def update
        items = Item.find(params[:id])
        if items.update(item_params)
          redirect_to items
        else
          render :edit
        end
    end

    # deletes an item 
    def destroy
        item = Item.find(params[:id])
        item.destroy
        redirect_to items_path
    end
      
    private

    def find_items
        Item.find(params[:id])
    end

    def items_params
        params.require(:shopping_list).permit(:id, :name, :description, :quantity, :category, :price, :created_at, :updated_at)
    end

end
