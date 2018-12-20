json.id goal.id
json.user_id goal.user_id
json.relationship_id goal.relationship_id
json.subject goal.subject
json.body goal.body
json.start_date goal.start_date
json.end_date goal.end_date
json.requests goal.requests.each do |request|
  json.id request.id
  json.user_id request.user_id
  json.goal_id request.goal_id
  json.relationship_id request.relationship_id
  json.body request.body
  json.request_attachment_url request.request_attachment.attachment ? rails_blob_url(request.request_attachment) : nil
  json.time_stamp request.time_stamp
  json.due_date request.due_date
  json.over_due request.over_due
  json.complete request.complete
  json.user_first request.user.first_name
  json.user_last request.user.last_name
end
# json.requests goal.requests