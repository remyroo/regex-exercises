class PhoneNumberFormatter
  REGEX = /(?<country_code>\+1)?.*(?<area_code>\d{3}).*(?<exchange>\d{3}).*(?<subscriber>\d{4})/

  def initialize(number)
    @number = number
  end

  def format_number
    @number.gsub(REGEX, '\k<country_code> (\k<area_code>) \k<exchange>-\k<subscriber>').strip
  end
end
