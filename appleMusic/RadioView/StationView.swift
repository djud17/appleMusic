//
//  StationView.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 09.04.2023.
//

import SwiftUI

struct StationView: View {
	let columns = [
		GridItem(.flexible())
	]

	var body: some View {
		LazyVGrid(columns: columns) {
			ForEach(MediaAsset.radioStationArray, id: \.self) { mediaAsset in
				HStack {
					Image(mediaAsset.imageName)
						.resizable()
						.scaledToFill()
						.frame(width: 100, height: 100, alignment: .center)
						.cornerRadius(5)
						.shadow(radius: 5)
						.padding(.leading)
						.padding(.top)
						.padding(.bottom)
					VStack {
						Spacer()
						Text(mediaAsset.mainText)
							.font(.title2)
							.frame(width: 300, alignment: .leading)
							.padding(.leading)
						Text(mediaAsset.subtitleText)
							.font(.subheadline)
							.foregroundColor(.gray)
							.frame(width: 300, alignment: .leading)
							.padding(.leading)
						Spacer()
						Divider()
					}
				}.padding(.leading)
			}
		}
	}
}
