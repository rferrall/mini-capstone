json.id product.id
json.category_names product.category_names
json.name product.name
json.price product.price 
json.images product.images
json.description product.description
json.supplier_name product.supplier.name
json.current_user current_user

  json.formatted do
json.discounted product.is_discounted?
json.tax product.tax
json.total product.total
end
