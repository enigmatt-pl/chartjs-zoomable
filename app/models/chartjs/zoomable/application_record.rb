module Chartjs
  module Zoomable
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
