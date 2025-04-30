//
//  Movies.swift
//  Kolukuluri_MoviesApp
//
//  Created by Geethika Kolukuluri on 4/27/25.
//

import Foundation

struct Movies {
    var genre : String
    var list_Array : [MovieList]
}

struct MovieList {
    var movieName : String
    var movieImage : String
    var movieInfo : String
}

let genre1 = Movies(genre: "Action",
                    list_Array: [
                        MovieList(movieName: "Baahubali: The Beginning", movieImage: "baahubali1", movieInfo: "In the kingdom of Mahishmati, Shivudu falls in love with a rebellious warrior while searching for his true identity."),
                        MovieList(movieName: "Baahubali 2: The Conclusion", movieImage: "baahubali2", movieInfo: "When Shiva learns his heritage, he returns to Mahishmati to reclaim his throne from the tyrannical Bhallaladeva."),
                        MovieList(movieName: "RRR", movieImage: "rrr", movieInfo: "A fearless revolutionary and a British officer, their friendship and their fight against the British Raj."),
                        MovieList(movieName: "Pushpa: The Rise", movieImage: "pushpa", movieInfo: "A laborer rises through the ranks of a red sandalwood smuggling syndicate, making many enemies in the process."),
                        MovieList(movieName: "Salaar", movieImage: "salaar", movieInfo: "A gang leader tries to keep a promise made to his dying friend while dealing with other criminal forces.")
                    ])

let genre2 = Movies(genre: "Drama",
                    list_Array: [
                        MovieList(movieName: "Arjun Reddy", movieImage: "arjunreddy", movieInfo: "A self-destructive surgeon goes on a path of ruin after the love of his life marries someone else."),
                        MovieList(movieName: "Mahanati", movieImage: "mahanati", movieInfo: "Biographical film about the life of legendary South Indian actress Savitri."),
                        MovieList(movieName: "C/o Kancharapalem", movieImage: "kancharapalem", movieInfo: "Four unconventional love stories set in the small town of Kancharapalem."),
                        MovieList(movieName: "Hi Nanna", movieImage: "hinanna", movieInfo: "A single father's life changes when he begins telling his daughter the story of her missing mother."),
                        MovieList(movieName: "Jersey", movieImage: "jersey", movieInfo: "A failed cricketer decides to revive his cricketing career in his 30s for his son.")
                    ])

let genre3 = Movies(genre: "Romance",
                    list_Array: [
                        MovieList(movieName: "Majili", movieImage: "majili", movieInfo: "A failed cricketer finds love again with his ex-lover after a failed marriage."),
                        MovieList(movieName: "Fidaa", movieImage: "fidaa", movieInfo: "A carefree village girl falls in love with an NRI, but cultural differences create complications."),
                        MovieList(movieName: "Love Story", movieImage: "lovestory", movieInfo: "A young couple faces caste discrimination when they fall in love."),
                        MovieList(movieName: "Sita Ramam", movieImage: "sitaramam", movieInfo: "An orphaned soldier's love letter reaches the wrong person, leading to a journey of discovery."),
                        MovieList(movieName: "Geetha Govindam", movieImage: "geethagovindam", movieInfo: "A college lecturer's life turns upside down when he's accused of harassing a woman.")
                    ])

let genre4 = Movies(genre: "Comedy",
                    list_Array: [
                        MovieList(movieName: "Jathi Ratnalu", movieImage: "jathiratnalu", movieInfo: "Three innocent men get caught up in a political conspiracy and land in jail."),
                        MovieList(movieName: "Ala Vaikunthapurramuloo", movieImage: "alavaikunthapurramuloo", movieInfo: "A man discovers he was switched at birth and sets out to claim his birthright."),
                        MovieList(movieName: "F2: Fun and Frustration", movieImage: "f2", movieInfo: "Two men with marital problems try to teach their wives a lesson but end up in hilarious situations."),
                        MovieList(movieName: "Evadi Gola Vaadidhi", movieImage: "evadigolavaadidhi", movieInfo: "A man runs away to Bangkok to escape marriage, leading to comic situations."),
                        MovieList(movieName: "Masooda", movieImage: "masooda", movieInfo: "A horror-comedy about a woman and her friends who encounter supernatural events.")
                    ])

let genre5 = Movies(genre: "Thriller",
                    list_Array: [
                        MovieList(movieName: "Karthikeya 2", movieImage: "karthikeya2", movieInfo: "A doctor gets entangled in a mystery surrounding an ancient Hindu temple."),
                        MovieList(movieName: "Hit: The First Case", movieImage: "hit", movieInfo: "A police officer with panic disorder investigates the disappearance of a young woman."),
                        MovieList(movieName: "Goodachari", movieImage: "goodachari", movieInfo: "A young spy uncovers a conspiracy while trying to clear his father's name."),
                        MovieList(movieName: "Rangasthalam", movieImage: "rangasthalam", movieInfo: "A hearing-impaired man takes on a corrupt village president to help his brother."),
                        MovieList(movieName: "Evaru", movieImage: "evaru", movieInfo: "A police officer investigates a case where the victim might actually be the perpetrator.")
                    ])

var genres = [genre1, genre2, genre3, genre4, genre5]


