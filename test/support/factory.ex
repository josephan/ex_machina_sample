defmodule ExMachinaSample.Factory do
  # with Ecto
  use ExMachina.Ecto, repo: ExMachinaSample.Repo

  def user_factory do
    %ExMachinaSample.User{
      name: sequence(:name, &"User #{&1}"),
      email: sequence(:email, &"email-#{&1}@example.com")
    }
  end

  def chat_room_factory do
    %ExMachinaSample.ChatRoom{
      name: "random"
    }
  end

  def chat_membership_factory do
    %ExMachinaSample.ChatMembership{
      chat_room: build(:chat_room),
      user: build(:user)
    }
  end
end
