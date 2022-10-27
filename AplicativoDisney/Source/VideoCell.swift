//
//  VideoCell.swift
//  AplicativoDisney
//
//  Created by Lunes on 20/10/22.
//

import UIKit
import SDWebImage

class VideoCell: UITableViewCell {
//    var videoImageView = UIImageView()
    
    var videoImageView: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    var videoTitleLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle,reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(videoImageView)
        addSubview(videoTitleLabel)
        
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setTittleConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(princessData: Dataum) {
        let imageURL = URL(string: princessData.imageURL)
        videoImageView.sd_setImage(with: imageURL)
        videoImageView.contentMode = .scaleAspectFill
        videoTitleLabel.text = princessData.name
    }
    
    func configureImageView() {
        videoImageView.layer.cornerRadius = 10
        videoImageView.clipsToBounds = true
        videoImageView.contentMode = .scaleToFill
        
    }
    
    func configureTitleLabel() {
        videoTitleLabel.numberOfLines = 0
//        videoTitleLabel.backgroundColor = .red
        videoTitleLabel.adjustsFontSizeToFitWidth = true
        
        
    }
    func setImageConstraints() {
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 12).isActive = true
        videoImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor, multiplier: 1.1).isActive = true
    }
    
    func setTittleConstraints() {
        videoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        videoTitleLabel.leadingAnchor.constraint(equalTo:  self.leadingAnchor, constant: 170).isActive = true
        videoTitleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        videoTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10).isActive = true
        
    }
    

}
