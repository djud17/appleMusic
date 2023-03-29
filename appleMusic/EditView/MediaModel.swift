//
//  MediaModel.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 29.03.2023.
//

import Foundation

struct Media: Hashable {
	let name: String
	let imageName: String
	var isSelected: Bool = false

	static let testData = [
		Media(name: "Плейлисты", imageName: "music.note.list"),
		Media(name: "Артисты", imageName: "music.mic"),
		Media(name: "Альбомы", imageName: "square.stack"),
		Media(name: "Песни", imageName: "music.note"),
		Media(name: "Видеоклипы", imageName: "music.note.tv"),
		Media(name: "Жанры", imageName: "text.insert"),
		Media(name: "Телешоу", imageName: "play.tv.fill"),
		Media(name: "Авторы", imageName: "music.quarternote.3"),
		Media(name: "Загружено", imageName: "arrow.down.circle")
	]
}
