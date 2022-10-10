//
//  ViewController.swift
//  Werdd
//
//  Created by Wooyang Son on 10/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    let appTitle: UILabel = {
        let appTitle = UILabel()
        appTitle.translatesAutoresizingMaskIntoConstraints = false
        appTitle.text = "Werdd."
        appTitle.font = UIFont(name: "Rubik-Bold", size: 40)
        return appTitle
    }()
    
    let wordCard: UIView = {
        let wordCard = UIView()
        wordCard.translatesAutoresizingMaskIntoConstraints = false
        wordCard.backgroundColor = UIColor(red: 53/255, green: 129/255, blue: 184/255, alpha: 1)
        wordCard.layer.cornerRadius = 30
        return wordCard
    }()
    
    let word: UILabel = {
        let word = UILabel()
        word.translatesAutoresizingMaskIntoConstraints = false
        word.text = "Programming"
        word.font = UIFont(name: "Rubik-Bold", size: 25)
        word.sizeToFit()

        return word
    }()
    
    let partOfSpeech: UILabel = {
        let partOfSpeech = UILabel()
        partOfSpeech.translatesAutoresizingMaskIntoConstraints = false
        partOfSpeech.text = "noun"
        partOfSpeech.font = UIFont(name: "Rubik-LightItalic", size: 14)
        partOfSpeech.sizeToFit()
        return partOfSpeech
    }()
    
    let definition: UILabel = {
        let definition = UILabel()
        definition.translatesAutoresizingMaskIntoConstraints = false
        definition.text = "Creating a sequence of instructions to enable the computer to do something"
        definition.font = UIFont(name: "Rubik-Light", size: 16)
        definition.numberOfLines = 0
        definition.lineBreakMode = .byWordWrapping
        
        return definition
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 233/255, green: 230/255, blue: 228/255, alpha: 1)
        setupView()
        
    }
    
    private func setupView() {
        view.addSubview(appTitle)
        view.addSubview(wordCard)
        
        wordCard.addSubview(word)
        wordCard.addSubview(partOfSpeech)
        wordCard.addSubview(definition)
        
        NSLayoutConstraint.activate([
            appTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            appTitle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            appTitle.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
        ])
        
        NSLayoutConstraint.activate([
            wordCard.topAnchor.constraint(equalTo: appTitle.bottomAnchor, constant: 20),
            wordCard.leadingAnchor.constraint(equalTo: appTitle.leadingAnchor),
            wordCard.trailingAnchor.constraint(equalTo: appTitle.trailingAnchor),
            wordCard.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.38)
        ])
        
        NSLayoutConstraint.activate([
            word.topAnchor.constraint(equalTo: wordCard.topAnchor, constant: 25),
            word.leadingAnchor.constraint(equalTo: wordCard.leadingAnchor, constant: 25),
            word.trailingAnchor.constraint(equalTo: partOfSpeech.leadingAnchor, constant: -4),
            partOfSpeech.bottomAnchor.constraint(equalTo: word.bottomAnchor),
            definition.leadingAnchor.constraint(equalTo: wordCard.leadingAnchor, constant: 25),
            definition.trailingAnchor.constraint(equalTo: wordCard.trailingAnchor, constant: -20),
            definition.topAnchor.constraint(equalTo: word.bottomAnchor, constant: 10)
        ])
    }


}

