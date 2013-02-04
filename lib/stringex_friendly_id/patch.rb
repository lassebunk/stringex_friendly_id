module FriendlyId
  module Slugged
    def normalize_friendly_id(value)
      # Use Stringex's `to_url` instead of Rails' `parameterize`
      value.to_s.to_url
    end
  end
end