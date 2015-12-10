json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :room_id, :break_time, :open_time, :closed_time, :step_time, :day_off
  json.url schedule_url(schedule, format: :json)
end
