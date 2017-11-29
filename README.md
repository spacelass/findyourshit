Find Your Shit
Team Members: Henry Ke, Mumu Lin, Colleen Yu

Idea: Create an application where you can review bathrooms (on campus). Users can
add new bathrooms, buildings, or areas.

Models and Description:
Users
  Has name, email, and many reviews.
  Also can choose which bathrooms they would like to see.
Area
  Has name
  The most broad thing. Has many buildings and bathrooms.
  Ex: Sproul, Lower Sproul, CNR, COE
Building
  Has name, number of floors, an area that it belongs to
  Has many bathrooms
  Can be created and also implemented image uploading for it!
Bathroom
  Belongs to a building
  Has a specific floor number
  Has a gender option
Reviews
  Belongs to a bathroom and a user
  Has stars!
  Has a body and a title.

Features:
  User can log in
  Buildings support image uploading
  Users can leave reviews for specific bathrooms
  Bathrooms are sorted by the floor number
  Bathrooms are only shown if it matches the User's gender preference
  New Areas, bathrooms, and buildings can be added
  Nice looking UI
  Adapted devise of the User to include gender and name

Division of Labor:
  Henry: Dealt with complicated gems: paperclip, simple_form, devise. General coding tasks. Decided the logic/architecture behind the website.
  Mumu: Created base models and controllers. Edited controllers to support creating new ones, showing them, and transitioning between each controller.
  Colleen: Made the website look aesthetically pleasing to look at and error catching.
