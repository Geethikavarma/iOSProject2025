//
//  ViewController.swift
//  Kolukuluri_SearchApp
//
//  Created by Geethika Kolukuluri on 3/31/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var prvBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var searchNtn: UIButton!
    
    var topics = ["places", "landforms", "countries", "space exploration", "famous landmarks"]
    var images = [[" newyork", "newjersey", "california"],
                      ["mountains", "valley", "desert"],
                      ["india", "pakistan", "dubai"],
                      ["astronaut", "galaxy", "solarsystem"],
                      ["Kobuk_valley", "ayodya", "lotus_temple"]]
        
    var keywords = [
        ["new york", "new jersey", "california","places","cities","locations","usa","states"],
        ["mountain", "valley", "desert", "landforms", "landtypes", "lands", "hills"],
        ["india", "pakistan", "dubai","countries","nation","social","geography"],
        ["astronaut", "galaxy", "solar system","space","sky","explore","universe","planets"],
        ["kobuk valley", "ayodhya ram mandir", "lotus temple","kobuk","ayodya","temple","ram mandir","lotus","delhi","ram"]
    ]

    var descriptions = [["New York, often called New York City or NYC,  is the most populous city in the United States, located at the southern tip of New York State on one of the world's largest natural harbors. The city comprises five boroughs, each coextensive with a respective county. The city is the geographical and demographic center of both the Northeast megalopolis.",
                        "New Jersey is a state located in both the Mid-Atlantic and Northeastern regions of the United States. Located at the geographic hub of the heavily urbanized Northeast megalopolis, it is bordered to the northwest, north, and northeast by New York State; on its east, southeast, and south by the Atlantic Ocean; on its west by the Delaware River and Pennsylvania; and on its southwest by Delaware Bay and Delaware.",
                        "California is a state in the Western United States that lies on the Pacific Coast. It borders Oregon to the north, Nevada and Arizona to the east, and shares an international border with the Mexican state of Baja California to the south. it is the most populous U.S. state, the third-largest by area, and the most populated subnational entity in North America."],
                        ["A mountain is an elevated portion of the Earth's crust, generally with steep sides that show significant exposed bedrock. Although definitions vary, a mountain may differ from a plateau in having a limited summit area, and is usually higher than a hill, typically rising at least 300 metres (980 ft) above the surrounding land. A few mountains are isolated summits, but most occur in mountain ranges.",
                        "A valley is an elongated low area often running between hills or mountains and typically containing a river or stream running from one end to the other. Most valleys are formed by erosion of the land surface by rivers or streams over a very long period. Some valleys are formed through erosion by glacial ice. These glaciers may remain present in valleys in high mountains or polar areas.",
                        "A desert is a landscape where little precipitation occurs and, consequently, living conditions create unique biomes and ecosystems.The lack of vegetation exposes the unprotected surface of the ground to denudation.About 1/3rd of the land surface of the Earth is arid or semi-arid. This includes much of the polar regions, where little precipitation occurs, and which are sometimes called polar deserts or cold deserts."],
                        ["India, is a country in South Asia. It is the 7th largest country by area; the most populous country from June 2023 onwards; and since its independence in 1947, the world's most populous democracy. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west and Bangladesh and Myanmar to the east.",
                        "Pakistan, officially the Islamic Republic of Pakistan. It is the fifth-most populous country, having the second-largest Muslim population as of 2023. Islamabad is the nation's capital, while Karachi is its largest city and financial centre. Pakistan is the 33rd-largest country by area. It shares a maritime border with Oman in the Gulf of Oman, and is separated from Tajikistan in the northwest by Afghanistan's narrow Wakhan Corridor.",
                        "Dubai is the most populous city in the United Arab Emirates and the capital of the Emirate of Dubai, the most populous of the country's seven emirates. As of 2024, the city has a population of around 3.79 million, more than 90% of whom are expatriates.In the early 20th century, Dubai developed into a significant regional and international trade hub, emphasizing tourism and luxury. "],
                        ["An astronaut  is a person trained, equipped, and deployed by a human spaceflight program to serve as a commander or crew member aboard a spacecraft. Although generally reserved for professional space travelers, the term is sometimes applied to anyone who travels into space, including scientists, politicians, journalists, and tourists.",
                        "Galaxy is a system of stars,stellar remnants, interstellar gas, dust, and dark matter bound together by gravity.The word is derived from the Greek galaxias.Galaxies, averaging an estimated 100 million stars, range in size from dwarfs with less than a thousand stars, to the largest galaxies known–supergiants with one hundred trillion stars, each orbiting its galaxy's centre of mass.",
                        "The Solar System is the gravitationally bound system of the Sun and the objects that orbit it. It formed about 4.6 billion years ago when a dense region of a molecular cloud collapsed, forming the Sun and a protoplanetary disc. The Sun is a typical star that maintains a balanced equilibrium by the fusion of hydrogen into helium at its core, releasing this energy from its outer photosphere. Astronomers classify it as a G-type main-sequence star."],
                        ["Kobuk Valley National Park is a national park of the United States in the Arctic region of northwestern Alaska, located about 25 miles north of the Arctic Circle. The park was designated in 1980 by the Alaska National Interest Lands Conservation Act to preserve the 100 ft high Great Kobuk Sand Dunes and the surrounding area which includes caribou migration routes.",
                        "The Ram Mandir is a partially constructed Hindu temple complex in Ayodhya, Uttar Pradesh, India. Many Hindus believe that it is located at the site of Ram Janmabhoomi, the mythical birthplace of Rama. The temple was inaugurated on 22 January 2024 after a prana pratishtha ceremony. On the first day of its opening, following the consecration, the temple received a rush of over half a million visitors.",
                        "The Lotus Temple is a Baháʼí House of Worship in Kalkaji, New Delhi, Delhi, India. It was completed in December 1986. Notable for its lotus-like shape, it has become a prominent attraction in the city. The building is composed of 27 free-standing marble-clad petal arranged in clusters of three to form nine sides, with nine doors opening onto a central hall with a height of slightly over 34 metres and a capacity of 1,300 people. "]]
        
    var currentTopicIndex: Int? = nil
    var currentImageIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetView()
        searchTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)


    }
    @objc func textFieldDidChange(_ textField: UITextField) {
           // Enable or disable the search button based on whether there is text
           if let text = textField.text, !text.isEmpty {
               searchNtn.isEnabled = true
           } else {
               searchNtn.isEnabled = false
           }
       }


    @IBAction func searchButtonAction(_ sender: UIButton) {
        guard let searchText = searchTextField.text, !searchText.isEmpty else { return }

        let lowercasedSearchText = searchText.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        // Check for broad topic keywords (e.g., synonyms or related terms)
        for (index, keywordList) in keywords.enumerated() {
            if keywordList.contains(where: { lowercasedSearchText.contains($0) }) {
                currentTopicIndex = index
                currentImageIndex = 0
                updateView()
                AudioServicesPlaySystemSound(1113)
                return
            }
        }

        showNoResults()
    }

    
    @IBAction func ShowNextImageBtn(_ sender: UIButton) {
        guard let topicIndex = currentTopicIndex, currentImageIndex < images[topicIndex].count - 1 else { return }
        currentImageIndex += 1
        updateView()
        AudioServicesPlaySystemSound(1105)
    }
    
    @IBAction func ShowPrevImageBtn(_ sender: UIButton) {
        guard let topicIndex = currentTopicIndex, currentImageIndex > 0 else { return }
        currentImageIndex -= 1
        updateView()
        AudioServicesPlaySystemSound(1105)
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        resetView()
        AudioServicesPlaySystemSound(1111)
        searchNtn.isEnabled = false
    }
    func updateView() {
        guard let topicIndex = currentTopicIndex else { return }

        resultImage.image = UIImage(named: images[topicIndex][currentImageIndex])
        topicInfoText.text = descriptions[topicIndex][currentImageIndex]

        prvBtn.isEnabled = currentImageIndex > 0
        nextBtn.isEnabled = currentImageIndex < images[topicIndex].count - 1
    }
    
    func showNoResults() {
        resultImage.image = UIImage(named: "noresult")
        topicInfoText.text = "No results found for \(searchTextField.text ?? "")"
    }
    
    func resetView() {
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = "Hello, Geethika !!"
        searchTextField.text = ""
        currentTopicIndex = nil
        currentImageIndex = 0
        prvBtn.isEnabled = false
        nextBtn.isEnabled = false
    }
}

    

