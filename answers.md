# Q0: Why is this error being thrown?
In our config/routes.rb there is a home#index line where controllers/home_controller is called and the index method begins. In the index method it uses a Pokemon model but there is nothing in pokemon.rb model yet. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

# Question 3: What would you name your own Pokemon?
bubz

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainer_path(id: @pokemon.trainer) because this path required the pokemon trainer ID.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The application.html.erb --> layouts/messages allows us to show the error message.

# Give us feedback on the project and decal below!
super swag

# Extra credit: Link your Heroku deployed app
https://pokebabes.herokuapp.com/
