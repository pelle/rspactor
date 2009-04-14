class RSpactorFormatter
  attr_accessor :example_group, :options, :where
  def initialize(options, where)
    @options = options
    @where = where
  end
  
  def dump_summary(duration, example_count, failure_count, pending_count)
    img = (failure_count == 0) ? "rails_ok.png" : "rails_fail.png"
    growl "Test Results", "#{example_count} examples, #{failure_count} failures", File.dirname(__FILE__) + "/../asset/#{img}", 0
  end

  def start(*ignore_these)
  end

  def add_example_group(*ignore_these)
  end

  def example_started(*ignore_these)
  end

  def example_passed(*ignore_these)
  end

  def example_failed(*ignore_these)
  end
  
  def example_pending( *ignore_these) 
  end

  def start_dump
  end

  def dump_failure(*ignore_these)
  end

  def dump_pending
  end
  
  def example_group_started(*ignore_these)
  end

  def close
  end
  
  def growl(title, msg, img, pri = 0)
    system("growlnotify -w -n rspactor --image #{img} -p #{pri} -m #{msg.inspect} #{title} &") 
  end
end

