//
//  ContactBook.swift
//  Lesson_7
//
//  Created by Vova Kutsanov on 17.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//


/*
 Формируем массив с контактами для таблицы
 алгоритм
 1 содаем временные массивы
 2 Начинаем цикл, пока в массиве фамилий есть хотя бы один элемент
 3 В цикле вычисляем величину массива с фамилиями
 4 Определяем случайное значение от 1 до размера массива и отнимаем 1 (чтобы участвовал ключ первого элемента и не уходил за последний элемент
 5 Берем Фамилию из временного массива по ключу, определенному в пункте 4
 6 Удаляем из временного массива элемент по ключу
 7 Тоже самое делаем с остальными (имя, телефон, email)
 8 Добавляем в массив новый элемент с типов Contact
 9 После выхода из цикла, возвращаем полученый массив
 */
struct ContactBook {
    
    static func lstContact() -> [Contact] {
        
        /*
         Создаем массивы, из которых будет случайно выбирать данные
         */
        var array_name_i: [String] = ["Иван", "Петр", "Владимир"]
        var array_name_f: [String] = ["Иванов", "Петров", "Сидоров"]
        var array_phone: [String] = ["+790001", "+790002", "+790003"]
        var array_email: [String] = ["1@email.ru", "2@email.ru", "3@email.ru"]
        
        var contacts: [Contact] = []
        
        
        while array_name_f.count > 0 {
            let intMin = 1
            let intMax = array_name_f.count
            var i = Int.random(in: intMin...intMax)
            i = i - 1
            let name_f = array_name_f[i]
            array_name_f.remove(at: i)
            
            i = Int.random(in: intMin...intMax)
            i = i - 1
            let name_i = array_name_i[i]
            array_name_i.remove(at: i)

            i = Int.random(in: intMin...intMax)
            i = i - 1
            let phone = array_phone[i]
            array_phone.remove(at: i)

            i = Int.random(in: intMin...intMax)
            i = i - 1
            let email = array_email[i]
            array_email.remove(at: i)
            
            contacts.append(Contact(name_i: name_i, name_f: name_f, phone: phone, email: email))
        }
        
        return contacts
    }
}
