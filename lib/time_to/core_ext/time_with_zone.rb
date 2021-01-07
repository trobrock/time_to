# frozen_string_literal: true

require_relative '../extension'

class ActiveSupport::TimeWithZone
  include TimeTo::Extension
end
