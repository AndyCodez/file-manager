require 'test_helper'

class FolderTest < ActiveSupport::TestCase

  def setup
  	@folder = Folder.new(name: "Valid folder")
  end

  test "should be valid" do
    assert @folder.valid?
  end

  test "name must be present" do
  	@folder.name = " "
    assert_not @folder.valid?
  end  
end
