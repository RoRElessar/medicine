class SchedulesController < ApplicationController

  def index
    @schedule = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def create
    if current_company
      @schedule = Schedule.new(schedule_params)
=begin
      if params[:doctor_id]
        @schedule.doctor_id = params[:doctor_id]
      end
=end

    #  @doctor = Doctor.find(params[:doctor_id])


      respond_to do |format|
        if @schedule.save
          format.html {redirect_to company_doctors_url, notice: 'График работы успешно создан.'}
          format.json {render :show, status: :created, location: @schedule}
        else
          format.html {render :new}
          format.json {render json: @schedule.errors, status: :unprocessable_entity}
        end
      end
    end
  end

  def update
    @schedule = Schedule.find(params[:id])
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html {redirect_to :back, notice: 'График был успешно обновлен.'}
        format.json {render :show, status: :ok, location: @schedule}

      else
        format.html {render :edit}
        format.json {render json: @schedule.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    if current_company
      @schedule.destroy
      respond_to do |format|
        format.html {redirect_to schedules_url, notice: 'График был успешно удален.'}
        format.json {head :no_content}
      end
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit( :interval, :sunday_start_time, :sunday_finish_time, :monday_start_time, :monday_finish_time,
                                      :tuesday_start_time, :tuesday_finish_time, :wednesday_start_time, :wednesday_finish_time,
                                      :thursday_start_time, :thursday_finish_time, :friday_start_time, :friday_finish_time,
                                      :saturday_start_time, :saturday_finish_time, :doctor_id)
  end

end