require 'unirest'

# puts "What product id would you like to destroy?"
# product_id = gets.chomp

# response = Unirest.get("http://localhost:3000/api/products/#{product_id}").body

# puts JSON.pretty_generate(product)

  response = Unirest.post(
    "http://localhost:3000/users",
    parameters: {
      name: "Peter",
      email: "peter@email.com",
      password: "password",
      password_confirmation: "password"
    }
  )
  p response.body
