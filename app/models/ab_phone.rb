class AbPhone < ActiveRecord::Base
    belongs_to :abmaster
    default_scope -> {order('effectivedate DESC')}
    validates :abmaster_id, presence: true
end
