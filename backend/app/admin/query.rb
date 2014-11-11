ActiveAdmin.register Query do
  permit_params :ref, :author, :title, :sql
end
