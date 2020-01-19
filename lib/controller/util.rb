module Regressor
  module Controller
    module Util

      def before_actions
        actions(:before)
      end

      def after_actions
        actions(:after)
      end

      def around_actions
        actions(:around)
      end

      private
      def actions(kind = nil)
        controller = @controller.constantize
        all_actions = controller._process_action_callbacks
        all_actions = all_actions.select { |f| f.kind == kind } if kind
        # Reject procs
        all_actions = all_actions.map(&:raw_filter).reject{|action| action.class == Proc}
        all_actions.map {|action| action.is_a?(Symbol) ? ":#{action}" : action.to_s}
      end
    end
  end
end