class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :start_day, :end_day, :allday, :memo))
    if @schedule.save
      flash[:notice] = "スケジュール作成に成功しました"
      redirect_to :schedules
      
    else
      flash[:notice] = "スケジュール作成に失敗しました"
      render"new"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :start_day, :end_day, :allday, :memo))
      flash[:notice] = "スケジュール「#{@schedule.id}」の情報を更新に成功しました"
      redirect_to :schedules
    else
      flash[:notice] = "スケジュールの更新に失敗しました"
      render"edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] ="スケジュールを削除しました"
    redirect_to :schedules
  end
end