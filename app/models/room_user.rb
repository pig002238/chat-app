class RoomUser < ApplicationRecord
  create_table :room_users do |t|
    t.references :room, null: false, foreign_key: true
    t.references :user, null: false, foreign_key: true
    t.timestamps
    belongs_to :room
    belongs_to :user
end
