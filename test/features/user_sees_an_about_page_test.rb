require_relative '../test_helper'

class AboutPageTest < CapybaraTestCase

  def test_user_can_navigate_to_about_page
    visit '/'
    click_on 'About'

    assert page.has_content?("About Me!")
    assert_equal 200, page.status_code
  end
end
