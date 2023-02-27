class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
  
    def user
      User.find_by(id: self.user_id)
    end
  
    def product
      Product.find_by(id: self.product_id)
    end

    def print_review(review)
        product_name = review.product.name
        user_name = review.user.name
        star_rating = review.star_rating
        comment = review.comment
      
        puts "Review for #{product_name} by #{user_name}: #{star_rating}. #{comment}"
    end
end
