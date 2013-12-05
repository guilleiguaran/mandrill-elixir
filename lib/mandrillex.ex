defmodule Mandrillex do
  @moduledoc """
  An HTTP client for Mandrill.
  """

  # Let's build on top of HTTPoison
  use HTTPoison.Base

  @doc """
  Creates the URL for our endpoint.
  Args:
    * endpoint - part of the API we're hitting
  Returns string
  """
  def process_url(enpoint) do
    "https://mandrillapp.com/api/1.0/" <> enpoint <> ".json"
  end

  @doc """
  Converts the binary keys in our response to atoms.
  Args:
    * body - string binary response
  Returns Record or ArgumentError
  """
  def process_response_body(body) do
    JSEX.decode!(body, [{:labels, :atom}])
  end
end
