defmodule VerificaNumero do

	def par(n, divisor, primo) do
		if(divisor >= 1) do
			if(rem(n, divisor) == 0) do
				primo = primo + 1
				par(n, divisor-1, primo)
			else
				par(n,divisor-1, primo)
			end
		else
			primo
		end
	end

	def primo(n) do
		divisor = n
	  	primo = 0	
	  	primo = par(n, divisor, primo)
	  	if(primo == 2) do
	  		true
	  	else
	  		false
	  	end
	  end 
end   

x = 3
saida = VerificaNumero.primo(x)
IO.puts(x)

if(saida == true) do
    IO.puts("É primo.")
else
	  IO.puts("Não é primo.")
end

