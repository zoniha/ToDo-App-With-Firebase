import SwiftUI

struct HomeView: View {
	var body: some View {
		NavigationView {
			List {
				ForEach(0...10, id: \.self) { number in
					VStack(alignment: .leading) {
						Text("Title \(number)")
							.font(.title)

						Text("Description \(number)")
					}
				}
			}
			.navigationTitle("My ToDo")
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
