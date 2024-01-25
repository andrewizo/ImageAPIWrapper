# Image API Wrapper App

## Overview

This Rails application serves as a simple API wrapper for fetching and displaying random images from various sources, including dogs, cats, anime, and random images. It utilizes public APIs to retrieve images and stores them in the database for display.

## Features

- Fetch random dog images from the [Dog CEO API](https://dog.ceo/dog-api/).
- Fetch random cat images from the [The Cat API](https://thecatapi.com/).
- Fetch random anime images from [Lorem Picsum](https://picsum.photos/).
- Fetch random images from [Unsplash Source API](https://source.unsplash.com/).

## Setup
cd image-api-wrapper

### Prerequisites

- Ruby
- Ruby on Rails
- Bundler

## Usage
- Access the home page to see buttons for generating random images of dogs, cats, anime, and random images.
- Click on the corresponding buttons to generate and display random images.
Each click will fetch a new image and store it in the database for later retrieval.

## Structure
- app/controllers: Contains controllers for handling HTTP requests.
- app/models: Defines ActiveRecord models for interacting with the database.
- app/views: Contains the views for rendering HTML templates.
- config/routes.rb: Defines application routes.