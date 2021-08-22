import SwiftUI

struct DetailView: View {
	@State var title: String
	@State var description: String

	var body: some View {
		NavigationView {
			Text(description)
				.padding()
				.navigationTitle(title)
		}
	}
}

struct DetailView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			DetailView(title: "Test Title", description: "Test Description")
		}
	}
}
