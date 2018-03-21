require 'rails_helper'

RSpec.describe ClaimantsDetail, type: :model do

  context 'when correctly populated' do

    it 'with claimant name only' do
      claimant_detail = described_class.new(claimants_name: 'jane')

      expect(claimant_detail.claimants_name).to eql 'jane'
    end

    it 'agree with early conciliation details only' do
      claimant_detail = described_class.new(agree_with_early_conciliation_details: true)

      expect(claimant_detail.agree_with_early_conciliation_details).to be true
    end

    it 'with disagree conciliation reason only' do
      claimant_detail = described_class.new(disagree_conciliation_reason: 'lorem ipsum conciliation')

      expect(claimant_detail.disagree_conciliation_reason).to eql 'lorem ipsum conciliation'
    end

    it 'agree with employment dates only' do
      claimant_detail = described_class.new(agree_with_employment_dates: false)

      expect(claimant_detail.agree_with_employment_dates).to be false
    end

    it 'with employment start date only' do
      claimant_detail = described_class.new(employment_start: '01/01/2017')

      expect(claimant_detail.employment_start.strftime('%d/%m/%Y')).to eql '01/01/2017'
    end

    it 'with employment end date only' do
      claimant_detail = described_class.new(employment_end: '31/12/2017')

      expect(claimant_detail.employment_end.strftime('%d/%m/%Y')).to eql '31/12/2017'
    end

    it 'with disagree employment reason only' do
      claimant_detail = described_class.new(disagree_employment: 'lorem ipsum employment')

      expect(claimant_detail.disagree_employment).to eql 'lorem ipsum employment'
    end

    it 'with continued employment only' do
      claimant_detail = described_class.new(continued_employment: false)

      expect(claimant_detail.continued_employment).to be false
    end

    it 'agree with claimants description of job or title only' do
      claimant_detail = described_class.new(agree_with_claimants_description_of_job_or_title: false)

      expect(claimant_detail.agree_with_claimants_description_of_job_or_title).to be false
    end

    it 'with disagree claimants job or title reason only' do
      claimant_detail = described_class.new(disagree_claimants_job_or_title: 'lorem ipsum job title')

      expect(claimant_detail.disagree_claimants_job_or_title).to eql 'lorem ipsum job title'
    end
  end

  describe ".to_h " do
    it "will take two strings and convert them into a hash" do
      claimant_detail = described_class.new(claimants_name: 'jane')

      expect(claimant_detail.to_h).to be_a(Hash)
    end

    it 'will return the claimants_name key and value pair' do
      claimant_detail = described_class.new(claimants_name: 'jane')

      expect(claimant_detail.to_h).to include(claimants_name: 'jane')
    end

    it 'will return the agree_with_early_conciliation_details key and value pair' do
      claimant_detail = described_class.new(agree_with_early_conciliation_details: false)

      expect(claimant_detail.to_h).to include(agree_with_early_conciliation_details: false)
    end

    it 'will return the disagree_conciliation_reason key and value pair' do
      claimant_detail = described_class.new(disagree_conciliation_reason: 'lorem ipsum conciliation')

      expect(claimant_detail.to_h).to include(disagree_conciliation_reason: 'lorem ipsum conciliation')
    end

    it 'will return the agree_with_employment_dates key and value pair' do
      claimant_detail = described_class.new(agree_with_employment_dates: false)

      expect(claimant_detail.to_h).to include(agree_with_employment_dates: false)
    end

    it 'will return the employment_start key and value pair' do
      claimant_detail = described_class.new(employment_start: '01/01/2017')

      expect(claimant_detail.to_h[:employment_start].strftime('%d/%m/%Y')).to eql '01/01/2017'
    end

    it 'will return the employment_start value as a Date' do
      claimant_detail = described_class.new(employment_start: '01/01/2017')

      expect(claimant_detail.to_h[:employment_start]).to be_a(Date)
    end

    it 'will return the employment_end key and value pair' do
      claimant_detail = described_class.new(employment_end: '31/12/2017')

      expect(claimant_detail.to_h[:employment_end].strftime('%d/%m/%Y')).to eql '31/12/2017'
    end
    it 'will return the employment_end value as a Date' do
      claimant_detail = described_class.new(employment_end: '31/12/2017')

      expect(claimant_detail.to_h[:employment_end]).to be_a(Date)
    end

    it 'will return the disagree_employment key and value pair' do
      claimant_detail = described_class.new(disagree_employment: 'lorem ipsum employment')

      expect(claimant_detail.to_h).to include(disagree_employment: 'lorem ipsum employment')
    end

    it 'will return the continued_employment key and value pair' do
      claimant_detail = described_class.new(continued_employment: false)

      expect(claimant_detail.to_h).to include(continued_employment: false)
    end

    it 'will return the agree_with_claimants_description_of_job_or_title key and value pair' do
      claimant_detail = described_class.new(agree_with_claimants_description_of_job_or_title: false)

      expect(claimant_detail.to_h).to include(agree_with_claimants_description_of_job_or_title: false)
    end

    it 'will return the disagree_claimants_job_or_title key and value pair' do
      claimant_detail = described_class.new(disagree_claimants_job_or_title: 'lorem ipsum job title')

      expect(claimant_detail.to_h).to include(disagree_claimants_job_or_title: 'lorem ipsum job title')
    end

  end
end
