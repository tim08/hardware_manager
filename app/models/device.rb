class Device < ApplicationRecord

  enum kind: [:notebook, :case, :mouse, :monitor, :keyboard]

  has_many :peripherals, class_name: 'Device', foreign_key: 'comp_case_id', dependent: :nullify
  belongs_to :comp_case, class_name: 'Device', optional: true

  def can_be_bind?
    mouse? || monitor? || keyboard?
  end

  def self.cases_with_free_slot_for(peripheral_kind)
    where(kind: [:case]).to_a.delete_if{|c| c.peripherals.pluck(:kind).include?(peripheral_kind)}
  end

end
