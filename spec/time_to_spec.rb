# frozen_string_literal: true

RSpec.describe TimeTo do
  it 'has a version number' do
    expect(TimeTo::VERSION).not_to be nil
  end

  context 'Time' do
    subject { Time.new }

    it { is_expected.to respond_to :to }
  end

  context 'TimeWithZone', if: defined?(ActiveSupport::TimeWithZone) do
    subject { Time.zone.new }

    it { is_expected.to respond_to :to }
  end
end
