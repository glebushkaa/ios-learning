import SwiftUI

struct ScrumCardView: View {
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading)  {
            Text(scrum.title).font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
            }
            .font(.caption)
            .labelStyle(.trailingIcon)
        }
        .padding([.all],  12)
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    let scrum = DailyScrum.sampleData[0]
    return ScrumCardView(scrum: scrum).background(scrum.theme.mainColor)
}

