require_dependency '../../lib/admin_on_rails/fields'
require_dependency '../../lib/admin_on_rails/field'
module AdminOnRails
  class ApplicationController < ActionController::Base
    class_attribute :views
    attr_accessor :resource_class
    helper_method :current_view, :resource_class

    before_action :find_resource, only: [:show, :edit, :update, :destroy]

    def index
      @collection = collection
      render 'admin_on_rails/index'
    end

    def show; end

    def new; end

    def edit; end

    def create; end

    def update; end

    def destroy; end

    def initialize
      # @resource_class = self.name.chomp('Controller').singularize.constantize
      @resource_class = self.class.to_s.demodulize.chomp('Controller').singularize.constantize
    end

    def self.defaults(default_options = {})
      # binding.pry
      # self.resource_class = default_options[:resource_class] || 
      self.views = {}
    end

    def self.view_for(view_key, options = {}, &block)
      self.views[view_key] = OpenStruct.new(options.merge!(fields: Fields.new))
      self.views[view_key].fields.instance_eval(&block)
    end

    defaults

    protected

    def current_view
      self.class.views[action_name.to_sym]
    end

    # def resource_class
    #   self.class.resource_class
    # end

    def collection
      resource_class.all
    end

    #dsl
    #
    #serializers
    private

  end
end
