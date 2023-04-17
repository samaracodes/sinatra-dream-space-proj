<h1>Dreamspace</h1>
<p>DreamSpace is an application used to track and share recollections of a dream as soon as you wake up. Helping you retain details and allow you to process it. Dream on, dreamer.


<h2>How to run this app:</h2>
<ul>
    <li>1. Clone this repo
    <li>2. run 'bundle install' in your terminal
    <li>3. run 'rake db:migrate' in your terminal
    <li>3. run "rackup" in your terminal
    <li>4. Open localhost:9292 into your browser to see our application in action.
</ul>


<h2>As a user I can:</h2>
<ul>
    <li> Sign up, sign in, and sign out of Dream Space.
    <li> Create a dream post
    <li> See all your dreams
    <li> Edit your dreams
    <li> Delete your dreams
</ul>

------------------------------------------------
<h2>A MVC sinatra application that uses:</h2>
<ul>
    <li> Sqlite database
    <li> ActiveRecord
    <li> RESTful routes
    <l1> Sessions
    <li> Signup/Login/Logout 
    <li> ORM - Object Relational Mapping between Models
        - belongs_to
        - has_many
    <l1> CRUD functionality on belongs_to instances of a user:
        - Create
        - Read
        - Update
        - Delete
    <li> Helper methods to protect the views of the current_user. Only the logged_in user should be allowed to create, read, update, and delete their own gigs
    <li> Validations
        - uniqueness of a user's login attributes
        - input to protect from bad data being persisted into the database
    <li> Flash messages to display validation failures with error messages, and flash success messages to validate successful signup, logout, as well as successful creation and update of a gig. 
</ul>