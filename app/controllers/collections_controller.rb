class CollectionsController < ApplicationController

    def index

        @collections = Collection.all
        render json: @collections

    end

    def create

        @collection = Collection.create(params.permit(:name, :description))
        render json: @collection

    end

    def show

        @collection = Collection.find(params[:id])
        render json: @collection

    end

    def destroy

        @collection = Collection.find(params[:id])
        @collection.destroy()

    end

end
