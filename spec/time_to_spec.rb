# frozen_string_literal: true

RSpec.describe TimeTo do
  let(:two_days) { 86_400 * 2 }
  let(:start_time) { subject - two_days }

  it 'has a version number' do
    expect(TimeTo::VERSION).not_to be nil
  end

  context 'Time' do
    subject { Time.new }

    it { is_expected.to respond_to :to }

    it 'returns a list of times' do
      expect(start_time.to(subject).count).to eq 3
    end
  end

  context 'TimeWithZone', if: defined?(ActiveSupport::TimeWithZone) do
    before { Time.zone = 'America/New_York' }
    subject { Time.zone.now }

    it { is_expected.to respond_to :to }

    it 'returns a list of times' do
      expect(start_time.to(subject).count).to eq 3
    end
  end
end
