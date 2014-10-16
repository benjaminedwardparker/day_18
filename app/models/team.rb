class Team < ActiveRecord::Base
  validates :name, :city, :bestplayer, :coach, presence: true
end
