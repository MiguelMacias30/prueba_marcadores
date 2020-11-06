class ApiController < ApplicationController
  def index
    @categories = Category.all
    @all = []

    @categories.each do |category|
        hash = {
          name: category.name,
          subcategories: category.subcategories,
          markers: Marker.where(subcategory_id: category.subcategories.map{|cat| cat.id})

        }
      @all << hash
    end


    render json: @all
  end
end
