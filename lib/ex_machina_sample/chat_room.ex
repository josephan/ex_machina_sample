defmodule ExMachinaSample.ChatRoom do
  use Ecto.Schema
  import Ecto.Changeset
  alias ExMachinaSample.ChatMembership

  schema "chat_rooms" do
    field :name, :string

    has_many :chat_memberships, ChatMembership

    timestamps()
  end

  @doc false
  def changeset(chat_room, attrs) do
    chat_room
    |> cast(attrs, [])
    |> validate_required([])
  end
end
