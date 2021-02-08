//
//  SubCustomCell.swift
//  BookReviewApp
//
//  Created by 이차민 on 2021/01/28.
//

import UIKit
import TagListView

class SubCustomCell: UICollectionViewCell {

    let tagListview : TagListView = TagListView()
    
    var booklist: BookList? {
        didSet {
                print("booklist",self.booklist)
            guard let booklist = self.booklist else { return }
            self.ImageView.image = UIImage(named: booklist.image)
            self.TitleLabel.text = self.booklist?.title
            self.AuthorLabel.text = self.booklist?.author
        }
    }

    let ImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .black
        iv.image = UIImage(named: "0000.png")
        iv.contentMode = .scaleAspectFill // aspect유지하면서 화면에 꽉차게
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 7
        return iv
    }()

    let TitleLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 12)
        lb.font = UIFont.boldSystemFont(ofSize: 12)
        lb.text = "This is Book Title"
        return lb
    }()

    let AuthorLabel : UILabel = {
        let lb = UILabel()
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 10)
        lb.font = UIFont.boldSystemFont(ofSize: 10)
        lb.text = "Lee Cha Min"
        return lb
    }()
    
    // TagListView
    
 
    
    
    
    
//    let sectionButton : UIButton = {
//        let bt = UIButton()
//        bt.frame.size = CGSize(width: 30, height: 30)
//        bt.tintColor = .white
//        bt.setBackgroundImage(UIImage(systemName: "folder"), for: .normal)
//        bt.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
//        return bt
//    }()
//
//    @objc func didTapButton() {
//        print("Hello")
//    }

    override init(frame: CGRect) {
    super.init(frame: frame)
        addSubview(ImageView)
        addSubview(TitleLabel)
        addSubview(AuthorLabel)
//        addSubview(sectionButton)

        ImageView.translatesAutoresizingMaskIntoConstraints = false
        ImageView.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true // image vs subcell
        ImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        ImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        ImageView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        ImageView.bottomAnchor.constraint(equalTo: TitleLabel.topAnchor, constant: -10).isActive = true

        TitleLabel.translatesAutoresizingMaskIntoConstraints = false
        TitleLabel.topAnchor.constraint(equalTo: ImageView.bottomAnchor,constant: 15).isActive = true
        TitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        TitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
//        TitleLabel.bottomAnchor.constraint(equalTo: ImageView.topAnchor).isActive = true


        AuthorLabel.translatesAutoresizingMaskIntoConstraints = false
        AuthorLabel.topAnchor.constraint(equalTo: TitleLabel.bottomAnchor, constant: 5).isActive = true
        AuthorLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        AuthorLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true

//        sectionButton.translatesAutoresizingMaskIntoConstraints = false
//        sectionButton.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
//        sectionButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true


    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
