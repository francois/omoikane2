class QuerySerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :sql, :created_at, :updated_at
end
