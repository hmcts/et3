module ET3
  module Test
    module Setup
      attr_accessor :user

      def given_i_am
        @claimant = FactoryBot.create(:claimant, :claimant_valid)
        @respondent = FactoryBot.create(:respondent, :respondent_valid, :upload_additional_information)
        @representative = FactoryBot.create(:representative, :representative_valid) 
      end

      def given_invalid_data
        @claimant = FactoryBot.create(:claimant, :claimant_invalid)
        @respondent = FactoryBot.create(:respondent, :respondent_valid)
        @representative = FactoryBot.create(:representative, :representative_valid) 
      end

      # Respondent's Details Page
      def answer_case_number_question
        respondents_details_page.case_number_question.set(@respondent.case_number)
      end

      def answer_name_question
        respondents_details_page.name_question.set(@respondent.name)
      end

      def answer_contact_question
        respondents_details_page.contact_question.set(@respondent.contact)
      end

      def answer_building_name_question
        respondents_details_page.building_name_question.set(@respondent.building_name)
      end

      def answer_street_question
        respondents_details_page.street_question.set(@respondent.street_name)
      end

      def answer_town_question
        respondents_details_page.town_question.set(@respondent.town)
      end

      def answer_county_question
        respondents_details_page.county_question.set(@respondent.county)
      end

      def answer_postcode_question
        respondents_details_page.postcode_question.set(@respondent.postcode)
      end

      def answer_dx_number_question
        respondents_details_page.dx_number_question.set(@respondent.dx_number)
      end

      def answer_contact_number_question
        respondents_details_page.contact_number_question.set(@respondent.contact_number)
      end

      def answer_contact_mobile_number_question
        respondents_details_page.contact_mobile_number_question.set(@respondent.contact_mobile_number)
      end

      def answer_contact_preference_question
        respondents_details_page.contact_preference_question.set_for(@respondent)
      end

      def answer_organisation_employ_gb_question
        respondents_details_page.organisation_employ_gb_question.set(@respondent.organisation_employ_gb)
      end

      def answer_organisation_more_than_one_site_question
        respondents_details_page.organisation_more_than_one_site_question.set_for(@respondent)
      end

      # Claimant's Details Page
      def answer_claimants_name_question
        claimants_details_page.claimants_name_question.set(@claimant.claimants_name)
      end

      def answer_agree_with_early_conciliation_details_question
        claimants_details_page.agree_with_early_conciliation_details_question.set_for(@claimant)
      end

      def answer_agree_with_employment_dates_question
        claimants_details_page.agree_with_employment_dates_question.set_for(@claimant)
      end

      def answer_continued_employment_question
        claimants_details_page.continued_employment_question.set_for(@claimant)
      end

      def answer_agree_with_claimants_description_of_job_or_title_question
        claimants_details_page.agree_with_claimants_description_of_job_or_title_question.set_for(@claimant)
      end

      # Earnings and Benefits Page
      def answer_agree_with_claimants_hours_question
        earnings_and_benefits_page.agree_with_claimants_hours_question.set_for(@claimant)
      end

      def answer_agree_with_earnings_details_question
        earnings_and_benefits_page.agree_with_earnings_details_question.set_for(@claimant)
      end

      def answer_agree_with_claimant_notice_question
        earnings_and_benefits_page.agree_with_claimant_notice_question.set_for(@claimant)
      end

      def answer_agree_with_claimant_pension_benefits_question
        earnings_and_benefits_page.agree_with_claimant_pension_benefits_question.set_for(@claimant)
      end

      # Response Page
      def answer_defend_claim_question
        response_page.defend_claim_question.set_for(@claimant)
      end

      # Your Representative Page
      def answer_have_representative_question
        your_representative_page.have_representative_question.set_for(@representative)
      end

      # Your Representative's Details Page
      def answer_type_of_representative_question
        your_representatives_details_page.type_of_representative_question.set_for(@representative)
      end

      def answer_representative_org_name_question
        your_representatives_details_page.representative_org_name_question.set(@representative.organisation_name)
      end

      def answer_representative_name_question
        your_representatives_details_page.representative_name_question.set(@representative.name)
      end

      def answer_representative_building_question
        your_representatives_details_page.representative_building_question.set(@representative.building)
      end

      def answer_representative_street_question
        your_representatives_details_page.representative_street_question.set(@representative.street)
      end

      def answer_representative_town_question
        your_representatives_details_page.representative_town_question.set(@representative.locality)
      end

      def answer_representative_county_question
        your_representatives_details_page.representative_county_question.set(@representative.county)
      end

      def answer_representative_postcode_question
        your_representatives_details_page.representative_postcode_question.set(@representative.post_code)
      end

      def answer_representative_phone_question
        your_representatives_details_page.representative_phone_question.set(@representative.phone)
      end

      def answer_representative_mobile_question
        your_representatives_details_page.representative_mobile_question.set(@representative.mobile)
      end

      def answer_representative_dx_number_question
        your_representatives_details_page.representative_dx_number_question.set(@representative.dx_number)
      end

      def answer_representative_reference_question
        your_representatives_details_page.representative_reference_question.set(@representative.representative_reference)
      end

      def answer_representative_contact_preference_question
        your_representatives_details_page.representative_contact_preference_question.set_for(@representative)
      end

      # Disability Page
      def answer_disability_question
        disability_page.disability_question.set_for(@respondent)
      end

      # Employers Contract Claim Page
      def answer_make_employer_contract_claim_question
        employers_contract_claim_page.make_employer_contract_claim_question.set_for(@respondent)
      end

      # Additional Information Page
      def answer_upload_additional_information_question
        additional_information_page.attach_additional_information_file(@respondent)
      end

      # Confirmation of Supplied Details Page
      def answer_email_receipt_question
        confirmation_of_supplied_details_page.email_receipt_question.set(@respondent.email_receipt)
      end

      # Entire Form
      def answer_all_questions # rubocop:disable Metrics/MethodLength
        start_page.load(locale: current_locale_parameter)
        start_page.next

        answer_case_number_question
        answer_name_question
        answer_contact_question
        answer_building_name_question
        answer_street_question
        answer_town_question
        answer_county_question
        answer_postcode_question
        answer_dx_number_question
        answer_contact_number_question
        answer_contact_mobile_number_question
        answer_contact_preference_question
        answer_organisation_more_than_one_site_question
        answer_organisation_employ_gb_question
        respondents_details_page.next

        answer_claimants_name_question
        answer_agree_with_early_conciliation_details_question
        answer_agree_with_employment_dates_question
        answer_continued_employment_question
        answer_agree_with_claimants_description_of_job_or_title_question

        claimants_details_page.next

        answer_agree_with_claimants_hours_question
        answer_agree_with_earnings_details_question
        answer_agree_with_claimant_notice_question
        answer_agree_with_claimant_pension_benefits_question

        earnings_and_benefits_page.next

        answer_defend_claim_question

        response_page.next

        answer_have_representative_question

        your_representative_page.next

        answer_type_of_representative_question
        answer_representative_org_name_question
        answer_representative_name_question
        answer_representative_building_question
        answer_representative_street_question
        answer_representative_town_question
        answer_representative_county_question
        answer_representative_postcode_question
        answer_representative_phone_question
        answer_representative_mobile_question
        answer_representative_dx_number_question
        answer_representative_reference_question
        answer_representative_contact_preference_question

        your_representatives_details_page.next

        answer_disability_question

        disability_page.next

        answer_make_employer_contract_claim_question

        employers_contract_claim_page.next

        answer_upload_additional_information_question

        additional_information_page.next

        answer_email_receipt_question
      end

      # Stub Submission Calls to API
      def stub_et_api # rubocop:disable Metrics/MethodLength
        stub_request(:post, "#{ENV.fetch('ET_API_URL', 'http://api.et.127.0.0.1.nip.io:3100/api')}/v2/respondents/build_response").
          with(headers: { 'Content-Type': 'application/json', 'Accept': 'application/json' }).
          to_return(
            headers: { 'Content-Type': 'application/json' },
            body:
              {
                "meta": {
                  "BuildResponse": {
                    "reference": "142000000100",
                    "submitted_at": "2018-01-13 14:00",
                    "pdf_url": "http://#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}/",
                    "office_address": "Alexandra House, 14-22 The Parsonage, Manchester, M3 2JA",
                    "office_phone_number": "0161 833 6100"
                  }
                }
              }.to_json,
            status: 202
          )
      end

      # Stub Submission Calls to API using Rack mounted PDF Download URL
      def stub_submission_with_custom_pdf_download_link # rubocop:disable Metrics/MethodLength
        stub_request(:post, "#{ENV.fetch('ET_API_URL', 'http://api.et.127.0.0.1.nip.io:3100/api')}/v2/respondents/build_response").
          with(headers: { 'Content-Type': 'application/json', 'Accept': 'application/json' }).
          to_return(
            headers: { 'Content-Type': 'application/json' },
            body:
              {
                "meta": {
                  "BuildResponse": {
                    "reference": "142000000100",
                    "submitted_at": "2018-01-13 14:00",
                    "pdf_url": "http://#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}/test/pdf-download",
                    "office_address": "Alexandra House, 14-22 The Parsonage, Manchester, M3 2JA",
                    "office_phone_number": "0161 833 6100"
                  }
                }
              }.to_json,
            status: 202
          )
      end

      # Stub Calls to API for S3 URLs
      def stub_presigned_url_api_for_s3
        aws_response = Aws::S3::Bucket.new(client: configured_test_client, name: ENV.fetch('S3_DIRECT_UPLOAD_BUCKET', 'et3directbuckettest')).
                       presigned_post(key: "direct_uploads/#{SecureRandom.uuid}", success_action_status: '201')
        stub_request(:post, "#{ENV.fetch('ET_API_URL', 'http://api.et.127.0.0.1.nip.io:3100/api')}/v2/s3/create_signed_url").
          to_return(
            headers: { 'Content-Type': 'application/json' },
            body:
              {
                "data": {
                  "fields": aws_response.fields,
                  "url": aws_response.url
                },
                "status": "accepted",
                "uuid": SecureRandom.uuid
              }.to_json
          )
      end

    end
  end
end
