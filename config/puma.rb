threads 0, 12
workers 2
environment 'production'
pidfile 'tmp/unicornext.pid'
state_path 'tmp/unicornext.state'
daemonize false
bind 'tcp://0.0.0.0:8001'
preload_app!

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
