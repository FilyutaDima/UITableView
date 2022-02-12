//
//  Constants.swift
//  UITableView
//
//  Created by Dmitry on 9.02.22.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
}

class DataSource {
    static var names = ["Dmitry",
                        "Nikita",
                        "Zahar",
                        "Alersandr",
                        "Evgeniy",
                        "Andrey",
                        "Yan",
                        "Stanislav",
                        "Vladimir",
                        "Pavel"].shuffled()

    static var surnames = ["Fikyuta",
                           "Kurilovitch",
                           "Moskalev",
                           "Skibinsky",
                           "Shishlo",
                           "Ivanov",
                           "Smirnov",
                           "Sidorov",
                           "Lavrinovich",
                           "Tseluyko"].shuffled()

    static var emails = ["email1@mail.ru",
                         "email2@mail.ru",
                         "email3@mail.ru",
                         "email4@mail.ru",
                         "email5@mail.ru",
                         "email6@mail.ru",
                         "email7@mail.ru",
                         "email8@mail.ru",
                         "email9@mail.ru",
                         "email10@mail.ru"].shuffled()

    static var phones = ["+375331111111",
                         "+375332222222",
                         "+375333333333",
                         "+375334444444",
                         "+375335555555",
                         "+375336666666",
                         "+375337777777",
                         "+375338888888",
                         "+375339999999",
                         "+375331010101"].shuffled()
}
