defmodule Shipstation.FulfillmentTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  doctest Shipstation.Fulfillment

  setup_all do
    HTTPoison.start
  end

  test "List without parameters" do
    use_cassette "fulfillments_list" do
      {:ok, %{body: body}} = resp = Shipstation.Fulfillment.list()
      assert {:ok, %{status_code: 200}} = resp

      all = fn :get, data, next -> Enum.map(data, next) end
      assert get_in(body, ["fulfillments", all, "fulfillmentId"]) |> Enum.sort == [246310, 33974374]
    end
  end

  @doc ~s"""
  TODO: Ask for better example here
  """
  test "List with parameters" do
    use_cassette "fulfillments_list_with_params" do
      filter = %Shipstation.Filters.Fulfillment{}
      {:ok, %{body: body}} = resp = Shipstation.Fulfillment.list(filter)
      assert {:ok, %{status_code: 200}} = resp

      all = fn :get, data, next -> Enum.map(data, next) end
      assert get_in(body, ["fulfillments", all, "fulfillmentId"]) |> Enum.sort == [246310, 33974374]
    end
  end

end