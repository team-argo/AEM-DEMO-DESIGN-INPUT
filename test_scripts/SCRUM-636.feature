# Gherkin Test Script generated from Jira Issue: "Our Research Initiatives"
# Note: In a large project, the Features below (Navigation, Research, Services) would typically be in separate .feature files
# (e.g., navigation.feature, research_initiatives.feature, services.feature).
# For this request, they are combined into a single script.

@website @navigation
Feature: Website Navigation
  As a site visitor
  I want to use the main navigation menu
  So that I can easily access key sections of the website

  Scenario Outline: User can access main sections of the website
    Given the user is on any page of the site
    When the user clicks on the "<Link Name>" navigation link
    Then the user is successfully taken to the "<Page Name>" page

    Examples:
      | Link Name  | Page Name  |
      | Home       | Home       |
      | About      | About      |
      | Services   | Services   |
      | Contact    | Contact    |

@research @content
Feature: Research Initiatives Page
  As a website visitor
  I want to learn about the company's research initiatives
  So that I can understand their focus, goals, and impact on medical science

  Background:
    Given the user is on the "Our Research Initiatives" page

  Scenario: View the main introduction to research initiatives
    When the user views the top section of the page
    Then the user should see the title "Our Research Initiatives"
    And the user should see descriptive text about the company's research goals
    And the user should see a relevant image of a laboratory

  Scenario: Identify the "Stories of Innovation & Impact" section
    When the user scrolls down the page
    Then the user should see the section heading "Our Stories of Innovation & Impact"

  Scenario Outline: Explore different stories of innovation and impact
    Given the user is viewing the "Stories of Innovation & Impact" section
    When the user views the "<Story Title>" block
    Then the user should see a detailed description of the research for that story
    And the user should see a relevant <Image Type> for that story

    Examples:
      | Story Title                                   | Image Type       |
      | Chronic Disease Management & Prevention       | illustration     |
      | Genomic Medicine & Personalized Treatment     | laboratory image |
      | Infection Control & Vaccine Impact Studies    | vaccine image    |

  Scenario: Verify footer content is available on the page
    When the user scrolls to the bottom of the page
    Then the user should see a footer section
    And the footer should contain the main office address
    And the footer should contain contact details
    And the footer should contain a link to "Privacy"
    And the footer should contain a link to "Terms of Use"

@services @tabs
Feature: Service Details Tabs
  As a potential patient or partner
  I want to explore different medical service innovations
  So that I can find information relevant to my needs

  Scenario: User explores Internal Medicine service innovations
    Given the user is on the "Services" page
    And the user is viewing the service details section with tabs
    When the user clicks on the "Internal Medicine" tab
    Then the content below the tabs updates to show information specific to "Internal Medicine"