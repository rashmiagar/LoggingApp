class LaborController < ApplicationController
layout 'admin'

before_filter :getservice

def new
	@labor = Labors.new
end

def create
	labor = Labors.create(params[:labors])
	labor.types_of_service_id = params[:service_id]
	if labor.save
		flash[:notice] = "labor added successfully"
		render :new
	else	
		flash[:notice] = "unable to add labor"
		render :new
	end
end
end

def getservice
	@services = TypesOfService.all
end
