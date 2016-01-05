module API
  class VideosController < ApplicationController

    def index
      render json: Video.all
    end

    def show
      render json: Video.find(params[:id])
    end

    def create
      video = Video.new(video_params)
      if video.save
        render json: video, status: 201, location: [:api, video]
      else
        render json: video.errors, status: 422
      end
    end

    def update
      video = Video.find(params[:id])
      if video.update(video_params)
        head 204
      else
        render json: video.errors, status: 422
      end
    end

    def destroy
      video = Video.find(params[:id])
      video.destroy
      head 204
    end

    private
    def video_params
      params.require(:video).permit(:id, :code)
    end

  end
end
