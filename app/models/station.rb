class Station < ApplicationRecord
  belongs_to :property,optional: true
  validates :line,:station_name,:walktime, presence:true, if: :line_not_nil?

  def line_not_nil?
    :line != nil
  end
end
