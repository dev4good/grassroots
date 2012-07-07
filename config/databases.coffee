module.exports =
  mongodb:
    development:
      name: "grassroots-development"
      port: 27017
      host: "127.0.0.1"
    test:
      name: "grassroots-test"
      port: 27017
      host: "127.0.0.1"
    staging:
      name: "grassroots-staging"
      port: 27017
      host: "127.0.0.1"
    production:
      name: "grassroots-production"
      port: 27017
      host: "127.0.0.1"

  redis:
    development:
      name: "grassroots-development"
      port: 6397
      host: "127.0.0.1"
    test:
      name: "grassroots-test"
      port: 6397
      host: "127.0.0.1"
    staging:
      name: "grassroots-staging"
      port: 6397
      host: "127.0.0.1"
    production:
      name: "grassroots-production"
      port: 6397
      host: "127.0.0.1"
