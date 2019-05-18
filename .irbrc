IRB.conf[:BACK_TRACE_LIMIT] = 100

class Object

  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end

begin
  require 'ap'
rescue LoadError
end

require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 200000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
