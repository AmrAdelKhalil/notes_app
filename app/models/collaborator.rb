class Collaborator < ApplicationRecord
  belongs_to :user
  belongs_to :hyper_link

  scope :most_recent_collaborators, -> (hyper_link_id) {where(hyper_link_id: hyper_link_id).where('collaborators.updated_at > ?', Time.now - 2.minutes)}
end
