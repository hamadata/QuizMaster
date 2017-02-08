# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.create({body: "<p>Which is the invention of Oliver Heaviside?</p><ol> <li>mathematical techniques for the solution of differential equations</li><li>gasoline engine</li><li>steam locomotives</li> </ol>", answer: "one"})
Question.create({body: "<p>If it is 1:00 in Greenwitch Mean Time, how many o'clock in Japan?</p><p>Please answer in format of * o'clock.</p>", answer: "ten o'clock"})
Question.create({body: "<p>If it is 8:00 in Manila, how many o'clock in Japan?</p><p>Please answer in format of * o'clock.</p>", answer: "9 o'clock"})
Question.create({body: "<p>If it is 8:00 in Japan, how many o'clock in Jakarta?</p><p>Please answer in format of * o'clock.</p>", answer: "six o'clock"})
Question.create({body: "<p>If it is 1:00 in Mexico City, how many o'clock in London?</p><p>Please answer in format of * o'clock.</p>", answer: "seven o'clock"})
