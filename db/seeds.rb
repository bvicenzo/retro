# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.eql? 'development'
  puts "Setting development data..."
  user = User.where(email: 'admin@admin.com').first
  User.create!(name: 'Administrator', email: 'admin@admin.com', password: '12345', password_confirmation: '12345') unless user.present?
  puts "Done!!!!"
end
