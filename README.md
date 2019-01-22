# Summer 2019 Shopify Backend Developer Challenge
## Simon Krol
GraphQL Web app build for Shopify's Backend Developer Challenge for the Sumemr of 2019. Built using Ruby on Rails.

###Usage Instructions:

####Postman:
- Post Request to http://skrolshopify.herokuapp.com/graphql
- Raw Body
- Content-Type: application/json
- Content-Type: application/graphql
- All requests to the endpoint being with {"query"


#####Request All Products:
`{"query": "{products{id title price inventory_count}}"}`
>id, title, price and inventory_count can be removed as needed to provide the desired information


#####Request only stocked products
{`"query": "{products(`**`stocked:true`**`){id title price inventory_count}}"}`
>stocked: true indicates that only products in stock will be shown, stock:false and omitting the attribute will indicate that unstocked products will be shown as well


#####Request a single item
`{"query": "{products(`**`id:10`**`){id title price inventory_count}}"}`
> Returns a single product item with the requested parameters. If no product with that id exists, returns an empty list.


#####Request a single item which must be stocked
`{"query": "{products(`**`id:10, stocked:true`**`){id title price inventory_count}}"}`
>Combines the functionality of the previous two queries options, returning a single element if and only if its stocked. Otherwise, returns an empty list.


#####Purchasing a product(Uses GraphQL mutations)
`{"query":"`**`mutation{purchaseProduct(id: 1 )`**`{product {id title price inventory_count}}}"}`
>Where mutation is a necessary keyword, purchaseProduct is the mutation being executed, id: 1 is the product being purchased and product {id title price inventory} is information about the product being returned to the user.

