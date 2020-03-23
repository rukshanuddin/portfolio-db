# Specifications for the Rails Assessment

Specs:

- [x] Using Ruby on Rails for the project
**Self explanatory, using Rails as project framework.**
- [x] Include at least one has_many relationship
**User has_many projects, Project has_many comments**
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
**Comment belongs_to Project, Comment belongs_to User**
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
**User has_many FlatironModules through Project
- [ ] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. **User.most_recipes URL: /users/most_recipes)**
- [x] Include signup
**signup_path to devise/registrations#new**
- [x] Include login
**login_path to devise/sessions#new**
- [x] Include logout
**logout_path to devise/sessions#destroy**
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
**Used the following gems: 'dotenv-rails', 'omniauth', 'omniauth-github' to help with authentication**
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:

- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
