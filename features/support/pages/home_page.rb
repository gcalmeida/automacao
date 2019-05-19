class HomePage
    include Capybara::DSL
    
    def access
        visit '/'
        close_modal
    end
    
    def close_modal
        find('.btn-close-modal').click
    end

    def confirm_round_trip
        find('#iptRoundTrip').click
    end

    def choose_destination(destination)
        find('#inptdestination').set destination
        find('#li-id-2701273').click
    end

    def confirm_date
        find('#departureDate').click
        first('button[data-pika-day="26"]').click
        
        find('#arrivalDate').click
        first('button[data-pika-day="28"]').click
    end

    def nr_passengers(adult,child,baby)
        adults = find('select[id=drpAdultsQtd]')
        adults.find('option', text: adult).select_option
        children = find('select[id=drpChildrenQtd]')
        children.find('option', text: child).select_option
        babies = find('select[id=drpBabiesQtd]')
        babies.find('option', text: baby).select_option
    end
    
    def confirm_search
        click_on 'Pesquisar'
    end
end
  