# frozen_string_literal: true

module TimeTo::Extension
  DAY = 86_400

  def to(time, by: DAY)
    (to_i..time.to_i).step(by).map do |i|
      respond_to?(:zone) ? Time.at(i).in_time_zone(zone) : Time.at(i)
    end
  end
end
