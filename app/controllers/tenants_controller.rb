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
    @tenant = Tenant.new(tenant_params)
    #redirects to tenant if successful 
    if @tenant.save
      redirect_to @tenant
    else
      render :new, status: :unprocessable_entity
    end
  end
#edit existing 
  def edit
    @tenant = Tenant.find(params[:id])
  end

  def update
    @tenant = Tenant.find(params[:id])

    if @tenant.update(tenant_params)
      redirect_to @tenant
    else
      render :edit, status: :unprocessable_entity
    end
  end

  #destory tenant
  def destroy
    @tenant = Tenant.find(params[:id])
    @tenant.destroy

    redirect_to root_path, status: :see_other
  end

  #filter parameters
  private
    def tenant_params
      params.require(:tenant).permit(:first_name, :last_name, :apartment, :phone, :email)
    end
end