Feature: Reserve Purchase
    As a user
    I can make a reservation purchase
    So that I can plan my trip

    @smoke
    Scenario:
        Given I want a ticket to 'Rio de Janeiro'
        And with round trip date
        When I fill in all the necessary data to buy a reservation
        And I finish my purchase
        Then I see the status 'Reserva em processamento'
