import SwiftUI

struct RowView: View {
    var index: Int
    var body: some View {
        HStack {
            Text("\(index)")
                .padding(EdgeInsets(top: 12, leading: 16, bottom: 11, trailing: 16))
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(index: 0)
    }
}
