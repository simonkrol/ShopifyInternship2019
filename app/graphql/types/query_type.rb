module Types
  class QueryType < Types::BaseObject
    field :products, [ProductType], null: false do
      argument :stocked, Boolean, required: false, default_value: false
    end
    def products(stocked:)
      if(stocked)
        Product.where("inventory_count > ?", 0)
      else
        Product.all
      end
    end
  end
end


