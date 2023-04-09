//
//  MusicView.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 09.04.2023.
//

import SwiftUI

struct MusicView: View {
	var body: some View {
		NavigationView {
			VStack {
				Spacer()
				TextView()
				Spacer()
				PlayerView()
					.overlay(Divider(), alignment: .bottom)
			}
			.navigationTitle("Медиатека")
			.toolbar {
				NavigationLink(
					destination: EditView(),
					label: {
						Text("Править")
							.foregroundColor(.red)
					}
				)
			}
		}
	}
}
