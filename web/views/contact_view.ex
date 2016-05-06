defmodule HelloPhoenix.ContactView do
  use HelloPhoenix.Web, :view

  def render("index.json", %{contacts: contacts}) do
    render_many(contacts, HelloPhoenix.ContactView, "contact.json")
  end

  def render("contact.json", %{contact: contact}) do
    %{id: contact.id,
      name: contact.name,
      phone: contact.phone}
  end
end
