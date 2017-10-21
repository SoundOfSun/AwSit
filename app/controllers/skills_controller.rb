class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

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
