class Blog < ActiveRecord::Base
    has_many :replies, dependent: :destroy
    has_many :likes, dependent: :destroy
    default_scope -> { order(created_at: :desc) }
end
