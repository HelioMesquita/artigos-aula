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
        return articles!.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticlesCell", for: indexPath)
        
        articles?.loadArticle(indice: indexPath.row)
        cell.textLabel?.text = articles?.title
        
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
                detalhesViewController.textViewDetalhes.text = articles?.description
            
            
        }
    }
    
    
    
    
    
    
    
}
