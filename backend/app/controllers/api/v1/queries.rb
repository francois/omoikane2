require "yaml"
module API
  module V1
    class Queries < Grape::API
      include API::V1::Defaults

      resource :queries do
        desc "Return all queries"
        get "", root: :queries do
          Query.all
        end

        desc "Returns a query"
        params do
          requires :id, type: String, desc: "ID of the query"
        end
        get ":id", root: "query" do
          Query.where(id: permitted_params[:id]).first!
        end

        post do
          query = params.query

          Query.create! do |model|
            model.author = query.author
            model.title  = query.title
            model.sql    = query.sql
          end
        end
      end
    end
  end
end
