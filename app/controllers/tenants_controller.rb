class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all
  end

  #show a specific tenant
  def show
    @tenant = Tenant.find(params[:id])
  end
  #instantiate new tenant
  def new
    @tenant = Tenant.new
  end
#creates new tenant
  def create
    @tenant = Tenant.new(first_name: "...", last_name: "...", apartment: "...", phone: "...", email:"...")
    #redirects to tenant if successful 
    if @tenant.save
      redirect_to @tenant
    else
      render :new, status: :unprocessable_entity
    end
  end

  #filter parameters
  private
    def tenant_params
      params.require(:tenant).permit(:first_name, :last_name, :apartment, :phone, :email)
    end

end


