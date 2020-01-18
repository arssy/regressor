module Regressor
  module Controller
    module Callback
      module AroundAction
        def around_callbacks
          around_actions.map do |action_name|
            "it { should use_around_action(#{action_name}) }"
          end.compact.uniq.join("\n  ")
        end
      end
    end
  end
end