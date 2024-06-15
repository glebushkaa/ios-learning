import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        Text(theme.rawValue)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

#Preview {
    return ThemeView(theme: .yellow)
}
