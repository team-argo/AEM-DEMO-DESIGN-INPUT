# Feature file for JIRA Story: "About Us - Healthcare Provider"
# This script covers website navigation and the content of the "About Us" page.

@website @about-us
Feature: About Us Page and Website Navigation

  As a website visitor,
  I want to navigate the site and learn about the healthcare provider,
  So that I can understand their mission, team, and find key information.

  @navigation
  Scenario Outline: User can navigate to main site pages
    Given the user is on the homepage
    When the user clicks on the "<Link>" link in the navigation bar
    Then the user should be redirected to the "<Page>" page

    Examples:
      | Link      | Page          |
      | "Home"    | "Home"        |
      | "About"   | "About Us"    |
      | "Services"| "Services"    |
      | "Contact" | "Contact Us"  |

  # The following scenarios all take place on the "About Us" page.
  # A Background is used to set the initial state for each of them.
  Background:
    Given the user has navigated to the "About Us" page

  @content @culture
  Scenario: User can view the company culture and mission
    When the user scrolls to the "Explore Our Culture" section
    Then the user should see an illustrative graphic
    And the user should see text about the company's journey
    And the user should see text about the company's commitment to innovation
    And the user should see text about the company's commitment to patients

  @content @team
  Scenario: User can view key people information
    When the user scrolls to the "Key People" section
    Then the user should see a table of staff members
    And the table should have the following headers:
      | Name      | Country   | Time Zone | Role                |

  @content @metrics
  Scenario: User can view company milestones
    When the user scrolls to the company milestones section
    Then the user should see a metric for "Start Year"
    And the user should see a metric for "Patients Served"
    And the user should see a metric for "Number of Locations"
    And the user should see a metric for "Patient Satisfaction Rating"

  @footer
  Scenario: User can find information in the website footer
    # This scenario does not use the Background as it applies to any page.
    Given the user is on any page of the site
    When the user scrolls to the bottom of the page
    Then the user should see the footer section
    And the footer should contain the main office address
    And the footer should contain contact details
    And the footer should contain business hours
    And the footer should contain links to legal information
    And the footer should contain copyright information