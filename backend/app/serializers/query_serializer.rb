class QuerySerializer < ActiveModel::Serializer
  attributes :id, :ref, :author, :title, :sql
end
