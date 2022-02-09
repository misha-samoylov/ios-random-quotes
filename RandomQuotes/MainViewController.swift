//
//  MainViewController.swift
//  RandomQuotes
//
//  Created by Misha Samoylov on 09.02.2022.
//

import UIKit

class MainViewController: UIViewController {

    var labelQuote = UILabel()
    var labelAuthor = UILabel()
    var buttonChangeQuote = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initQuotes()

        let bgImage = UIImage(named: "background")
        bgImage?.resizableImage(withCapInsets: .zero)
        self.view.backgroundColor = UIColor(patternImage: bgImage!)
        
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 20
        self.view.addSubview(stackView)

        labelQuote = UILabel()
        labelQuote.font = UIFont.systemFont(ofSize: 18)
        labelQuote.textAlignment = .center
        labelQuote.widthAnchor.constraint(equalToConstant: self.view.frame.width - 40).isActive = true
        labelQuote.numberOfLines = 0
        labelQuote.text = ""
        stackView.addArrangedSubview(labelQuote)
        
        labelAuthor = UILabel()
        labelAuthor.font = UIFont.italicSystemFont(ofSize: 16)
        labelAuthor.text = ""
        labelAuthor.textAlignment = .center
        labelAuthor.textColor = UIColor.gray
        labelAuthor.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        labelAuthor.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        stackView.addArrangedSubview(labelAuthor)

        buttonChangeQuote = UIButton()
        buttonChangeQuote.setTitleColor(.systemBlue, for: .normal)
        buttonChangeQuote.addTarget(self, action: #selector(changeQuote), for: .touchDown)
        buttonChangeQuote.setTitle("Далее", for: .normal)
        self.view.addSubview(buttonChangeQuote)
        
        buttonChangeQuote.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        buttonChangeQuote.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor).isActive = true
        buttonChangeQuote.heightAnchor.constraint(equalToConstant: 100).isActive = true
        buttonChangeQuote.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        changeQuote()
    }
    
    @objc func changeQuote() {
        let quotesCount = quotes.count
        let randomTextNumber = Int.random(in: 0..<quotesCount)
        
        labelQuote.text = quotes[randomTextNumber].quote
        labelAuthor.text = quotes[randomTextNumber].author
    }
}
