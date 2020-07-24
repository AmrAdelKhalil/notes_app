class CollaboratorsController < ApplicationController
  def index
    collaborators = Collaborator.joins(:user).where(hyper_link_id: params[:hyper_link_id]).pluck('users.email')
    render json: {collaborators: collaborators}, status: :ok
  end

  def get_collaboration_information

  end

  def update
    collaborator = Collaborator.find_by(user_id: params[:user_id])
    collaborator.updated_at = Time.now
    if collaborator.save
      render json: collaborator, status: :ok
    else
      render status: :unprocessable_entity
    end
  end
end
