require 'retina_rails/strategies/carrierwave'
require 'retina_rails/strategies/paperclip'

module RetinaRails
  module Strategies

    def self.include_strategies
      if defined?(::CarrierWave)
        ::CarrierWave::Uploader::Base.include CarrierWave::Base
      end
      if defined?(::Paperclip)
        ::ActiveRecord::Base.include Paperclip::Base
      end
    end

  end # Strategies
end # RetinaRails
