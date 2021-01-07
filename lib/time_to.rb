# frozen_string_literal: true

require_relative 'time_to/version'

require_relative 'time_to/core_ext/time'
require_relative 'time_to/core_ext/time_with_zone' if defined?(ActiveSupport::TimeWithZone)

class TimeTo::Error < StandardError
end
