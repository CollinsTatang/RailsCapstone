# README

![](https://img.shields.io/badge/Microverse-blueviolet)

# CAPSTONE PROJECT MICROVERSE TRAINING
<h2>
    This project is the Capstone of the Microverse curriculum at the end of the Ruby on Rails module!
  </h2>

 -  Users can create categories and cultural article of their choice :
 - create an article and give title, description and a photo about it and other users can vote for the article they like.

## Built With

- Ruby v3.0.0
- Ruby on Rails v6.1.3

## Sreenshot


## Live Demo
Deployment 
[CamCulture Article ](https://safe-ravine-92207.herokuapp.com/)



## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 3.0.0
Rails: 6.1.3
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install
```
```
rails webpacker:install
```
Setup database with:

```
   rails db:create
   rails db:migrate
```
## Set up Cloudinary 
- Create a file name: cloudinary.yml
- add the settings with multiple environnements(development,production,test)
-  inside cloudinary.yml  copy those  parameters in the file
-  path: /docs/cloudinary_info
- Stop/start the server


### Github Actions

### Usage

To use THIS  project :
* Have ruby installed in your computer
* [Download]https://github.com/CollinsTatang/RailsCapstone.git) or clone this repo:
  - Clone with SSH:
  ```
     git@github.com:CollinsTatang/RailsCapstone.git

  ```
- Clone with HTTPS
  ```
    https://github.com/CollinsTatang/RailsCapstone.git
* `cd` into `CamCulture`


Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.


### Run tests

```
    rspec --format documentation
```

### Deployment on heroku
- create account 
on heroku on your terminal:
- heroku login
- heroku create
- check your remote link and push for deployment : 
git config --list | grep heroku
 git push heroku main or master
- migrate your database
 heroku run rails db:migrate
- heroku open


## Author

👤 **Makungong Collins Tatang**

- GitHub: [@CollinsTatang](https://github.com/CollinsTatang)
- Twitter: [@CollinsTatang1](https://twitter.com/CollinsTatang1)
- LinkedIn: [makungong-collins](https://www.linkedin.com/in/makungong-collins-b43260190/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/CollinsTatang/RailsCapstone/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

TBA

## 📝 License

TBA


* ...
