f [ $RAILS_ENV != "production" ]; then
    echo "Skip in daocloud.io's build server" 1>&2
    exit 0
fi
bundle exec rake db:migrate

pumactl -F config/puma.rb start

