json.id request.id
json.user_id request.user_id
json.goal_id request.goal_id
json.relationship_id request.relationship_id
json.body request.body
json.request_attachment_url rails_blob_url(request.request_attachment) if request.request_attachment.attachment
json.time_stamp request.time_stamp
json.due_date request.due_date
json.over_due request.over_due
json.complete request.complete