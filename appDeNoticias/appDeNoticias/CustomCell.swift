//
//  CustomCell.swift
//  appDeNoticias
//
//  Created by Sábado on 11/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsAuthor: UILabel!
    @IBOutlet weak var newsTitle: UILabel!
    
    override func awakeFromNib() {

    
    
    super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func loadCell (recebeArticleViewModel:ArticlesViewModel,index:Int){
        recebeArticleViewModel.loadArticle(indice: index)
        self.newsAuthor.text = recebeArticleViewModel.author
        self.newsTitle.text = recebeArticleViewModel.title
        self.newsImage.image = recebeArticleViewModel.image
        
    }

}
