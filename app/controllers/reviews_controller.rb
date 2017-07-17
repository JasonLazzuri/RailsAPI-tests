class ReviewsController < ApplicationController

  def index
    author = params[:author]
    @reviews = Review.search(author)
    json_response(@reviews)
  end

    def show
      @review = Review.find(params[:id])
      json_response(@review)
    end

    def create
      @review = Review.create!(review_params)
      json_response(@review, :created)
    end

    def update
      @review = Review.find(params[:id])
      @review.update(review_params)
      if @review.update!(review_params)
       render status: 200, json: {
        message: "Your review has successfully been updated."
        }
     end
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
    end

    private
    def json_response(object, status = :ok)
      render json: object, status: status
    end

    def review_params
      params.permit(:author, :content)
    end
end
