defmodule HelloPhoenix.Contact do
  use HelloPhoenix.Web, :model

  @derive {Poison.Encoder, only: [:id, :name, :phone]}

  schema "contacts" do
    field :name, :string
    field :phone, :string

    timestamps
  end
end
