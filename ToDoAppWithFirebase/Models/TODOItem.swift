import Foundation

struct TODOItem: Decodable, Identifiable {
	let id = UUID().uuidString
	var title: String
	var description: String

	init(from decoder: Decoder) {
		do {
			let values = try decoder.container(keyedBy: TODOItemKeys.self)
			self.title = try values.decode(String.self, forKey: .title)
			self.description = try values.decode(String.self, forKey: .description)
		} catch {
			self.title = "Title Error"
			self.description = "Desc Error"
		}
	}

	init(title: String, description: String) {
		self.title = title
		self.description = description
	}
}

enum TODOItemKeys: String, CodingKey {
	case title
	case description
}
