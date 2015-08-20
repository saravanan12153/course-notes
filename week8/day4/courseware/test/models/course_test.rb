require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  should belong_to(:author)

  should validate_presence_of :price
  should validate_presence_of :author

  # test "video courses" do
  #   user = User.create!(
  #           email: "whatever@whatever.com",
  #           :password => "playground",
  #           :password_confirmation => "playground"
  #           )
  #   course = VideoCourse.save!(
  #             :price => 50,
  #             :author => user,
  #             :number_of_segments => 12
  #           )
  #   assert_equal 12, course.number_of_segments
  # end

end
