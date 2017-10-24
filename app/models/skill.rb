class Skill < ApplicationRecord
  belongs_to :babysitter, class_name: "User", foreign_key: "user_id"
end
