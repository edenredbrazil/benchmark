defmodule ElixirApi.HelloTest do
  use ElixirApi.ModelCase

  alias ElixirApi.Hello

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Hello.changeset(%Hello{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Hello.changeset(%Hello{}, @invalid_attrs)
    refute changeset.valid?
  end
end
