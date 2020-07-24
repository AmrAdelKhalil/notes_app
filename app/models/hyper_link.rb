class HyperLink < ApplicationRecord
  belongs_to :note
  enum mode: [:view, :edit]
  has_many :collaborators
end
