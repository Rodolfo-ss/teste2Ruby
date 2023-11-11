
#Questao 1 - Escreva um metodo inteiro x que retone um inteiro y



def self.divisiveis(num1, num2)
    div_num1 = Array.new
    div_num2 = Array.new
    div_pelos2 = Array.new

    for i in 1..49
        i += 1
        if i % num1 == 0
            div_num1.push (i)
        elsif i % num2 == 0
            div_num2.push (i)
        if (i % num1 == 0) && (i % num2 == 0) 
            div_pelos2.push (i)
        end
        end
    end
    return div_pelos2, div_num1, div_num2
end
end



#Questao 2 - Faça um sistema web que armazena seus dados.



class User
    attr_accessor :name, :prizes
  
    def initialize(name)
      @name = name
      @prizes = []
    end
  
    def add_prize(prize)
      @prizes << prize
    end
  end
  
  class Prize
    attr_accessor :name, :description
  
    def initialize(name, description)
      @name = name
      @description = description
    end
  end
  
  # Criação de usuários
  user1 = User.new('Jimmy Caller')
  user2 = User.new('Jane Silver')
  
  # Criação de prêmios
  prize1 = Prize.new('Primeiro Lugar', 'Troféu de Ouro')
  prize2 = Prize.new('Segundo Lugar', 'Medalha de Prata')
  prize3 = Prize.new('Terceiro Lugar', 'Certificado de Bronze')
  
  # Atribuição de prêmios aos usuários
  user1.add_prize(prize1)
  user1.add_prize(prize2)
  user2.add_prize(prize3)
  
  # Exibição da lista de usuários e seus prêmios
  puts "Usuário: #{user1.name}"
  puts "Prêmios:"
  user1.prizes.each { |prize| puts "- #{prize.name}: #{prize.description}" }
  
  puts "\nUsuário: #{user2.name}"
  puts "Prêmios:"
  user2.prizes.each { |prize| puts "- #{prize.name}: #{prize.description}" }
  

# show_users


#Questao 3 - Considere um sistema aonde o usuario possui o atributo nome(string), idade(number)inteiro e profissao(string). Faça uma query que retorne todos os nomes de usuarios com idade maior que 18 e profissao programador.


usuarios = [
  {nome: 'Junior', profissao: 'desenvolvedor', idade: 33}
  {nome: 'Lucas', profissao: 'padeiro', idade:22}
  {nome: 'Elliot', profissao: 'pizzaiolo', idade: 45}
  {nome: 'Jamal', profissao: 'boxeador', idade:19}
]


usuarios_check = usuarios.select { |usuario| usuario[:idade] > 18 && usuario[:profissao].downcase.include?('ruby')}


usuarios_check.each do |usuarios|
 puts "Nome: #{usuarios[:nome]}, Profissão: #{usuarios[:profissao]}, idade: #{usuarios[:idade]}"
end 

# Questao 4 - Quais são as vantagens do MVC, model view controller?


vantagens = 'O desenvolvimento de aplicativo se torna rapido, facil para varios desenvolvedores travalharem juntos, mais facil de utilizar o aplicativo e fail de depurar o os niveis corretamente.'



desvantagens = 'É dificil entender a arquitetura MVC, deve ter regras rigidas nos metodos, falta de distribuicao o controlador acaba fazendo o trabalho todo.'












































