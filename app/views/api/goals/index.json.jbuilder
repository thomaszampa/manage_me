json.array! @goals.each do |goal|
  json.partial! "goals.json.jbuilder", goal: goal
end