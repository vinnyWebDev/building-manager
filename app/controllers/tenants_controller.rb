class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all
  end

  #show a specific tenant
  def show
    @tenant = Tenant.find(params[:id])
  end
end
