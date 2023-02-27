puts "STARTED SEEDING "

20.times do

    product = Product.create(
        name: Faker::Name.name
    )

    user = User.create(
        name: Faker::Name.name
    )

    
    Review.create(
          star_rating:rand(0..5),
          user_id: user.id,
          product_id: product.id,
          comment: Faker::Lorem.sentence

      )
    
end


puts "COMPLETED"
# 20.times do
#     user = User.create(
#         star_rating:rand(0..5),
#         user_id: rand(1..20),
#         product_id: rand(1..20),
#         comment: Faker::Lorem.sentence
#     )
# end