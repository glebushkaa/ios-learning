import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsListView(scrums: DailyScrum.sampleData)
        }
    }
}
