class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :title_Aprenda_Na_Pratica, 'div[class="title"]'
    element :bnt_Sobre_Nos, '//a[contains(text(), "Sobre nós")]'
    element :bnt_Depoimentos, '//a[contains(text(), "Depoimentos")]'
    element :bnt_Parceiros, '//a[contains(text(), "Parceiros")]'
    element :bnt_Fale_Conosco, '//a[contains(text(), "Fale Conosco")]'
    
    set_url '/'
    
    def validate_text_homePage(titleHomePage)
        el_title_HomePage = find('div[class="title"]')
      
        if el_title_HomePage.text.eql?(titleHomePage) != true
            raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
        end
    end

def clik_button (sobre_nos)
    binding.pry
    bnt_Sobre_Nos.click()
    end


end