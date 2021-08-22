import SwiftUI
import Combine

final class ContentViewModel: ObservableObject {
	@Published var items = [TODOItem]()
	private var cancellables = Set<AnyCancellable>()

	func loadItems() {
		FirebaseService.fetchTODOs()
			.sink { (completion) in
				switch completion {
				case .failure(let error):
					print(error)
					return
				case .finished:
					return
				}
			} receiveValue: { [weak self] (items) in
				self?.items = items
			}
			.store(in: &cancellables)
	}
}
