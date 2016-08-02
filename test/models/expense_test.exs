defmodule Wallet.ExpenseTest do
  use Wallet.ModelCase

  alias Wallet.Expense

  @valid_attrs %{
    amount: "120.5",
    date: %{day: 17, month: 4, year: 2010},
    description: "some content"
  }
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Expense.changeset(%Expense{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Expense.changeset(%Expense{}, @invalid_attrs)
    refute changeset.valid?
  end
end
