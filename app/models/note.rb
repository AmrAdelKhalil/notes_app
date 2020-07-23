class Note < ApplicationRecord
  belongs_to :user
  has_many :hyper_links

  after_create_commit :create_hyper_links


  private

  def create_hyper_links
    begin
      retries ||= 0
      ActiveRecord::Base.transaction do
        self.hyper_links << HyperLink.create(note_id: self.id, uuid: SecureRandom.uuid, mode: 'view')
        self.hyper_links << HyperLink.create(note_id: self.id, uuid: SecureRandom.uuid, mode: 'edit')
      end
    rescue
      retry if (retries += 1) < 3
    end
  end
end
