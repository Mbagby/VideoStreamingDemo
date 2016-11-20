class CategoriesController < ApplicationController
	def index
		@categories = Category.order('category_id').all
		@user = User.find_by_id(session[:user_id])
	end
	def show
		@user = User.find_by_id(session[:user_id])
		@categories = Category.order('category_id').all
		@category = Category.find_by_id(params[:id])
		@season = Season.where(category_id: @category.category_id).first
		@episodes = Episode.all
	end
end
