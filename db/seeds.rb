# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  participant1 = Participant.create(
    name: 'Emanuel',
    email: 'Emanuel@gmail.com'
    )

  participant2 = Participant.create(
    name: 'Claudia',
    email: 'Claudia@gmail.com'
    )

  friend1      = Friend.create(
    participant_id: participant1.id,
    friend_name: 'Amanda',
    friend_email: 'amanda@gmail.com'
    )
  friend2      = Friend.create(
    participant_id: participant1.id,
    friend_name: 'Amanda',
    friend_email: 'amanda@gmail.com'
    )