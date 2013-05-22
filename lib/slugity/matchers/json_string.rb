Slugity::Matchers.add :json_string, false, {
  /\\/ => '\\\\\\\\', # barf
  /"/ => '\"'
}