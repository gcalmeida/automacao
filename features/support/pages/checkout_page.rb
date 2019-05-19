class CheckoutPage
    include Capybara::DSL
    
    def include_email(email)
        find('#my-account_email').set email
    end

    def include_passenger(name, lastName, birth, gender)
        find('#nome_0').set name
        find('#lastName_0').set lastName
        find('#birth_0').set birth
        genders = find('select[name=gender_0]')
        genders.find('option', text: gender).select_option
    end

    def include_payment(flag, number_c, month_c, year_c, cvv, name, cpf)
        find('#card1').click
        flags = find('select[name=flag_card]')
        flags.find('option', text: flag).select_option
        find('#number_card-0').set number_c
        month = find('select[name=month-0]')
        month.find('option', text: month_c).select_option
        year = find('select[name=year-0]')
        year.find('option', text: year_c).select_option
        find('#codesecure_card-0').set cvv
        find('#name_card-0').set name
        find('#cpf_card-0').set cpf
    end

    def include_payment_information(zipcode,address,number_address,neighborhood,city,state)
        find('#zipcode-0').set zipcode
        find('#address-0').set address
        find('#number_address-0').set number_address
        find('#neighborhood-0').set neighborhood
        find('#city-0').set city
        states = find('select[name=state]')
        states.find('option', text: state).select_option
    end

    def include_contact(email,type,number)
        find('#contact_email').set email
        find('#contact_email_confirm').set email
        type_contact = find('select[name=contact_phone_0]')
        type_contact.find('option', text: tipo).select_option
        find('#contact_phonenumber_0').set number
    end

    def accept_checkout 
        find('#accept-checkout').click
        click_on 'Finalizar compra'     
    end
end