class Like < ActiveRecord::Base
    belongs_to :blog, counter_cache: :like
end
