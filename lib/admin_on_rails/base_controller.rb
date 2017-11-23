module AdminOnRails
  class BaseController < ActionController::Base
    class_attribute :resource_class

    before_action :find_resource, only: [:show, :edit, :update, :destroy]


    def index; end

    def show; end

    def new; end

    def edit; end

    def create; end

    def update; end

    def destroy; end

    def self.defaults(default_options = {})
      self.resource_class = default_options[:resource_class]
    end

    defaults resource_class: self.class.name.chomp('Controller').singularize.constantize

    protected

    #dsl
    #
    #serializers
    private

  end
end
