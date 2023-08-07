class TicketsController < ApplicationController
    def create
        @tenant = Tenant.find(params[:tenant_id])
        @ticket = @tenant.tickets.create(ticket_params)
        redirect_to tenant_path(@tenant)
      end
    
      private
        def ticket_params
          params.require(:ticket).permit(:title, :body)
        end
end
