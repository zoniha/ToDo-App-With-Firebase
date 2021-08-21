import SwiftUI

struct DetailView: View {
	@State var title: String
	@State var description: String

	var body: some View {
		Text(description)
			.navigationTitle(title)
	}
}

struct DetailView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			DetailView(title: "Test Title", description: "Test Description")
		}
	}
}
