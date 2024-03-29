Types::ProductType = GraphQL::ObjectType.define do
 name "Product"
  description "A Product"
  field :id, types.ID
  field :title, types.String
  field :price, types.Float
  field :inventory_count, types.Float
end

