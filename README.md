# README
## Outgrown BE

<a name="readme-top"></a>

<details>
  <summary>Table of Contents</summary>
  <ul list-style-position="inside">
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#learning-goals">Learning Goals</a></li>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#roadmap">Roadmap</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li>
      <a href="#usage">Usage</a>
      <ul>
        <li><a href="#endpoints">Endpoints</a></li>
      </ul>
    </li>
    <li>
      <a href="#contributing">Contributing</a>
      <ul>
        <li><a href="#developers">Developers</a></li>
        <li><a href="#project-managers-instructors">Project Managers-Instructors</a></li>
      </ul>
    </li>
  </ol>
</details>

## About the Project

  ### Learning Goals

  * Microservice integration and implementation
  * Service integration and implementation
  * Efficient API exposure

  ### Built With

  [![Ruby]][Ruby-url] [![Rails]][Rails-url][![Postgres]][Postgres-url]
  [![Postman]][Postman-url] [![Graphql]][Graphql-url] [![CircleCI]][CircleCI-url]

  ### Roadmap
  <details>
    <summary>Done</summary>
    - [x] Add Readme<br>
    - [x] Readme: Outlines the learning goals<br>
    - [x] Readme: Add back to top links<br>
    - [x] Readme: Clone and Setup<br>
    - [x] Readme: Users Get API keys<br>
    - [x] Readme: Happy Path Endpoint Use<br>
    - [x] Setup Repo and Push to Github<br>
  </details>
  <details>
    <summary>In Progress</summary>
    - [ ] Extension: Favorite-Delete<br>
    - [ ] Extension: Caching/Backgorund_Workers<br>
    - [ ] Extension: Authentication<br>
  </details>

  <p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

  ### Prerequisites

  * Ruby 2.7.4
  * Rails 5.2.8

  ### Installation

  _Below are instructions for forking and cloning this repo_

  1. Clone the repo
  ```sh
  git clone git@github.com:Outgrown/outgrown_be.git
  ```
  2. Install gems
  ```sh
  bundle install
  ```
  3. Setup the database
  ```js
  rails db:{create,migrate}
  ```
  4. Run RSpec tests
  ```sh
  bundle exec rspec
  ```

  <p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

  ### Endpoints

  - Organization: 'https://github.com/Outgrown'
  - Try it now: <br>
  'http://localhost:3000/graphiql'<br>

  <p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

  Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

  If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
  Don't forget to give the project a star! Thanks again!

  1. Fork the Project
  2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
  3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
  4. Push to the Branch (`git push origin feature/AmazingFeature`)
  5. Open a Pull Request

  ### Developers

  <div align="center">
    <img src="https://avatars.githubusercontent.com/u/113158442?v=4" alt="Profile" width="80" height="80">
    <p align="center">
      Anthony Blackwell Tallent<br>
      <a href="https://github.com/anthonytallent">Github: anthonytallent</a>
    </p>
  </div>
  <div align="center">
    <img src="https://avatars.githubusercontent.com/u/111726505?v=4" alt="Profile" width="80" height="80">
    <p align="center">
      Brandon Gray<br>
      <a href="https://github.com/bGray88">Github: bGray88</a>
    </p>
  </div>
  <div align="center">
    <img src="https://avatars.githubusercontent.com/u/109244868?v=4" alt="Profile" width="80" height="80">
    <p align="center">
      William Lampke<br>
      <a href="https://github.com/WilliamLampke">Github: WilliamLampke</a>
    </p>
  </div>

  Project Links: <br> 
  [Github](https://github.com/Outgrown/outgrown_be) <br>

  <p align="right">(<a href="#readme-top">back to top</a>)</p>

  ### Project Managers-Instructors

  1. Juliet Eyraud
  2. Brian Zanti

  <p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

  <p align="right">(<a href="#readme-top">back to top</a>)</p>

  [Ruby]: https://img.shields.io/badge/-Ruby-CC342D?style=flat&logo=ruby&logoColor=white
  [Ruby-url]: https://www.ruby-lang.org/en/
  [Rails]: https://img.shields.io/badge/-Ruby%20on%20Rails-CC0000?style=flat&logo=rubyonrails&logoColor=white
  [Rails-url]: https://rubyonrails.org
  [Postgres]: https://img.shields.io/badge/-Postgres-4169E1?style=flat&logo=postgresql&logoColor=white
  [Postgres-url]: https://www.postgresql.org/
  [Postman]: https://img.shields.io/badge/-Postman-FF6C37?style=flat&logo=postman&logoColor=white
  [Postman-url]: https://www.postman.com/
  [Graphql]: https://img.shields.io/badge/-ApolloGraphQL-311C87?style=flat&logo=apollo-graphql
  [Graphql-url]: https://graphql.org/
  [CircleCI]: https://img.shields.io/badge/circle%20ci-%23161616.svg?style=flat&logo=circleci&logoColor=white
  [CircleCI-url]: https://circleci.com/
