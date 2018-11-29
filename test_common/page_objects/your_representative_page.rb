module ET3
  module Test
    class YourRepresentativePage < BasePage
      set_url '/respond/your_representative'

      section :have_representative_question, :single_choice_option, 'questions.have_representative.label', exact: true do
        
        include SingleChoiceOptionSection

        def set_for(user_persona)
          choose(user_persona.have_representative)
        end
      end

      element :continue_button, :button, "Save and continue"
      def next
        continue_button.click
      end
    end
  end
end