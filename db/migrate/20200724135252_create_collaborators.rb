class CreateCollaborators < ActiveRecord::Migration[6.0]
  def change
    create_table :collaborators do |t|
      t.belongs_to :user
      t.belongs_to :hyper_link

      t.timestamps
    end
  end
end
