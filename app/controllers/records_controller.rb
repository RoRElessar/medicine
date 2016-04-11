class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :destroy]

  def show
  end

  # POST /records
  # POST /records.json
  def create
    time = Time.parse params[:time]
    record_time = Time.new(time.year, time.month, time.day, time.hour, time.min, '00:00')
    @record = Record.new(time: record_time, doctor_id: params[:doctor_id])
    # @record.doctor_id = params[:doctor_id]
    # @record.time = params[:time]
    @record.user_id = current_user.id
    doctor = Doctor.find(params[:doctor_id])

    respond_to do |format|
      if @record.save
        format.html { redirect_to :back, notice: 'Record was successfully created.' }
        DoctorMailer.new_record_notification(current_user.email, record_time , doctor).deliver_now
      else
        format.html { redirect_to :back }
      end
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:create, :user_id, :doctor_id, :time)
    end
end
