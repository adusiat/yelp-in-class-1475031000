class TagtorestaurantsController < ApplicationController
  def index
    @tagtorestaurants = Tagtorestaurant.all
  end

  def show
    @tagtorestaurant = Tagtorestaurant.find(params[:id])
  end

  def new
    @tagtorestaurant = Tagtorestaurant.new
  end

  def create
    @tagtorestaurant = Tagtorestaurant.new
    @tagtorestaurant.restaurant_id = params[:restaurant_id]

    if @tagtorestaurant.save
      redirect_to "/tagtorestaurants", :notice => "Tagtorestaurant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tagtorestaurant = Tagtorestaurant.find(params[:id])
  end

  def update
    @tagtorestaurant = Tagtorestaurant.find(params[:id])

    @tagtorestaurant.restaurant_id = params[:restaurant_id]

    if @tagtorestaurant.save
      redirect_to "/tagtorestaurants", :notice => "Tagtorestaurant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tagtorestaurant = Tagtorestaurant.find(params[:id])

    @tagtorestaurant.destroy

    redirect_to "/tagtorestaurants", :notice => "Tagtorestaurant deleted."
  end
end
