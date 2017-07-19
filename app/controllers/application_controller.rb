class ApplicationController < ActionController::API
  include Response


  use Rack::Throttle::Minute,   :max => 3


  WillPaginate.per_page = 3


    rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end
end
