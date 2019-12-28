defmodule ExMachinaSample.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias ExMachinaSample.ChatMembership

  schema "users" do
    field :email, :string
    field :name, :string

    has_many :chat_memberships, ChatMembership

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email])
    |> validate_required([:email])
  end
end
