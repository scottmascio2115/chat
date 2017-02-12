defmodule Chat.Repo.Migrations.CreateMessage do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :topic, :string
      add :user, :string
      add :body, :text

      timestamps()
    end

  end
end
