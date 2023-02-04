defmodule Adivinha do
  use Application

  def start(_,_) do
    run()
    {:ok, self()}
  end  
  
  def run() do
    IO.puts("Vamos jogar")
  end  
end

Adivinha.run

'''
def applications do
  [
    extra application: [:logger],
    mod: {Adivinha, []}
  ]
end
'''
