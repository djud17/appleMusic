//
//  TextView.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 29.03.2023.
//

import SwiftUI

struct TextView: View {
	var body: some View {
		VStack {
			Text("Ищите свою музыку?")
				.font(.title)
				.bold()
			Text("Здесь появится купленная вами в iTunes Store музыка.")
				.font(.title2)
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
		}
		.padding()
	}
}
