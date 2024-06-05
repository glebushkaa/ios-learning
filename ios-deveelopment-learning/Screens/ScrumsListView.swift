import SwiftUI

struct ScrumsListView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums) { scrum in
            ScrumCardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsListView(
        scrums: DailyScrum.sampleData
    )
}

