### Простой скрипт выполняющий арифметические операции
### Комментарии начинаются со знака решетки

# Это бесконечный цикл, но он будет прерван принудительно при вводе "exit"
while($true)
{
    write-host "Для выхода наберите exit"


    $firstoperand = read-host "Введите первое число"

    # это ветвление
    if ($firstoperand -eq "exit")
    {
        exit
    }

    $operation = read-host "Введите операцию ( + или - )"

    # Это ветвление
    if ($operation -eq "exit")
    {
        exit
    }


    $secondoperand = read-host "Введите второе число"

    if ($secondoperand -eq "exit")
    {
        exit
    }

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