json.id product.id
json.name product.name
json.price product.price
json.description product.description
json.is_discounted product.is_discounted? 
json.tax product.tax 
json.total product.total
json.supplier do
  json.id product.supplier.id
  json.name product.supplier.name
end
json.images do
  json.array! product.images, partial: 'api/images/image', as: :image
end
json.formatted do
  json.price number_to_currency(product.price)
  json.tax_number_to_currency(product.tax)
  json.total_number_to_currency(product.total)
end