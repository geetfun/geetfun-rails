module Geetfun
  module ApplicationHelper
    def render_hello_world
      "Hello, world!"
    end

    def error_icon
      content_tag(:div, class: 'flex-shrink-0') do
        content_tag(:svg, class: 'h-5 w-5 text-red-400', viewBox: '0 0 20 20', fill: 'currentColor', "aria-hidden": 'true') do
          content_tag(:path, nil, "fill-rule": 'evenodd', d: 'M10 18a8 8 0 100-16 8 8 0 000 16zM8.28 7.22a.75.75 0 00-1.06 1.06L8.94 10l-1.72 1.72a.75.75 0 101.06 1.06L10 11.06l1.72 1.72a.75.75 0 101.06-1.06L11.06 10l1.72-1.72a.75.75 0 00-1.06-1.06L10 8.94 8.28 7.22z', "clip-rule": 'evenodd')
        end
      end
    end

    def error_messages(model)
      return unless model.errors.any?

      content_tag(:div, class: 'bg-red-50 border-l-4 border-red-400 p-4 mb-4') do
        content_tag(:div, class: 'flex') do
          error_icon +
          content_tag(:div, class: 'ml-3') do
            content_tag(:h3, 'Please fix the following errors', class: 'text-sm font-medium text-red-800') +
            content_tag(:div, class: 'mt-2 text-sm text-red-700') do
              content_tag(:ul, class: 'list-disc pl-5 space-y-1') do
                model.errors.full_messages.map { |message| content_tag(:li, message) }.join.html_safe
              end
            end
          end
        end
      end
    end
  end
end
