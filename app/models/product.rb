class Product < ApplicationRecord

    def decrement_stock
        if(params[:inventory_count]>0)
            params[:inventory_count] = params[:inventory_count] -1
        end
    end

end
