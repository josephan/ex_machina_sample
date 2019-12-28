defmodule ExMachinaSample.ChatMembership do
  use Ecto.Schema
  import Ecto.Changeset
  alias ExMachinaSample.{ChatRoom, User}

  schema "chat_memberships" do
    belongs_to :user, User
    belongs_to :chat_room, ChatRoom

    timestamps()
  end

  @doc false
  def changeset(chat_membership, attrs) do
    chat_membership
    |> cast(attrs, [])
    |> validate_required([])
  end
end
