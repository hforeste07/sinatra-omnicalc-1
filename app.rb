require "sinatra"
require "sinatra/reloader"

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do

    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2

  erb(:square_results)
end

get("/square_root/new") do
  @the_num = params.fetch("users_number").to_f
  @the_results = Math.sqrt("@the_num")

  erb(:new_square_root_calc)
end

get("/square_root/results") do
  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment_with_form)
end



get("/random/new") do
  erb(:random_with_form)
end
