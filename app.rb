require "sinatra"
require "sinatra/reloader"

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do

    @the_num = params.fetch("users_square_number").to_f
    @the_result = @the_num ** 2

  erb(:square_results)
end

get("/square_root/new") do
    erb(:new_square_root_calc)
end

get("/square_root/results") do

  @the_num = params.fetch("users_square_root_number").to_f
  @the_results = Math.sqrt(@the_num)

  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment_with_form)
end

get("/payment/results") do
  
  @the_apr = params.fetch("users_apr_number").to_f
  @the_years = params.fetch("users_years_number").to_f
  @the_principal = params.fetch("users_principal_number").to_f
  @the_results = @the_principal * @the_apr * @the_years

  erb(:square_root_results)
end


get("/random/new") do
  erb(:random_with_form)
end
