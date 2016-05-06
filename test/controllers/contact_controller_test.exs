defmodule HelloPhoenix.ContactControllerTest do
  use HelloPhoenix.ConnCase

  alias HelloPhoenix.Contact

  test "index returns 200" do
    response = get conn, "/api/contacts"
    assert response.status == 200
  end

  test "index returns all contacts" do
    contact = %Contact{name: "Gumbo", phone: "(801) 555-5555"}
      |> Repo.insert

    contacts_as_json = Repo.all(Contact)
      |> Poison.encode!

    response = get conn, "/api/contacts"
    assert response.resp_body == contacts_as_json
  end
end
