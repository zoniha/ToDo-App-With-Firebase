import Combine
import FirebaseFirestore
import FirebaseFirestoreSwift

struct FirebaseService {
	static let db = Firestore.firestore()

	static func fetchTODOs() -> AnyPublisher<[TODOItem], Error> {
		Future<[TODOItem], Error> { promise in
			self.db.collection("todos")
				.getDocuments { (snapshot, error) in
					if let error = error {
						promise(.failure(error))
						return
					}

					guard let snapshot = snapshot else {
						promise(.failure(FirebaseError.badSnapShot))
						return
					}

					var items = [TODOItem]()
					snapshot.documents.forEach { document in
						if let item = try? document.data(as: TODOItem.self) {
							if items.contains(where: { $0.title == item.title }) { return }
							items.append(item)
						}
					}
					promise(.success(items))
				}
		}
		.eraseToAnyPublisher()
	}
}
