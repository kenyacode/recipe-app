# RECIPE BOX
**Recipe Box** is a ruby on rails app for saving recipe's.
## Directions on how to deploy
### System dependencies
* Ruby version - 2.2.2
* gem rails 4.2.1
* gem sass-rails 5.0
* gem uglifier 1.3.0
* gem coffee-rails 4.1.0
* gem jquery-rails
* gem turbolinks
* gem jbuilder 2.0

Added from [Rubygems] (https://rubygems.org)

* gem sdoc 0.4.0 group: :doc
* gem haml 4.0.5
* gem simple_form 3.0.2
* gem bootstrap-sass 3.3.6
* gem carrierwave
* gem carrierwave_direct
* gem rmagick
* gem fog
* gem cocoon 1.2.6
* gem devise 3.5.6
* gem github-markup 1.4

development

* gem spring
* gem sqlite3
* gem byebug
* gem web-console

### For deployment on heroku
production

* gem pg
* gem rails_12factor

### Configuration
I used haml to write the code.
[rubygems/haml](https://rubygems.org/gems/haml)
### Database creation
Locally I use sqlite3 and for production postgresql
### Deployment instructions
 Clone the repo and cd into recipe_box

 Install all the gems and bundle

 Run rake db:migrage

 Set the fog gem to upload locally in the app/uploaders/image_uploader.rb:

	storage :file  uncomment this line
	storage :fog   comment this line

(The fog gem is used to upload the images to Amazon S3. You need an Amazon account to use fog.)

Run rails server and go to locolhost:3000

Create a User, Create a new Recipe: A name is required.

Check it out live on Heroku [Recipe App](https://chakula.herokuapp.com)

# ABOUT THE DEVELOPER

![pic](https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/0a8/375/381adb6.jpg)

###I learned to code at [generalassemb.ly] ![ga logo](https://media.licdn.com/media/p/3/005/0a3/2df/1671d50.png)
### Contact Me [LinkedIn](https://www.linkedin.com/in/kenyacode) or [Email](mailto:kenyadevelop@gmail.com)
###My other Apps
####[Blog app repo](https://github.com/kenyacode/blog) Live on Heroku [jmblog]
####[Raddit app repo](https://github.com/kenyacode/raddit) Live on Heroku  [jmraddit]
####[Pin Board repo](https://github.com/kenyacode/pin_board) Live on Heroku [pintirest]

[generalassemb.ly]:https://generalassemb.ly/
[jmblog]:https://jmblog.herokuapp.com/
[jmraddit]:https://jmraddit.herokuapp.com/
[pintirest]:https://pintirest.herokuapp.com/
