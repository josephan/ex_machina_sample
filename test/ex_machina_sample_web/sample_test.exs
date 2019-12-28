defmodule ExMachinaSample.SampleTest do
  use ExMachinaSample.DataCase, async: true
  import ExMachinaSample.Factory

  test "sample test" do
    chat_room = insert(:chat_room)

    insert_list(
      20,
      :chat_membership,
      chat_room: chat_room,
      user: build(:user)
    )

    require IEx
    IEx.pry()
  end
end
