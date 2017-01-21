//
//  Articles.swift
//
//  Created by Sábado on 21/01/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Articles {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let urlToImage = "urlToImage"
    static let descriptionValue = "description"
    static let title = "title"
    static let publishedAt = "publishedAt"
    static let author = "author"
    static let url = "url"
  }

  // MARK: Properties
  public var urlToImage: String?
  public var descriptionValue: String?
  public var title: String?
  public var publishedAt: String?
  public var author: String?
  public var url: String?

  // MARK: SwiftyJSON Initializers
  /// Initiates the instance based on the object.
  ///
  /// - parameter object: The object of either Dictionary or Array kind that was passed.
  /// - returns: An initialized instance of the class.
  public convenience init(object: Any) {
    self.init(json: JSON(object))
  }

  /// Initiates the instance based on the JSON that was passed.
  ///
  /// - parameter json: JSON object from SwiftyJSON.
  public required init(json: JSON) {
    urlToImage = json[SerializationKeys.urlToImage].string
    descriptionValue = json[SerializationKeys.descriptionValue].string
    title = json[SerializationKeys.title].string
    publishedAt = json[SerializationKeys.publishedAt].string
    author = json[SerializationKeys.author].string
    url = json[SerializationKeys.url].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = urlToImage { dictionary[SerializationKeys.urlToImage] = value }
    if let value = descriptionValue { dictionary[SerializationKeys.descriptionValue] = value }
    if let value = title { dictionary[SerializationKeys.title] = value }
    if let value = publishedAt { dictionary[SerializationKeys.publishedAt] = value }
    if let value = author { dictionary[SerializationKeys.author] = value }
    if let value = url { dictionary[SerializationKeys.url] = value }
    return dictionary
  }

}
