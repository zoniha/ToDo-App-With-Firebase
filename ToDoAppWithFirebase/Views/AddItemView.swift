import SwiftUI

struct AddItemView: View {
	@StateObject var model = AddItemViewModel()

	var body: some View {
		NavigationView {
			Form {
				TextField("TODO title", text: $model.title)
				TextField("TODO description", text: $model.description)

				Button("Create", action: model.create)
			}
			.navigationTitle("Create new TODO")
		}
	}
}

struct AddItemView_Previews: PreviewProvider {
	static var previews: some View {
		AddItemView()
	}
}
