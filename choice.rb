loop do

    puts "Escolha o numero da questão de 1 a 12."
    puts "Digite 0 para sair"
    puts "=========================================="

  choice =gets.chomp.to_i
  if choice >12 || choice < 0
    puts "Comando invalido somente"
  end
  puts "=========================================="

  if choice == 1
    puts 'Digite o nome'
    nome = gets.chomp
    puts "========================================="

    puts "Tarefa 1"
    puts "Seu nome: " + nome
    puts "Comprimento do nome:#{(nome.size).to_s} caracteres" 
    puts "========================================="
  end

  if choice == 2
    puts 'Digite o nome'
    name = gets.chomp
    puts "========================================="

    puts "Seu nome: " + name
    reverse = name.reverse
    puts "Tarefa 2"
    puts "Inverso do nome:#{ reverse}" 

    puts "========================================="
  end

  if choice == 3
    puts "Digite o texto que sera dividido ao meio: "
    nome = gets().chomp

    metade = (nome.length/2) 
    puts "Tarefa 3"
    puts nome[0...metade]

    puts "========================================="
  end

  if choice == 4
    date ="20/11/1996"
    result =date.split(//)
    
    total =result.map do | soma | {}
        soma.to_i 
    end
    puts "Tarefa 4"
    puts "A soma dos numeros  do seu aniversário é: #{total.inject(:+)}"

    puts "========================================="
  end

  if choice == 5
    array= Array.new()
    puts "Escolha 10 numeros"
    10.times do
        numbers = gets.chomp.to_i
        array << numbers
    end
    
    first =array.first
    last = array.last
    puts "========================================="
    puts "o resultado entre a soma do primeiro e o ultimo dividido por 2: #{((first + last)/2)}" 
    
    result =array.select{|value|value>10}
    convertResult = result.join(",")
    puts "Tarefa 5"
    puts (convertResult.empty? ? "o Array #{array.join(",")} não possui valores maiores que 10": "O valor #{convertResult} é maior que 10" )

    puts "========================================="
  end

  if choice == 6
    h = {"A"=> 1, "B"=> 2, "C"=> 3 ,"D"=>4}
    puts h
    puts "digite o valor de E:"
    h["E"] = gets.chomp.to_i
    
    puts "========================================="
    puts "Tarefa 6"
    puts   "o valor de  B é:#{h["B"]}"
    puts h
    results = h.each do |key, value|
        if value >=3.5
            puts "a chave #{key} com o #{value}, é maior do que 3.5"
        end
    end

    puts "========================================="
  end

  if choice == 7
    array =[1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
    puts array
    puts "======================"
    result =array.select{|value|value>5}
    puts "Tarefa 7"
    puts result.to_s

    puts "========================================="
  end

  if choice == 8
  array = Array.new()
  loop do
      puts "Digite numeros aleatorios entre 50 e 300, para parar "
      puts"o programa digite 0"
      numbers = gets.chomp.to_i
      array << numbers
      break if(numbers == 0)
    end
    puts "========================================="
    a = array.select{|value| value >100 && value < 200 }
    puts "Tarefa 8"
    puts "Foram encontrados #{a.size} valores "
    puts "maiores do que 100 e menores do que 200"
    puts "========================================="
  end

  if choice == 9
    array= Array.new()
    par= Array.new()
    impar= Array.new()
    puts "Escolha 20 numeros"
    20.times do
        numbers = gets.chomp.to_i
        array << numbers
    end
    
    results = array.each do |operation |
       (operation % 2) == 0  ? par << operation : impar << operation 
    end
    puts "========================================="
    puts "Tarefa 9"
    puts "Array: #{array.to_s}"
    puts "========================================="
    puts "Array par:#{par.to_s}"
    puts "========================================="
    puts "Array impar: #{impar.to_s}"

    puts "========================================="
  end

  if choice == 10
    array= Array.new()
    puts "Escolha 10 numeros"
    
    10.times do
      numbers = gets.chomp.to_i
      array << numbers
    end
    puts "========================================="

    valores = array.sort 
    inverso = valores.reverse

    puts "Tarefa 10"
    puts "O valor em ordem decrescente"
    for valor in inverso
      puts valor.to_s
    end
    puts "========================================="

  end

  if choice == 11
    array1= Array.new()
    array2= Array.new()
    puts "Escolha 10 numeros para array 1"
    10.times do
      numbers = gets.chomp.to_i
      array1 << numbers
    end

    puts "=========================================="
    puts "Escolha 10 numeros para array 2"
    10.times do
      numbers2 = gets.chomp.to_i
      array2 << numbers2
    end

    puts " ==========================================" 
    resultArray1 = array1.map{|text| "Primeiro Array : #{text}"}
    resultArray2 = array2.map{|text| "Segundo Array: #{text}"}
    array3=resultArray1.zip(resultArray2)
    puts "Tarefa 11"
    puts array3

    puts "=========================================="
  end

  if choice == 12
    puts "Tarefa 12"
    $movs = 0
def moveTower(totalDisks,diskA, diskB, diskC)
    if totalDisks >= 1
        moveTower(totalDisks-1,diskA,diskC,diskB)
        $movs = $movs + 1
        moveTower(totalDisks-1,diskC,diskB,diskA)
    end
end

disks = 5
moveTower(disks,"A","B","C")
puts "#{($movs)} movimentos"
puts "=========================================="
  end

  break if (choice == 0)
end