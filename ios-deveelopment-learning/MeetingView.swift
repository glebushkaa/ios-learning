import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(
                value: 20,
                total: 100
            ).padding([.bottom], 40)
            HStack {
                VStack(alignment: .leading) {
                    Text(verbatim: "Seconds Elapsed").font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text(verbatim: "Seconds Remaining").font(.caption)
                    Label("600",systemImage:"hourglass.bottomhalf.fill")
                }
            }
            Circle().strokeBorder(lineWidth: 12.0)
            Spacer()
            HStack {
                Text(verbatim: "Speaker 1 of 3").font(.body)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
        }.padding([.leading, .trailing], 40)
    }
}

#Preview {
    MeetingView()
}
