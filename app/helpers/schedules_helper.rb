module SchedulesHelper
  def is_weekend?(schedule, weekday)
    !schedule.present? || schedule.send(weekday.downcase+'_start_time').strftime("%H - %M") == "00 - 00"  &&  schedule.send(weekday.downcase+'_finish_time').strftime("%H - %M") == "00 - 00"
  end
end
