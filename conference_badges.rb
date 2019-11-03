def conference_badges
  {
    name: 'Ariel',
    attendees: [],
    badges: [],
    room_assignments: [],
    badges_and_room_assignments: []
  }
end

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  arr = []
  names.each { |val|
    arr << badge_maker(val)
  }
  arr
end

def assign_rooms(names)
  names.map.with_index { |val, key|
    key += 1 
    "Hello, #{val}! You'll be assigned to room #{key}!"
  }
end

def printer(names)

  badges = conference_badges
  batches = batch_badge_creator(names)
  rooms = assign_rooms(names)

  list = batches.concat(rooms).select { |val| puts val }
end

printer(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])