//
//  PlayerView.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 29.03.2023.
//

import SwiftUI

struct PlayerView: View {
	var body: some View {
		HStack {
			Image("album")
				.resizable()
				.scaledToFill()
				.frame(width: 50, height: 50, alignment: .center)
				.cornerRadius(10)
				.shadow(radius: 5)
				.padding()

			Text("Не исполняется")
				.font(.system(size: 20))
				.multilineTextAlignment(.leading)
			Spacer()

			Button {
				print("Play tapped")
			} label: {
				Image(systemName: "play.fill")
					.resizable()
					.scaledToFill()
					.accentColor(.black)
			}
			.frame(width: 20, height: 20, alignment: .center)
			.padding()

			Button {
				print("Forward tapped")
			} label: {
				Image(systemName: "forward.fill")
					.resizable()
					.scaledToFill()
					.accentColor(.black)
			}
			.frame(width: 20, height: 20, alignment: .center)
			.padding()
		}
		.frame(
			  minWidth: 0,
			  maxWidth: .infinity,
			  alignment: .center
		)
		.background(Color.lightGray)
	}
}

extension Color {
	static let lightGray = Color(uiColor: .systemGray6)
}
