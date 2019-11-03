def conference_badges
  {
    name: 'Ariel',
    attendees: ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"],
    badges: nil,
    room_assignments: nil,
    badges_and_room_assignments: nil
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
  arr = []
  room_string = "You'll be assigned to room"
  names.select.with_index { |val, key|
    arr << "Hello, #{val}! #{room_string} #{key}"
  }
  arr
end

def printer
  badges = conference_badges
  a = badges[:attendees] = batch_badge_creator(badges[:attendees])
  badges[:room_assignments] = assign_rooms(badges[:attendees])

  puts "#{badges[:attendees].concat(badges[:room_assignments])}"

end

printer()