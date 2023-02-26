class Product < ActiveRecord::Base
    has_many :reviews

    def users
      User.joins(:reviews).where(reviews: { product_id: id })
    end

    def leave_review(user, star_rating, comment)
        Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
    end

    def print_all_reviews
        puts "Reviews for #{name}:"
        reviews.each do |review|
          puts "Review for #{name} by #{review.user_name}: #{review.star_rating}. #{review.comment}"
     end
    end

    def average_rating
        reviews.average(:star_rating).to_f
    end
end