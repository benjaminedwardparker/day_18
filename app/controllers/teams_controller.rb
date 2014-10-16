class TeamsController < ApplicationController
#  before_action :set_team, only: [:show, :edit, :update, :destroy]


  def index
    @teams = Team.all
  end


  def show
    @team = Team.find(params[:id])
  end


  def new
    @team = Team.new(coach: "Default")
  end


  def edit
    @team = Team.find(params[:id])
  end


  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to teams_path, notice: "Team saved!"
    else
      render :new
    end
  end


  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to @team, notice: "Team saved!"
    else
      render :edit
    end
  end

  def destroy
    @taco = Taco.find(params[:id])
    @taco.destroy
    redirect_to tacos_path, notice: "TEAM DESTROYED"
  end


  def team_params
    params.require(:team).permit(:name, :city, :bestplayer, :coach)
  end
end
