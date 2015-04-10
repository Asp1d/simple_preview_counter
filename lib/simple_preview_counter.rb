require "simple_preview_counter/version"
require "active_support/concern"

module SimplePreviewCounter
  extend ActiveSupport::Concern

  included do
    def count_preview(n = 1)
      self.preview_count += n
    end

    def count_preview!(n = 1)
      update_column(:preview_count, preview_count + n)
    end
  end
end
