//
//  MediaAsset.swift
//  appleMusic
//
//  Created by Давид Тоноян  on 09.04.2023.
//

import Foundation

struct MediaAsset: Hashable {
	let imageName: String
	let subtitleText: String
	let mainText: String

	static let radioShowArray = [
		MediaAsset(
			imageName: "radioShow1",
			subtitleText: "Плейлист дня",
			mainText: "Легкий поп"
		),
		MediaAsset(
			imageName: "radioShow2",
			subtitleText: "Популярное",
			mainText: "Хиты"
		),
		MediaAsset(
			imageName: "radioShow3",
			subtitleText: "Эксклюзив",
			mainText: "Поп музыка"
		),
		MediaAsset(
			imageName: "radioShow4",
			subtitleText: "Выбор редакции",
			mainText: "Классика рока"
		),
	]

	static let radioStationArray = [
		MediaAsset(
			imageName: "radioStation1",
			subtitleText: "То, что слушают прямо сейчас",
			mainText: "Популярное"
		),
		MediaAsset(
			imageName: "radioStation2",
			subtitleText: "Электронная медитация",
			mainText: "Музыка для расслабления"
		),
		MediaAsset(
			imageName: "radioStation3",
			subtitleText: "Выдающиеся образцы жанра",
			mainText: "Классика"
		)
	]
}
