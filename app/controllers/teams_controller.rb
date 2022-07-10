class TeamsController < ApplicationController
before_action :find_team_member, only: [:show, :edit, :update, :destroy]

def index
    @teams = Team.all
end 

def last_friday_meeting
    @friday_meet = Team.where("created_at >= ?", Date.today.weeks_ago(1).beginning_of_week(:friday))
end

def new
    @team = Team.new 
end

 def create
    current_time = Time.zone.now.time
  unless current_time.friday?
    flash[:error] = "You can't create a team unless it's Sunday"
    redirect_to teams_path
    return
  end
    @team = Team.create(team_params)
    @team.save
    params[:team][:team_employees].each do |emp_id| 
       @team.team_employees.create(employee_id: emp_id) 
    end
    #@team.employee_ids = params[:team][:team_employees]
    redirect_to teams_path
 end

private
  
 def find_tem_member
    @team = Team.find(params[:id])
 end

 def team_params
    params.require(:team).permit(:employee_id,:name,:restaurant_name)
 end
end
