![](https://img.shields.io/badge/Microverse-blueviolet)

# Scraper Tool - For Real State website (Capstone Project)

> This tool allows the user to find a target in a given website. The tool was created with the concept of Leads Generation in mind, therefore, it should be able to provide the desired information to the user. In this case, the tool will search for Property Names, Price, Location, and Contact Info by area. 

![screenshot](./app_screenshot.png)

In order to achieve this, Nokogiri gem needs to be used so we can actually get the functionality of scraping and just modify the parameters for the queries as needed.

## Built With

- Ruby
- Nokogiri gem
- RSpec for testing
- Rubocop for better quality code 

## Getting Started

**To get a local copy up and running follow these simple example steps.**

- Clone this repository to a local folder
- In this case the main file `scraper.rb` is in the root folder, so there's no need to `cd` into any other folder.
- In your text editor's terminal run the command `ruby scraper.rb`

### Prerequisites

- Text editor
- Ruby >= 2.5
- Nokogiri

### Setup

It's important hat you have the proper environment set up in order to be able to use this tool. Which includes having a text editor, ruby environment and install nokogiri gem. Please see follow the instructions below.

### Install

- For a step by step guide on how to install Ruby, please take a look to [this](https://www.ruby-lang.org/en/documentation/installation/) link.
- For installing Nokogiri gem you should be good by running the command `gem install nokogiri`, however, for a better understanding please follow [this](https://nokogiri.org/rdoc/index.html) link .

### Usage

This tool has some preset values for the queries it performs, however, if you want to give it a try with a different website or just a different query, please see below the key values to change:

- In the variable `html` you should change the url for the page that you want to scrape.
- The value of the `article` variable should be replaced with the element containing the information of interest.
- In the variables `title` and `prices` you have to change the value of the `.css()` property to the actual css selector containing the information needed.

## Authors

👤 **Alexander Morales**

- GitHub: @alexandermorales-dev
- Twitter: @Alexand81099721
- LinkedIn: AlexanderMorales
- Email: alexandermorales.n1@gmail.com

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- The Odin Project
- Codecademy

## 📝 License

This project is [MIT](./MIT.md) licensed.
