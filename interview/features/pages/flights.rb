class Flights
    attr_reader :driver

    def initialize(driver)
        @driver = driver
    end

    def select_flight
        $wait.until{driver.first(css: '[value="Choose This Flight"]').displayed?}
        driver.all(css: '[value="Choose This Flight"]').third.click
    end

    def fields?
        $wait.until{driver.first(css: '.container').displayed?}
        driver.all(css: '.container').second.text
    end

    def click_purchase_flight
        $wait.until{driver.first(css: '.btn.btn-primary').displayed?}
        driver.first(css: '.btn.btn-primary').click
    end
end