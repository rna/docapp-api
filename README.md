# DocApp API - An API for the Doctor Appointment booking system

> An API for the Doctor Appointment booking system where patients can book the doctor appointment in advance. Also, each doctor can login and create their own schedules.

## Table of Contents

- [Features](#features)
- [Built With](#built-with)
- [Live Demo](#live-demo)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [Author](#author)
<!-- - [Acknowledgements](#acknowledgements) -->

## Features

- Allows Doctor & patient to register, login and logout.

- Patient can book the required appointment of each doctor.

- Doctor can create their own schedules.

- Patient can view the profile of the doctor.

- Doctor & Patient can see their list of appointments.

## Built With

- Ruby on Rails v6.0.2.2
- Rspec
- JWT gem

## Live Demo

[Live Demo Link](https://docapp-api.herokuapp.com/)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Windows

```sh
https://www.ruby-lang.org/es/documentation/installation/#rubyinstaller
https://gorails.com/setup/windows/10
```

- Ubuntu

```sh
sudo apt-get install ruby-full
gem install rails -v 6.0.2
```
<!-- ### Setup -->

### Installation

Clone the repo with:

```sh
git clone https://github.com/rna/docapp-api
```

Install gems with:

```sh
bundle install
```

Setup database with:

```sh
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```sh
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```sh
    rpsec --format documentation
```

<!-- ### Deployment -->

### Author

👤 **Ramesh Naidu Allu**

- Github: [@rna](https://github.com/rna)
- Twitter: [@rnadev](https://twitter.com/rnadev)
- Linkedin: [Linkedin](https://linkedin.com/in/ramesh-naidu)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

<!-- ## Acknowledgments -->

## 📝 License

This project is [MIT](lic.url) licensed.