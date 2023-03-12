class Schedule < ApplicationRecord
  validates :title, presence:true
  validates :title,length: {minimum: 1, maximum: 20}
  validates :start_day, presence:true
  validates :end_day, presence: true 
  validate :start_end_check

  def start_end_check
  return if end_day.blank?  
  errors.add(:end_day, "終了日は開始日以降のものを選択してください") if end_day < start_day
  end
  
  validates :memo, 
    length: {maximum: 500}
end
