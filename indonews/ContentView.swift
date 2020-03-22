//
//  ContentView.swift
//  indonews
//
//  Created by Garry Kuwanto on 22/03/20.
//  Copyright © 2020 Garry Kuwanto. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.news) { item in
                Text(item.title)
            }
        .navigationBarTitle("INDO NEWS HUB")
        }.onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

