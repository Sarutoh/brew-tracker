# frozen_string_literal: true

class Malt < ApplicationRecord
  ENUM_CLASSIFICATIONS = {
    brew_malts: 'brew_malts',
    speacialty_malts: 'speacialty_malts',
    wheat_malts: 'wheat_malts',
    smoked_malts: 'smoked_malts',
    caramel_malts: 'caramel_malts',
    rye_malts: 'rye_malts'
  }.freeze

  enum classification: ENUM_CLASSIFICATIONS, _prefix: :classification
end
