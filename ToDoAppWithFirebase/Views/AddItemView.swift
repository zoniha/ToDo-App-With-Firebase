import SwiftUI

struct AddItemView: View {
	@State var title = ""
	@State var description = ""

    var body: some View {
		NavigationView {
			Form {
				TextField("TODO title", text: $title)
				TextField("TODO description", text: $description)

				Button("Create", action: {})
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
