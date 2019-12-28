defmodule ExMachinaSample.Repo.Migrations.CreateChatMemberships do
  use Ecto.Migration

  def change do
    create table(:chat_memberships) do
      add :user_id, references(:users, on_delete: :nothing)
      add :chat_room_id, references(:chat_rooms, on_delete: :nothing)

      timestamps()
    end

    create index(:chat_memberships, [:user_id])
    create index(:chat_memberships, [:chat_room_id])
  end
end
