require 'spec_helper'
describe 'testing a correct path for sparta registration' do
  context 'it should respond with confirmation on successful completion' do
    it 'should show the correct confirmation on completion' do
      @sparta_demo_site = SpartaDemoSite.new.registration_page
      @sparta_demo_site.visit_registration_page
      @sparta_demo_site.fill_in_firstname_field('Bob')
      @sparta_demo_site.fill_in_lastname_field('Hendricks')
      @sparta_demo_site.fill_in_age_field(4)
      @sparta_demo_site.fill_in_date_field('24/12/2018')
      @sparta_demo_site.fill_in_gender(0)
      @sparta_demo_site.fill_in_degree('Software Engineering')
      @sparta_demo_site.fill_in_university_field('University of Oxford')
      @sparta_demo_site.fill_in_address_field('Teignmouth')
      @sparta_demo_site.fill_in_address2_field('Teignmouth2')
      @sparta_demo_site.fill_in_city_field('London')
      @sparta_demo_site.fill_in_county_field('South Yorkshire')
      @sparta_demo_site.fill_in_postcode_field('SW4 7BI')
      @sparta_demo_site.fill_in_email_field('ian@ian.ian')
      @sparta_demo_site.fill_in_textarea_field('Here are some skills: I have one million dance studios')
      @sparta_demo_site.fill_in_phonenumber_field('00000000000')
      @sparta_demo_site.fill_in_linkedin_field('bobbyRayJunior')
      sleep 10
    end
  end
end