class SearchTicketPage
    include Capybara::DSL

    def close_modal
        find('.btn-close-modal').click
    end

    def confirm_ticket
        first('.btn-checkin').click
        #find('.md-close').click
    end
                                  
end