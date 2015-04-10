require "simple_preview_counter/version"
require "active_support/concern"

module SimplePreviewCounter
  extend ActiveSupport::Concern

  included do
    def inc_view_count(n = 1)
      preview_count += n
    end

    def inc_view_count!(n)
      update_column(:preview_count, preview_count + n)
    end
  end

  class_methods do
  end
end
