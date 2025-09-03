import math
C = float(input("Введите длину окружности: "))
if C > 0:
    r = C / (2 * math.pi)
    S = math.pi * r * r
    print(f"Площадь круга равна {S:.2f}")
else:
    print("Длина окружности должна быть положительным числом.")
