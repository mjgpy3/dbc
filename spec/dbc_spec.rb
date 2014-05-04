require 'spec_helper'

describe DBC do

  describe '.require' do

    context 'when given a falsy condition' do

      let(:condition) { false }

      it 'raises a RuntimeError indicating that a precondition has failed' do
        expect do
          described_class.require(condition)
        end.to raise_error(RuntimeError, /^Pre-condition failed:/)
      end

    end

    context 'when given a truthy condition' do

      let(:condition) { true }

      it 'does not raise an error' do
        described_class.require(condition)
      end

    end

  end

end
