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