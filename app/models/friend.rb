class Friend < ApplicationRecord
    belongs_to :user

    def self.search(query)
        where('#{CONCAT(first_name, last_name) LIKE ?', "%#{query}%")
      end
end
