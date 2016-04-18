task copy_doctors_schedule: :environment do
  CurrentSchedule.destroy_all
  Schedule.all.each do |schedule|
    data = {
        sunday_start_time: schedule.sunday_start_time,
        monday_start_time: schedule.monday_start_time,
        tuesday_start_time: schedule.tuesday_start_time,
        wednesday_start_time: schedule.wednesday_start_time,
        thursday_start_time: schedule.thursday_start_time,
        friday_start_time: schedule.friday_start_time,
        saturday_start_time: schedule.saturday_start_time,
        sunday_finish_time: schedule.sunday_finish_time,
        monday_finish_time: schedule.monday_finish_time,
        tuesday_finish_time: schedule.tuesday_finish_time,
        wednesday_finish_time: schedule.wednesday_finish_time,
        thursday_finish_time: schedule.thursday_finish_time,
        friday_finish_time: schedule.friday_finish_time,
        saturday_finish_time: schedule.saturday_finish_time,
        interval: schedule.interval,
        doctor_id: schedule.doctor_id
    }
    CurrentSchedule.create(data)
  end
end