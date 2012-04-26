module Screenplay

  def self.pp_data(pp_name, pp_config = nil)
    pp_config ||= "# module :: #{pp_name.split(/::/).join(' > ')}"
    return <<-PP_DATA
class #{pp_name} {
  #{pp_config}
}
      PP_DATA
  end

  def self.create_pp(fylname, fyldata = nil)
    fyldata ||= pp_data
    File.open(fylname, 'w') {|fyl| fyl.write(fyldata) }
  end
end
