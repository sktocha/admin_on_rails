module AdminOnRails
  class BaseController < ActionController::Base
    class_attribute :resource_class, :views

    before_action :find_resource, only: [:show, :edit, :update, :destroy]

    def index
      render json: current_view.inspect
    end

    def show; end

    def new; end

    def edit; end

    def create; end

    def update; end

    def destroy; end

    def self.defaults(default_options = {})
      self.resource_class = default_options[:resource_class]
      self.views = {}
    end

    def self.view_for(view_key, &block)
      self.views[view_key] = {fields: Fields.new(view_key)}
      self.views[view_key][:fields].instance_eval(&block)
    end

    defaults resource_class: self.class.name.chomp('Controller').singularize.constantize

    protected

    def current_view
      self.class.views[action_name.to_sym]
    end

    #dsl
    #
    #serializers
    private

  end
end
