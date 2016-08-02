defmodule Wallet.Repo.Migrations.CreateExpense do
  use Ecto.Migration

  def change do
    create table(:expenses) do
      add :amount, :decimal
      add :date, :date
      add :description, :string

      timestamps()
    end

  end
end
