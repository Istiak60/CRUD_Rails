class Role < ApplicationRecord
    has_many  :users

    enum role_name: {
        author: 0,
        commenter: 1,
    }
end
