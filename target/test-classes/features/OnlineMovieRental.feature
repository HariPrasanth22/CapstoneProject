Feature: API Testing with Rest Assured

  Scenario: Register a new user
    Given the user registration endpoint is available
    When I register a user with username "Sarasel", password "sarasel123", and email "ss@example.com"
    Then the response status code should be 201
    And the response body should contain username "Sarasel" and email "ss@example.com"

  Scenario: Login a user
    Given the user login endpoint is available
    When I login with username "Hari" and password "@hp123"
    Then the response status code should be 200
    And the response body should contain message "Login successful"

  Scenario: Update user details
    Given the user update endpoint is available
    When I update user with id 1 with username "Haripras" and email "harip@example.com"
    Then the response status code should be 200
    And the response body should contain username "Haripras" and email "harip@example.com"

  Scenario: Delete a user
    Given the user delete endpoint is available
    When I delete user with id 2
    Then the response status code should be 204

  Scenario: Post a movie
    Given the movie post endpoint is available
    When I post a movie with title "leo", director "lokesj", genre "Sci-Fi", and releaseDate "2017-07-16"
    Then the response status code should be 201
    And the response body should contain title "leo" and director "lokesj"

  Scenario: Get a movie by ID
    Given the movie get by ID endpoint is available
    When I get the movie with ID 1
    Then the response status code should be 200
    And the response body should contain title "Avatar"

  Scenario: Post a rental
    Given the rental post endpoint is available
    When I post a rental with userId 1, movieId 1, and rentalDate "2022-01-01"
    Then the response status code should be 201
    And the response body should contain userId 1 and movieId 1

  Scenario: Get all rentals
    Given the rentals get all endpoint is available
    When I get all rentals
    Then the response status code should be 200
    And the response body should contain rentals
