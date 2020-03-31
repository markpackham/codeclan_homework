def return_10()
    return 10;
end

def add(a,b)
    return a + b
end

def subtract(a,b)
    return a - b
end

def multiply(a,b)
    return a * b 
end

def divide(a,b)
    return a / b 
end

def length_of_string(a)
    return a.length()
end

def join_string(a,b)
    return a+b
end

def add_string_as_number(a,b)
    return a.to_i + b.to_i
end

def number_to_full_month_name(a)
    arr = ["January", "Febrauary", "March", "April", "May", "June", "July", "August", "September", "October", "Novermber", "December"]
    return arr[a - 1]
end

def number_to_short_month_name(a)
    arr = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    return arr[a - 1]
end

def volume_of_cube(a)
    return a**3
end

def volume_of_sphere(a)
    a = (a**3)*Math::PI * 1.333333
    return a.round(2)
end

# T(°C) = (68°F - 32) × 5/9 = 20 °C
# 50 C = 10 F
def f_c(a)
    a = (a -32) * 5/9
return a
end