class ConfirmationPage
    include Capybara::DSL

    def status_confirm
        find('.in-progress').text
    end
end