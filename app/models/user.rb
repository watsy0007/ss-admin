class User < ActiveRecord::Base
  self.table_name = 'user'
  self.inheritance_column = 'not_sti'

  def last_ss_time
    Time.at(self.t)
  end

  def traffic_usage_percent
    ((self.u + self.d) / self.transfer_enable).round(2)
  end

  def used_traffic

  end

  def ununsed_traffic

  end

  def total_traffic
    self.transfer_enable
  end
end
