module Types
  class MutationType < Types::BaseObject
    field :purchaseProduct, mutation: Mutations::PurchaseProduct
  end
end
