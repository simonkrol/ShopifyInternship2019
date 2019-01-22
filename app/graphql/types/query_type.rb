module Types
  class QueryType < Types::BaseObject
    field :products, [ProductType], null: false do
      argument :stocked, Boolean, required: false, default_value: false
      argument :id, Integer, required: false, default_value: -1
    end
    def products(stocked:, id:)
      if(id != -1)
        if(stocked)
          Product.where("inventory_count > ? AND id = ?", 0, id)
        else
          Product.where("id = ?", id)
        end
      else
        if(stocked)
          Product.where("inventory_count > ?", 0)
        else
          Product.all
        end
      end
    end
  end
end


