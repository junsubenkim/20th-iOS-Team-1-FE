//
//  CommentCell.swift
//  App
//
//  Created by Hani on 2022/07/28.
//

import UIKit

final class CommentCell: UICollectionViewCell {
    private let profileImageButton: CircularButton = {
        let button = CircularButton()
        button.setBackgroundImage(.Togaether.userDefaultProfile, for: .normal)
        button.backgroundColor = .Togaether.background
        
        return button
    }()
    
    private var nicknameLabel: UILabel = {
        let label = UILabel()
        label.font = .customFont(size: 12)
        label.textColor = .Togaether.primaryLabel
        label.lineBreakMode = .byTruncatingTail
        
        return label
    }()
    
    private let leaderLabel: UILabel = {
        let label = UILabel()
        label.layer.cornerRadius = 10
        label.layer.borderWidth = 1
        label.text = "모임 방장"
        label.tintColor = UIColor.Togaether.secondaryLabel
        label.layer.borderColor = UIColor.Togaether.secondaryLabel.cgColor
        label.font = .customFont(size: 14)
        
        return label
    }()
    
    private var dogLabel: UILabel = {
        let label = UILabel()
        label.font = .customFont(size: 12)
        label.textColor = .Togaether.secondaryLabel
        
        return label
    }()
    
    private var dateLabel: UILabel = {
        let label = UILabel()
        label.font = .customFont(size: 12)
        label.textColor = .Togaether.secondaryLabel
        
        return label
    }()
    
    private var commentLabel: UILabel = {
        let label = UILabel()
        label.font = .customFont(size: 16)
        label.textColor = .Togaether.primaryLabel
        
        return label
    }()
    
    let reportButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage.Togaether.setting, for: .normal)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        configureLayout()
        configureUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        contentView.addSubview(profileImageButton)
        
        contentView.addSubview(nicknameLabel)
        contentView.addSubview(leaderLabel)
        
        contentView.addSubview(dogLabel)
        contentView.addSubview(dateLabel)
        
        contentView.addSubview(commentLabel)
        
        contentView.addSubview(reportButton)
    }
    
    private func configureLayout() {
        NSLayoutConstraint.useAndActivateConstraints([
            profileImageButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            profileImageButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            
            nicknameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            nicknameLabel.leadingAnchor.constraint(equalTo: profileImageButton.trailingAnchor, constant: 12),
            
            leaderLabel.centerYAnchor.constraint(equalTo: nicknameLabel.centerYAnchor),
            leaderLabel.leadingAnchor.constraint(equalTo: nicknameLabel.trailingAnchor, constant: 6),
            
            dogLabel.topAnchor.constraint(equalTo: nicknameLabel.bottomAnchor, constant: 8),
            dogLabel.leadingAnchor.constraint(equalTo: profileImageButton.trailingAnchor, constant: 12),
            
            dateLabel.centerYAnchor.constraint(equalTo: dogLabel.centerYAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: nicknameLabel.trailingAnchor, constant: 6),
            
            commentLabel.topAnchor.constraint(equalTo: dogLabel.bottomAnchor, constant: 8),
            commentLabel.leadingAnchor.constraint(equalTo: profileImageButton.trailingAnchor, constant: 12),
            
            reportButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            reportButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
        ])
    }
    
    private func configureUI() {
        backgroundColor = .Togaether.background
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }

    func configure(imageURLString: String, nickname: String, isLeader: Bool, dog: String, date: String, comment: String) {
        profileImageButton.setImage(UIImage.Togaether.userDefaultProfile, for: .normal)
        nicknameLabel.text = nickname
        leaderLabel.isHidden = !isLeader
        dogLabel.text = dog
        dateLabel.text = date
        commentLabel.text = comment
    }
}
