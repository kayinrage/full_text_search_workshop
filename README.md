## Description

This is the application used for "Full-text search with Rails and PostgreSQL" workshops conducted at Selleo on 13.07.2021.
You can find the presentation and exercises in
[here](https://docs.google.com/presentation/d/10DeUZRd38nOVtiawHmwXZvm3dLFq_y6MK7bvBEJI7d8/edit#slide=id.g2f740742ff_0_0).

## Setup

This app is using ruby (3.0.1), rails (6.1.4) and postgres (11 and above).

After clone this repository please make sure that you reset code to version:

```
git reset --hard ca8513d
```

As usual you have to create `database.yml` and then setup database with
```
rails db:create
rails db:migrate
rails db:seed
```

Don't forget to run `yarn install`.

When you run specs you should have 3 failures. Your goal is to make all specs pass by performing those
[exercises](https://docs.google.com/presentation/d/10DeUZRd38nOVtiawHmwXZvm3dLFq_y6MK7bvBEJI7d8/edit#slide=id.g2f740742ff_0_1380).
