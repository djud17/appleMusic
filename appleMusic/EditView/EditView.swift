//
//  EditView.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 29.03.2023.
//

import SwiftUI

struct EditView: View {
	@State private var data = Media.testData
	@Environment(\.dismiss) var dismiss

	var body: some View {
		VStack {
			List {
				ForEach($data, id: \.self, editActions: .move) { $element in
					HStack {
						Toggle("", isOn: $element.isSelected)
							.toggleStyle(CheckboxToggleStyle(style: .circle))
							.foregroundColor(.red)
						Image(systemName: element.imageName)
							.foregroundColor(.red)
						Text(element.name)
							.foregroundColor(.red)
						Spacer()
						Image(systemName: "text.justify")
							.foregroundColor(.gray)
					}
				}
			}
			.listStyle(.grouped)
			.background(Color.white)
			.scrollContentBackground(.hidden)
			PlayerView()
				.overlay(Divider(), alignment: .bottom)
			.toolbar {
				Button("Готово") {
					dismiss()
				}
			}
		}
	}
}

struct EditView_Previews: PreviewProvider {
	static var previews: some View {
		EditView()
	}
}
