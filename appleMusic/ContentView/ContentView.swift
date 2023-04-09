//
//  ContentView.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 29.03.2023.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		TabView {
			MusicView()
				.tabItem {
					Image(systemName: "play.square.stack")
					Text("Музыка")
				}
			RadioView()
				.tabItem {
					Image(systemName: "dot.radiowaves.left.and.right")
					Text("Радио")
				}
			Text("Поиск")
				.tabItem {
					Image(systemName: "magnifyingglass.circle.fill")
					Text("Поиск")
				}
		}.accentColor(.red)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
