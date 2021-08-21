import SwiftUI

struct HomeView: View {
	@State var showSheet = false

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
				showSheet.toggle()
			}, label: {
				Image(systemName: "plus")
			}))
		}
		.sheet(isPresented: $showSheet, content: {
			AddItemView()
		})
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
