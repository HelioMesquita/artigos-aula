//
//  ExtensionArticlesViewController+TableViewDataSource+TableViewDelegate.swift
//  appDeNoticias
//
//  Created by Sábado on 11/02/17.
//  Copyright © 2017 Sábado. All rights reserved.
//

import Foundation

import UIKit


extension ArticleViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let artigos = articles?.numberOfRows else{
            return 0
        }
        return artigos
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticlesCell", for: indexPath) as! CustomCell
        
        articles?.loadArticle(indice: indexPath.row)
        cell.loadCell(recebeArticleViewModel: articles!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow = indexPath.row
        performSegue(withIdentifier: "DetalhesViewController", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetalhesViewController"{
                let detalhesViewController = segue.destination as! DetalhesViewController
            
                articles?.loadArticle(indice: selectedRow!)
         
                detalhesViewController.recebeNoticia(articleDescription: (articles?.description)!)
            
            
        }
    }
    
}
