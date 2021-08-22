import SwiftUI

struct HomeView: View {
	@StateObject var model = ContentViewModel()
	@State var showSheet = false

	var body: some View {
		NavigationView {
			List {
				ForEach(model.items, id: \.id) { item in
					NavigationLink(destination: DetailView(title: item.title, description: item.description)) {
						VStack(alignment: .leading) {
							Text(item.title)
								.font(.title)

							Text(item.description)
						}
					}
				}
			}
			.navigationBarTitle("My ToDo", displayMode: .inline)
			.navigationBarItems(trailing: Button(action: {
				showSheet.toggle()
			}, label: {
				Image(systemName: "plus")
			}))
		}
		.sheet(isPresented: $showSheet, onDismiss: model.loadItems, content: {
			AddItemView()
		})
		.onAppear {
			model.loadItems()
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
