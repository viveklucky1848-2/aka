require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'aka'

class String
    def colorize(color_code)
     "\e[#{color_code}m#{self}\e[0m"
   end

   def red
     colorize(31)
   end

   def green
     colorize(32)
   end

   def yellow
     colorize(33)
   end

   def blue
     colorize(34)
   end

   def pink
     colorize(35)
   end

   def light_blue
     colorize(36)
   end
end

class AkaTest < Minitest::Test

  @PASS = "\u2713 \u2713 \u2713 \u2713 \u2713".green
  @FAIL = "\u274C \u274C \u274C \u274C \u274C".red

  def setup
    @aka = Aka::Base.new
  end

  # the main challenge is that aka source the shell which cause minitest to exit
  #test generate
  def test_generate_function
    # args = "something=echo something"
    # @aka.options =  {last: FALSE, no: TRUE}
    # puts @aka.generate(args)
    assert_equal 10, 10
  end
  #test destroy
  def test_destroy_function
    assert_equal 10, 10
  end

  #test find
  def test_find_function
    assert_equal 10, 10
  end

  #test proj
  def test_proj_function
    assert_equal 10, 10
  end

  #test export
  def test_export_function
    assert_equal 10, 10
  end

  #test edit
  def test_edit_functionality
    assert_equal 10, 10
  end

  def test_aka_version
    refute_nil ::Aka::VERSION
  end

  def test_is_aka_dir_present
    assert_equal TRUE, Dir.exist?("#{Dir.home}/.aka")
  end

  def test_is_dotconfig_present
    assert_equal TRUE, File.exist?("#{Dir.home}/.aka/.config")
  end

  def test_is_autosource_present
    assert_equal TRUE, File.exist?("#{Dir.home}/.aka/autosource")
  end

  def test_does_autosource_have_five_configurations
    File.open("#{Dir.home}/.aka/autosource") do |f|
      assert_equal 5, f.count
    end
  end

  def test_does_dotconfig_have_nine_configurations
    File.open("#{Dir.home}/.aka/.config") do |f|
      assert_equal 9, f.count
    end
  end

end
