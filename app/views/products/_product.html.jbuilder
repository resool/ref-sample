json.product do
  json.name @product.name
  json.ext_id @product.ext_id
  if @product_info
    json.description @product_info[:description]
    json.avatar_url @product_info[:avatar_url]
    json.title @product_info[:title]
    json.department @product_info[:department]
  end
end
