class ReviewsController < ApplicationController

  def index
    author = params[:author]
    country = params[:country]
    rating = params[:rating]
    @reviews = Review.all
    @author = Review.search(author)
    @country = Review.find_country(country)
    # @rating = Review.highest_rating(rating)
    if @reviews
      json_response(@reviews)
    elsif author
      json_response(@author)
    elsif country
      json_response(@country)
    else
      json_response(@rating)
    end
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
      params.permit(:author, :content, :country, :rating)
    end
end
