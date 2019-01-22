module Mutations
  class PurchaseProduct < Mutations::BaseMutation
    graphql_name 'PurchaseProduct'


    field :product, Types::ProductType, null: true
    argument :id, Integer, required: true

    def resolve(**args)
      # product = Product.where(id: args[:id])
      if(!Product.exists?(args[:id]))
        return
      end
      product = Product.find(args[:id])

      if(product[:inventory_count] > 0)
        product[:inventory_count] = product[:inventory_count] - 1
        product.save
      end
      {
        product: product,
      }
    end

  end
end
