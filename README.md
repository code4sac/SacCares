#### Project Description

The goal of SacCares is to develope an app that will serve as a single-source listing that will make all available assistance for domestic violence, addiction and mental health issues easily accessible to Sacramento County residents in crisis situations.

#### Contributor(s)
* Koni Davies (@koni-davies),estherkdavies@gmail.com

#### Stakeholder Engagement
* Guy Sperry, DTech (Sacramento County Department of Technology)

#### Developer Documentation Requirements
* Git
* Ruby 2.2 (RVM recommended for managing Ruby versions)
* Rails 4.2
* Postgres >= 9.3
* ExecJS supported JavaScript runtime (therubyracer gem is included)
* To check your ruby version, run $ ruby --version. If your version is 2.2.0, then you’re good to go.
* If not, download RVM if not already installed, then run $ rvm list to see your installed ruby versions. If you have 2.2.0 installed, run $ rvm use ruby-2.2.0. Otherwise, install or update your ruby version with RVM.
1. Download or clone this repository from GitHub $ git clone https://github.com/Koni-Davies/SacCares.git
2. Change directory into the project folder $ cd SacCares
3. Download dependencies $ gem install bundler then $ bundle install
4. Set up the Postgres database (see Database section below)
5. Run $ rails server
6. Point your browser to localhost:3000 to preview the app

#### Database
1. Install PostgreSQL
2. Create the database $ bundle exec rake db:create
3. Load the schema $ bundle exec rake db:schema:load
