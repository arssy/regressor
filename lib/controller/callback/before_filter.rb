module Regressor
  module Controller
    module Callback
      module BeforeAction
        def before_callbacks
          before_actions.map do |action_name|
            "it { should use_before_action(#{action_name}) }"
          end.compact.uniq.join("\n  ")
        end
      end
    end
  end
end