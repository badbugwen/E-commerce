namespace :dev do
  task fake: :environment do
    Product.destroy_all

    1000.times do |i|
      Product.create!(name: FFaker::Product.product,
        price: "#{rand(10..1000).to_s}",
        image: FFaker::Avatar.image,
        description: FFaker::Lorem.paragraph
      )
    end
    puts "have created fake Products"
    puts "now you have #{Product.count} products data"
  end
end