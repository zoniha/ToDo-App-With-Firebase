import Foundation

struct TODOItem: Decodable {
	var title: String
	var description: String

	init(from decoder: Decoder) {
		do {
			let values = try decoder.container(keyedBy: TODOItemKeys.self)
			self.title = try values.decode(String.self, forKey: .title)
			self.description = try values.decode(String.self, forKey: .description)
		} catch {
			self.title = "Title error"
			self.description = "Desc error"
		}
	}
}

enum TODOItemKeys: String, CodingKey {
	case title
	case description
}
