defmodule ExMachinaSample.SampleTest do
  use ExMachinaSample.DataCase, async: true
  import ExMachinaSample.Factory

  alias ExMachinaSample.ChatMembership

  test "this test fails" do
    chat_room = insert(:chat_room)

    insert_list(
      20,
      :chat_membership,
      chat_room: chat_room,
      user: build(:user)
    )

    assert Repo.aggregate(ChatMembership, :count, :id) == 20
  end

  test "this test passes" do
    chat_room = insert(:chat_room)

    users = build_list(20, :user)

    Enum.each(users, fn user ->
      insert(:chat_membership, user: user, chat_room: chat_room)
    end)

    assert Repo.aggregate(ChatMembership, :count, :id) == 20
  end
end
