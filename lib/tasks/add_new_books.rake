namespace :book do
    desc "本を追加する"
    task add_new_books: :environment do
        10.times do
            book = Book.new(
                        title: Faker::Book.title,
                        description: Faker::Lorem.paragraph,
                        isbn: 1234,
                        category_id: 1
                    )
            book.save!
        end
    end
end