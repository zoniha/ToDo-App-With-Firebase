import Foundation

struct Task {
	var title: String
	var completed: Bool
}

#if DEBUG
let testDataTasks = [
	Task(title: "Implement the UI", completed: true),
	Task(title: "Connect to firebase", completed: false),
	Task(title: "???", completed: false),
	Task(title: "Waka", completed: false)
]
#endif
