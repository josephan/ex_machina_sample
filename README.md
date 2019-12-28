#### Sample repo to demonstrate the issue outlined here: https://github.com/thoughtbot/ex_machina/issues/373

#### Setup and run test:
* `git clone git@github.com:josephan/ex_machina_sample.git`
* `cd ex_machine_sample`
* `mix deps.get`
* `mix test test/ex_machina_sample_web/sample_test.exs`

#### Project Info:

Bare bones phoenix app with the following tables:
* `chat_rooms` - [chat_rooms.ex](https://github.com/josephan/ex_machina_sample/blob/master/lib/ex_machina_sample/chat_room.ex)
* `chat_memberships` - [chat_memberships.ex](https://github.com/josephan/ex_machina_sample/blob/master/lib/ex_machina_sample/chat_membership.ex)
* `users` - [users.ex](https://github.com/josephan/ex_machina_sample/blob/master/lib/ex_machina_sample/user.ex)

Test File: https://github.com/josephan/ex_machina_sample/blob/master/test/ex_machina_sample_web/sample_test.exs

Factory File: https://github.com/josephan/ex_machina_sample/blob/master/test/support/factory.ex
