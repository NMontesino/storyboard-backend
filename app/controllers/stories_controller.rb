class StoriesController < ApplicationController

    def index

        @stories = Story.all
        render json: @stories

    end

    def create

        @story = Story.create(params.permit(:content, :mood, :mood_rating, :photo_url, :collection_id))
        render json: @story

    end

    def show

        @story = Story.find(params[:id])
        render json: @story

    end

    def update 

        @story = Story.find(params[:id])
        @story.update(params.permit(:content))
        render json: @story

    end

    def destroy

        @story = Story.find(params[:id])
        @story.destroy()

    end

end
