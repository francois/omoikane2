class Query < ActiveRecord::Base
  validates :author, :title, :sql, presence: true
end
