
samara = User.create(name: "Samara", email: "sam@example.com", password: "password")
cameron = User.create(name: "Cameron", email: "cameron@example.com", password: "password")



DreamPost.create(content: "Today is Tuesday and it's great", user_id: samara.id)

samara.dream_posts.create(content: "We are building a SUPER FUN Sinatra App! YAY")
cameron.dream_posts.create(content: "Its 2AM and Im writing code!!!")
