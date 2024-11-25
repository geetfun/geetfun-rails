module Geetfun
  module FormBuilderExtensions
    extend ActiveSupport::Concern

    def has_error_on(method)
      return false unless @object.respond_to?(:errors)
      @object.errors.include?(method.to_sym)
    end

    def errors_on(method)
      return unless @object.respond_to?(:errors)
      return unless @object.errors.include?(method.to_sym)

      output = <<-OUTPUT
      <div class="field_with_errors">
        <span class="error_message">
          #{method.to_s.capitalize.humanize} #{@object.errors[method].first}
        </span>
      </div>
      OUTPUT
      output.html_safe
    end
  end
end
