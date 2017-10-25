class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
    authorize @skill
  end

  def create
    # Create a new instance of Skill
    @skill = Skill.new(skill_params)
      if @skill.save
        respond_to do |format|
          format.html { redirect_to new_skill_path(@skill) }
          format.js # <-- will render `app/views/skills/create.js.erb`
        end
      else
        respond_to do |format|
          format.html { redirect_to new_skill_path(@skill) }
          format.js # <-- idem
        end
      end
    # Set the Skill's user to current_user
    @skill.user = current_user
    # Save the skill
    @skill.save
    # Pundit
    authorize @skill
  end

  def destroy
    # Find a specific skill
    @skill = Skill.find(params[:id])
    # Destroy it
    @skill.destroy
    # Redirect to the new_skill (to add or remove)
    redirect_to new_skill_path(@skill)
  end

  private

  def skill_params
    params.require(:skill).permit(:content)
  end
end
