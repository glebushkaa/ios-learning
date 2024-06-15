import SwiftUI

struct ScrumsListView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack{
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    ScrumCardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ScrumsListView(
        scrums: .constant(DailyScrum.sampleData)
    )
}

