//
//  ApiCaller.swift
//  NetflixClone
//
//  Created by NODIR KARIMOV on 01/02/22.
//

import UIKit

struct Constants {
    static let Api_Key = "cb18cca1d318da9e88058efc4d2d969a"
    static let baseUrl = "https://api.themoviedb.org"
}

enum ApiError {
    case failedTogetData
}

class ApiCaller {
    static let shared = ApiCaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseUrl)/3/trending/movie/day?api_key=\(Constants.Api_Key)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data , _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getTrendingTVs(completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseUrl)/3/trending/tv/day?api_key=\(Constants.Api_Key)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data , _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseUrl)/3/movie/upcoming?api_key=\(Constants.Api_Key)&language=en-US&page=1") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data , _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getPopular(completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseUrl)/3/movie/popular?api_key=\(Constants.Api_Key)&language=en-US&page=1") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data , _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getTopRated(completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseUrl)/3/movie/top_rated?api_key=\(Constants.Api_Key)&language=en-US&page=1") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data , _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
