import SwiftUI

@main
struct LearningApp: App {
    @Binding var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsListView(scrums: $scrums)
        }
    }
}
