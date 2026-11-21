class OurStoresController < ApplicationController
    def index
        @stores = OurStore.all
        render json: @stores
    end

    def show
        @store = OurStore.find(params[:id])
        render json: @store
    end

    def create
        @store = OurStore.new(store_params)
        if @store.save
            render json: @store, status: :created
        else
            render json: @store.errors, status: :unprocessable_entity
        end
    end

    def update
        @store = OurStore.find(params[:id])
        if @store.update(store_params)
            render json: @store
        else
            render json: @store.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @store = OurStore.find(params[:id])
        @store.destroy
        head :no_content
    end

    private
    def store_params
        params.expect(store: [:name])
        params.require(:store).permit(:name)
    end
end
