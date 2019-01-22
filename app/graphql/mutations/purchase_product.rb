module Mutations
  class PurchaseProduct < Mutations::BaseMutation
    graphql_name 'PurchaseProduct'


    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :product, Types::ProductType, null: true
    #field :result, Boolean, null: true

    # TODO: define arguments
    # argument :name, String, required: true
    argument :id, ID, required: true

    def resolve(**args)
      product = Product.find(:id)
      return except product
      product.decrement_stock
      {
        product: product,
        #result: post.errors.blank?
      }
    end

  end
end
