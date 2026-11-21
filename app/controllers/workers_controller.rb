class WorkersController < ApplicationController
    def index
        @workers = Worker.all
        render json: @workers
    end

    def show
        @worker = Worker.find(params[:id])
        render json: @worker
    end

    def create
        @worker = Worker.new(worker_params)
        if @worker.save
            render json: @worker, status: :created
        else
            render json: @worker.errors, status: :unprocessable_entity
        end
    end

    def update
        @worker = Worker.find(params[:id])
        if @worker.update(worker_params)
            render json: @worker
        else
            render json: @worker.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @worker = Worker.find(params[:id])
        @worker.destroy
        head :no_content
    end

    private
    def worker_params
        params.expect(worker: [:name, :our_store_id, :age, :salary])
        params.require(:worker).permit(:name, :age, :salary, :our_store_id)
    end
end
