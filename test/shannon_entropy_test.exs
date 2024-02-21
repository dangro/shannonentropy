defmodule ShannonEntropyTest do
  use ExUnit.Case
  doctest ShannonEntropy

  test "verify computation" do
    assert ShannonEntropy.calc("sqJvRnGQnYauCkcpyH_I") == 4.221928094887362
    assert ShannonEntropy.calc("yFnPNM`MZMI`iDUTvaBYl]pExqROFF") == 4.5232314287976205
  end
end
