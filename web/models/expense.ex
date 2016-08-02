defmodule Wallet.Expense do
  use Wallet.Web, :model

  schema "expenses" do
    field :amount, :decimal
    field :date, Ecto.Date
    field :description, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:amount, :date, :description])
    |> validate_required([:amount, :date, :description])
  end
end
