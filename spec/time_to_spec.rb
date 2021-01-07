# frozen_string_literal: true

begin
  require 'active_support/time_with_zone'
rescue LoadError
end

RSpec.describe TimeTo do
  it 'has a version number' do
    expect(TimeTo::VERSION).not_to be nil
  end

  context 'Time' do
    subject { Time.new }

    it { is_expected.to respond_to :to }
  end

  context 'TimeWithZone', if: defined?(ActiveSupport::TimeWithZone) do
    subject do
      ActiveSupport::TimeWithZone.new(Time.new, ActiveSupport::TimeZone['America/New_York'])
    end

    it { is_expected.to respond_to :to }
  end
end
