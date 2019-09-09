class UserPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  include PublicActivity::Model
  tracked owner: Proc.new{ |controller, model| model.user }
  validates :last_watered, :nickname, :photo, presence: true

  def needs_water?
    (Date.today - last_watered) >= self.plant.water_freq
  end

  def days_until_water
    days_since_water
    return (self.plant.water_freq - @days)
  end

  def days_since_water
    @days = (Date.today - last_watered).to_i
  end

  def self.create_calendar_details
    all.map do |plant|
      [plant.nickname, plant.days_until_water.days.from_now.strftime('%F')]
    end
  end
end
