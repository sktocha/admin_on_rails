class Admin::UsersController < AdminOnRails::BaseController
  view_for :index do
    field :id
    field :name, partial: true
    field :email, editable: true
  end
end
