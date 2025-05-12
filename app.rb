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
  
  @the_apr = params.fetch("users_apr").to_f
  @the_years = params.fetch("users_years").to_i
  @the_principal = params.fetch("users_pv").to_f

  @r = @the_apr / 100 / 12
  @n = @the_years * 12

  @numerator = @r * @the_principal
  @denominator = 1 - (1 + @r) ** (-@n)

  @the_results = @numerator / @denominator

  erb(:payment_results)
end


get("/random/new") do
  erb(:random_with_form)
end

get("/random/results") do

  @the_little_num = params.fetch("users_min_number").to_f
  @the_big_num = params.fetch("users_max_number").to_f
  @the_results = rand(@the_little_num...@the_big_num).to_f

  erb(:random_results)
end
