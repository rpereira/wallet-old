defmodule Wallet.Router do
  use Wallet.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Wallet do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    resources "/expenses", ExpenseController
  end
end
