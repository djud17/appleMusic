//
//  RadioShowView.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 09.04.2023.
//

import SwiftUI

struct RadioShowView: View {
	let rows = [
		GridItem(.flexible())
	]

	var body: some View {
		ScrollView(.horizontal) {
			LazyHGrid(rows: rows) {
				ForEach(MediaAsset.radioShowArray, id: \.self) { mediaAsset in
					VStack(alignment: .leading) {
						Text(mediaAsset.subtitleText)
							.font(.subheadline)
							.foregroundColor(.gray)
							.multilineTextAlignment(.leading)
							.padding(.leading)
						Text(mediaAsset.mainText)
							.font(.title)
							.padding(.leading)
						Image(mediaAsset.imageName)
							.resizable()
							.scaledToFill()
							.frame(width: 300, height: 200, alignment: .center)
							.cornerRadius(10)
							.shadow(radius: 5)
							.padding(.bottom)
							.padding(.leading)
					}
				}
			}
		}
	}
}
