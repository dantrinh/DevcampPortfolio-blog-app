# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
     title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tortor felis, maximus vitae quam eu,
      malesuada interdum enim. Nullam quis pellentesque augue, a luctus orci. Proin consequat sem ac sem viverra
      vehicula. Maecenas volutpat eleifend tortor et sodales. Sed a mollis lectus, et lobortis diam. Donec varius
      luctus tempor. Maecenas luctus congue placerat. Pellentesque auctor placerat laoreet. Cras vitae odio interdum,
      porta felis ut, tincidunt dolor. Nunc porta feugiat diam, et blandit erat porttitor nec. Donec vestibulum luctus
     ante. In in ex euismod, feugiat augue aliquam, vulputate libero. Aliquam luctus ex nisl, vel semper arcu volutpat
    nec. Cras sit amet nibh vel eros consequat malesuada quis ac urna. Etiam euismod erat ut sem finibus, eu vestibulum
     nibh mollis.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
     title: "Rails #{skill}",
     percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
     title: "Portfolio title: #{portfolio_item}",
     subtitle: "Ruby on Rails",
     body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
     main_image: "https://via.placeholder.com/300",
     thumb_image: "https://via.placeholder.com/150"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Angular",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      main_image: "https://via.placeholder.com/300",
      thumb_image: "https://via.placeholder.com/150"
  )
end

puts "9 portfolio items created"
