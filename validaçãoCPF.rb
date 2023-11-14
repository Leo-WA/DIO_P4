require 'cpf_cnpj'

def validar_cpf(cpf)
  if CPF.valid?(cpf)
    puts "O CPF #{cpf} é válido."
  else
    puts "O CPF #{cpf} é inválido."
  end
end

def solicitar_cpf
  loop do
    begin
      puts "Digite seu CPF para validação:"
      cpf_usuario = gets.chomp
      if cpf_usuario.match(/^\d{11}$/) 
        return cpf_usuario
      else
        raise "Formato de CPF inválido."
      end
    rescue => e
      puts e.message
    end
  end
end

cpf_usuario = solicitar_cpf
validar_cpf(cpf_usuario)
