class SkillsController < ApplicationController

  def new
    @skill = Skill.new
    authorize @skill
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    @skill.save
    authorize @skill
  end

  def destroy
  end

end
