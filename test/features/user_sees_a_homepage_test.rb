require './test/test_helper'

class HomepageTest < CapybaraTestCase

  def test_user_sees_a_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

end
