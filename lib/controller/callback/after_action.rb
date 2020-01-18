module Regressor
  module Controller
    module Callback
      module AfterAction
        def after_callbacks
          after_actions.map do |action_name|
            "it { should use_after_action(#{action_name}) }"
          end.compact.uniq.join("\n  ")
        end
      end
    end
  end
end
