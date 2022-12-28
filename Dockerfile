FROM ruby:3.2.0-bullseye

WORKDIR /usr/src/app

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]

