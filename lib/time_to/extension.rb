# frozen_string_literal: true

module TimeTo::Extension
  DAY = 86_400

  def to(time, by: DAY)
    (to_i..time.to_i).step(by).map { |i| self.class.at(i) }
  end
end
