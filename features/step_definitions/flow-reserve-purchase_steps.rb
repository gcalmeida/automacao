Given("I want a ticket to {string}") do |destination|
    @home_page.access
    @home_page.confirm_round_trip
    @home_page.choose_destination(destination)
end
  
Given("with round trip date") do
    @home_page.confirm_date
    @home_page.nr_passengers('1 adulto','Nenhuma','Nenhum')
    @home_page.confirm_search
    @search_ticket_page.confirm_ticket
end
  
When("I fill in all the necessary data to buy a reservation") do
    #find(find('h1').text 'Informações da compra').click
    @checkout_page.include_email('graaziele.182@gmail.com')
    @checkout_page.include_passenger(
        'Graziele','Almeida','29/06/1993','Feminino'
    )
    @checkout_page.include_payment(
        'Visa',
        '4929359411371909',
        '10', '2020', '970',
        'Teste da Silva',
        '363.585.290-21'
    )           
    @checkout_page.include_payment_information(     
        '09510101',
        'Rua Manoel Coelho',
        '600',
        'Centro',
        'São Caetano do Sul',
        'SP'
    )
    @checkout_page.include_contact(
        'graaziele.182@gmail.com',
        'Casa',
        '1127346278'
    )
end
  
When("I finish my purchase") do
    @checkout_page.accept_checkout
end 
  
Then("I see the status {string}") do |status|
    expect(@confirmation_page.status_confirm).to eql status   
end
  