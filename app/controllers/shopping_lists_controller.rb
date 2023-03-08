class ShoppingListsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:show, :edit, :update, :destroy]

    def index
      render json: ShoppingList.all, status: :ok
    end
  
    def show 
        shopping_list = set_shopping_list
        render json: shopping_list, status: :ok
    end

    def edit
      shopping_list = ShoppingList.find(params[:id])
    end
  
    def new
        shopping_list = ShoppingList.new
    end
    
    def create
        shopping_list = ShoppingList.new(shopping_list_params)
        if @shopping_list.save
          redirect_to shopping_list
        else
          render :new
        end
    end
  
    
    def update
      if shopping_list.update(shopping_list_params)
        redirect_to shopping_list, notice: 'shoppinglist was successfully updated.'
      else
        render json: edit
      end
    end
  
    def destroy
        shopping_list = ShoppingList.find(params[:id])
        shopping_list.destroy
        redirect_to shopping_list_path
    end
      
  
    private

    def set_shopping_list
        shopping_list = ShoppingList.find(params[:id])
    end
  
    def shopping_list_params
      params.require(:shopping_list).permit(:id, :name, :description, :created_at, :updated_at)
    end
  
  end
  