module Slugity

  def slugity string
    string.downcase.gsub(/\s|\//, '-').gsub(/\.|\'|\"|\<|\>|,|\(|\)|\:/,'').gsub(/\&/,'and').gsub(/\+/,'plus').gsub(/\=/,'equals')
  end

end