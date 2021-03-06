class Income < ActiveRecord::Base
  belongs_to :type, class_name: 'IncomeType'
  has_many :attachments, :as => :attachable, :dependent => :destroy

  accepts_nested_attributes_for :attachments

  attr_accessible :date, :description, :value, :type_id, :attachments_attributes
end
