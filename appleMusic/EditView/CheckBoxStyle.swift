//
//  CheckBoxStyle.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 29.03.2023.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
	@Environment(\.isEnabled) var isEnabled
	let style: Style

	func makeBody(configuration: Configuration) -> some View {
		Button(action: {
			configuration.isOn.toggle()
		}, label: {
			HStack {
				Image(
					systemName: configuration.isOn
					? "checkmark.\(style.sfSymbolName).fill"
					: style.sfSymbolName
				)
					.imageScale(.large)
				configuration.label
			}
		})
		.buttonStyle(PlainButtonStyle())
		.disabled(!isEnabled)
	}

	enum Style {
		case circle

		var sfSymbolName: String {
			switch self {
			case .circle:
				return "circle"
			}
		}
	}
}
