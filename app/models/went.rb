class Went < ActiveRecord::Base
  belongs_to :shop, counter_cache: :wents_count
  belongs_to :user
end
