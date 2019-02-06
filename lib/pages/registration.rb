require 'capybara/dsl'
# tcp://localhost:9292
class Registration
  include Capybara::DSL
  
  # page objects
  REGISTRATION_PAGE_URL = 'localhost:9292'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  DATE_FIELD_NAME = 'dob'
  SEX_FIELD_ID = 'customRadioInline1'
  AGE_FIELD_XPATH = '/html/body/div/form/div[3]/div/input'
  GENDER_XPATH = '/html/body/div/form/div[5]'
  DEGREE_XPATH = '/html/body/div/form/div[7]/div/input'
  UNIVERSITY_FIELD_NAME = 'inputUni'
  ADRESS_ID_NAME = 'inputAddress'
  ADRESS2_ID_NAME = 'inputAddress2'
  CITY_ID_NAME = 'inputCity'
  COUNTY_ID_NAME = 'inputCounty'
  POSTCODE_ID_NAME = 'inputPostcode'
  EMAIL_ID_NAME = 'inputemailaddress'
  SKILLS_ID_NAME = 'exampleFormControlTextarea1'
  PHONENUMBER_ID_NAME = 'exampleFormControlInput1'
  LINKEDIN_XPATH = '/html/body/div/form/div[17]/div/input'
  UPLOAD_CV_FIELD_NAME = 'cv'


  def visit_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def fill_in_firstname_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_lastname_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end
 
  def fill_in_age_field(age)
    find(:xpath, AGE_FIELD_XPATH).set(age)
  end

  def fill_in_date_field(date)
    fill_in(DATE_FIELD_NAME, :with => date)
  end

  def fill_in_gender(number)
    find(:xpath, GENDER_XPATH).click
  end
  
  def fill_in_degree(degree)
    find(:xpath, DEGREE_XPATH).set(degree)
  end

  def fill_in_university_field(university)
    select university, :from => UNIVERSITY_FIELD_NAME
  end

  def fill_in_address_field(address)
    fill_in(ADRESS_ID_NAME, :with => address)
  end

  def fill_in_address2_field(address2)
    fill_in(ADRESS2_ID_NAME, :with => address2)
  end

  def fill_in_city_field(city)
    fill_in(CITY_ID_NAME, :with => city)
  end
  
  def fill_in_county_field(county)
    select county, :from => COUNTY_ID_NAME
  end

  def fill_in_postcode_field(postcode)
    fill_in(POSTCODE_ID_NAME, :with => postcode)
  end

  def fill_in_email_field(email)
    fill_in(EMAIL_ID_NAME, :with => email)
  end

  def fill_in_textarea_field(textarea)
    fill_in(SKILLS_ID_NAME, :with => textarea)
  end

  def fill_in_phonenumber_field(phonenumber)
    fill_in(PHONENUMBER_ID_NAME, :with => phonenumber)
  end
  def fill_in_linkedin_field(linkedin)
     find(:xpath, LINKEDIN_XPATH).set(linkedin)
  end
  # def fill_in_uploadcv_field
  #   attach_file(UPLOAD_CV_FIELD_NAME, 'lib/random_pic.jpg')
  # end
end