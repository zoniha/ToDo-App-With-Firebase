import SwiftUI

struct HomeView: View {
	var body: some View {
		NavigationView {
			List {
				ForEach(0...10, id: \.self) { number in
					NavigationLink(destination: Text("\(number)")) {
						VStack(alignment: .leading) {
							Text("Title \(number)")
								.font(.title)

							Text("Description \(number)")
						}
					}
				}
			}
			.navigationTitle("My ToDo")
			.navigationBarItems(trailing: Button(action: {

			}, label: {
				Image(systemName: "plus")
			}))
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
