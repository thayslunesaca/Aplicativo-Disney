//
//  PricessDetailControllerViewController.swift
//  AplicativoDisney
//
//  Created by Lunes on 21/10/22.
//

import UIKit

class PricessDetailControllerViewController: UIViewController {
    var princess: Dataum?
    
    private lazy var princessLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = princess?.name
        return label
    }()
    
    private lazy var princessImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let url = URL(string: princess!.imageURL)
        image.sd_setImage(with: url)
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(princessLabel)
        view.addSubview(princessImage)
        setContraints()
    }
    
    func setContraints() {
        NSLayoutConstraint.activate([
            princessImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
           princessImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            princessLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            princessLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
//videoImageView.translatesAutoresizingMaskIntoConstraints = false
//videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//videoImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 12).isActive = true
//videoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
//videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor,multiplier: 1.4).isActive = true
