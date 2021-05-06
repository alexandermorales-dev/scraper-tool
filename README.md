![](https://img.shields.io/badge/Microverse-blueviolet)

# Scraper Tool - For Real State website (Capstone Project)

> This tool allows the user to find a target in a given website. The tool was created with the concept of Leads Generation in mind, but it can be used for different purposes, for example, getting a list of prices from a website, getting email contacts, relevant positions from a company website, etc. In this case, after giving the proper URL to the tool, it will search for Property Names, Price, and revert with Average price for the given location long witha list of each property and price. 

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
- In the terminal, change to `bin` folder by typing `cd bin` into any other folder.
- Run the command `ruby scraper.rb`
- Follow the instructions and fill the information as per guidelines in console

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

This tool has some preset values for the queries it performs, however, if you want to give it a try with a different website or just a different query, please see note the following:

- In order to get information from a website this app needs the URL from where you want the info from.
- It also needs the name of the Class containing the information
- And also needs the class of the actual element that you want to retrieve with this tool
- When using this app you should already have at hand the value of what's mentioned above
- For your guidance, you can use the commented values at the bottom of the `scraper.rb`

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
