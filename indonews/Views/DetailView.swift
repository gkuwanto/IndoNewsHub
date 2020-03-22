//
//  DetailView.swift
//  indonews
//
//  Created by Garry Kuwanto on 22/03/20.
//  Copyright © 2020 Garry Kuwanto. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
