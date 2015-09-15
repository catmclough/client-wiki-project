# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
Group.create!(name: "Inner City Basketball")
Group.create!(name: "Uptown Tennis League")
Group.create!(name: "Rugby for Foreigners")
Group.create!(name: "Baseball in the Suburbs")
Group.create!(name: "Hipster Soccer")
Group.create!(name: "Nerd Chess")
Group.create!(name: "Running with Scissors")

User.create!(email: "bob@bob.com", password: "testing!", full_name: "Bob")
User.create!(email: "steve@steve.com", password: "testing!", full_name: "Steve")
User.create!(email: "ted@ted.com", password: "testing!", full_name: "Ted")
User.create!(email: "will@will.com", password: "testing!", full_name: "Will")
User.create!(email: "karen@karen.com", password: "testing!", full_name: "Karen")
User.create!(email: "sue@sue.com", password: "testing!", full_name: "Sue")
User.create!(email: "wanda@wanda.com", password: "testing!", full_name: "Wanda")
User.create!(email: "tabatha@tabatha.com", password: "testing!", full_name: "Tabatha")
User.create!(email: "lucas@lucas.com", password: "testing!", full_name: "Lucas")
User.create!(email: "maurice@maurice.com", password: "testing!", full_name: "Maurice")

Membership.create!(group_id: 1 , user_id: 1, access_level: "admin" )
Membership.create!(group_id: 1 , user_id: 2, access_level: "member" )
Membership.create!(group_id: 1 , user_id: 3, access_level: "member" )
Membership.create!(group_id: 2 , user_id: 4, access_level: "admin" )
Membership.create!(group_id: 2 , user_id: 5, access_level: "member" )
Membership.create!(group_id: 2 , user_id: 6, access_level: "member" )
Membership.create!(group_id: 3 , user_id: 7, access_level: "admin" )
Membership.create!(group_id: 3 , user_id: 8, access_level: "member" )
Membership.create!(group_id: 4 , user_id: 9, access_level: "admin" )
Membership.create!(group_id: 4 , user_id: 10, access_level: "admin" )
Membership.create!(group_id: 4 , user_id: 1, access_level: "member" )
Membership.create!(group_id: 4 , user_id: 2, access_level: "member" )
Membership.create!(group_id: 5 , user_id: 3, access_level: "admin" )
Membership.create!(group_id: 5 , user_id: 4, access_level: "admin" )
Membership.create!(group_id: 5 , user_id: 5, access_level: "admin" )
Membership.create!(group_id: 5 , user_id: 6, access_level: "member" )
Membership.create!(group_id: 5 , user_id: 7, access_level: "member" )
Membership.create!(group_id: 5 , user_id: 8, access_level: "member" )
Membership.create!(group_id: 5 , user_id: 9, access_level: "member" )
Membership.create!(group_id: 5 , user_id: 10, access_level: "member" )
Membership.create!(group_id: 6 , user_id: 5, access_level: "admin" )
Membership.create!(group_id: 6 , user_id: 6, access_level: "member" )
Membership.create!(group_id: 6 , user_id: 7, access_level: "member" )
Membership.create!(group_id: 6 , user_id: 8, access_level: "member" )
Membership.create!(group_id: 7 , user_id: 9, access_level: "admin" )

Article.create!(group_id: 1)
Article.create!(group_id: 2)
Article.create!(group_id: 4)
Article.create!(group_id: 4)
Article.create!(group_id: 3)
Article.create!(group_id: 5)

Version.create!(article_id: 1, author_id: 3, title: "Basketball Rules" , body: "Here is the final version..." , privacy_level: "private" )
Version.create!(article_id: 1, author_id: 2, title: "Basketball *Rules*", body: "Another Draft...", privacy_level: "private" )
Version.create!(article_id: 1, author_id: 2, title: "B-ball Rules", body: "Another Draft...", privacy_level: "private" )
Version.create!(article_id: 1, author_id: 1, title: "Basketball Rules", body: "Another Draft...", privacy_level: "private" )
User.find(4).versions.create(article_id: 2, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "public" )
User.find(5).versions.create(article_id: 2, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "public" )
User.find(5).versions.create(article_id: 2, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "public" )
User.find(6).versions.create(article_id: 2, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "public" )
User.find(9).versions.create(article_id: 3, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private" )
User.find(10).versions.create(article_id: 3, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private" )
User.find(1).versions.create(article_id: 3, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private" )
User.find(2).versions.create(article_id: 4, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private" )
User.find(1).versions.create(article_id: 4, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private" )
User.find(1).versions.create(article_id: 4, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private" )
User.find(2).versions.create(article_id: 4, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private" )
Article.find(5).versions.create!(author_id: 7, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")
Article.find(5).versions.create!(author_id: 8, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")
Article.find(6).versions.create!(author_id: 4, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")
Article.find(6).versions.create!(author_id: 4, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")
Article.find(6).versions.create!(author_id: 5, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")
Article.find(6).versions.create!(author_id: 5, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")
Article.find(6).versions.create!(author_id: 6, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")
Article.find(6).versions.create!(author_id: 7, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")
Article.find(6).versions.create!(author_id: 9, title: Faker::Book.title, body: Faker::Lorem.paragraphs(6).join("\n"), privacy_level: "private")