### Простой скрипт выполняющий арифметические операции
### Комментарии начинаются со знака решетки

# Это процедура. Она же функция
function AskUserInput ([string] $prompt)
{
    $data = read-host $prompt

    # это ветвление
    if ($data -eq "exit")
    {
        exit
    }
	
	# Функция возвращает значение. Процедура, возвращающая значение, называется функцией.
	# В настоящее время термин процедура не используется. Все процедуры называются функциями.
	return $data
}

# Это бесконечный цикл, но он будет прерван принудительно при вводе "exit"
while($true)
{
    write-host "Для выхода наберите exit"

    $firstoperand = AskUserInput "Введите первое число"

    $operation = AskUserInput "Введите операцию ( + или - )"

    $secondoperand = AskUserInput "Введите второе число"

    if ($operation -eq "+")
    {
        $result = [int]$firstoperand + [int]$secondoperand
        write-host Ответ: $result
    }

    if ($operation -eq "-")
    {
        $result = [int]$firstoperand - [int]$secondoperand
        write-host Ответ: $result    
    }
}
