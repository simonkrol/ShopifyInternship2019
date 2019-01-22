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



# Type::QueryType = GraphQL::ObjectType.define do
#   name "Query"
#   description "The query root for this schema"
#   field :products, types[ProductType] do
#     argument :stocked, types.Boolean, default_value: false
#     resolve -> (obj, args, ctx){
#       if args["stocked"]
#         Product.where("inventory_count > ?", 0)
#       else
#         Product.all
#       end
#     }
#   end
# end
