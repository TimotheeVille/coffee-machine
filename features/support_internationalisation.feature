

Feature: Support internationalisation
    # **In order to** practice my use of greetings in several languages
    # **As a** polyglot coffee lover
    # **I can** select the language on the coffee machine

    Background:
        Given a user

    Scenario: No messages are displayed when machine is shut down
        Given the coffee machine is started
        When I shutdown the coffee machine
        Then message "" should be displayed

    Scenario Outline: Messages are based on language
        Well, sometimes, you just get a coffee
        When I start the coffee machine using language "<language>"
        Then message "<ready_message>" should be displayed
        And It displays "<attemps>" attempts remaining

        Examples: Attempts
            | attempts |
            | one      |
            | two      |
            | three    |

        Examples:
            | language | ready_message |
            | en       | Ready         |
            | fr       | Pret          |
