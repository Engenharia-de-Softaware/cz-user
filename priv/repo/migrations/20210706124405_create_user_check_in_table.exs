defmodule CzUser.Repo.Migrations.CreateUserCheckInTable do
  use Ecto.Migration

  def change do

    create table :user_check_ins do
      add :user_id, :string
      add :latitude, :string
      add :longitude, :string

      # timestamps()
    end
  end
end
