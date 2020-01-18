require 'controller/util'
require 'controller/routing/rest/routes'
require 'controller/callback/after_action'
require 'controller/callback/before_action'
require 'controller/callback/around_action'

module Regressor
  module Controller
    class Regression
      include Rails.application.routes.url_helpers
      include ActionDispatch::Routing

      include Util
      include Routing::Rest::Routes
      include Callback::BeforeAction
      include Callback::AfterAction
      include Callback::AroundAction

      attr_accessor :controller

      def initialize(controller)
        @controller = controller
      end
    end
  end
end