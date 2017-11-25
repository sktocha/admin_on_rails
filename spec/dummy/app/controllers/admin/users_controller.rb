class Admin::UsersController < AdminOnRails::ApplicationController
  view_for :index do
    field :id
    field :first_name, partial: true
    field :last_name, partial: true
    field :email, editable: true
  end
end
