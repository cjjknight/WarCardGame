import SwiftUI

struct GameSelectionView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Select Game Variation")
                    .font(.largeTitle)
                    .padding()

                NavigationLink(destination: ClassicWarView()) {
                    Text("Classic War")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.bottom, 10)
                }

                Spacer()
            }
        }
    }
}

struct GameSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GameSelectionView()
    }
}
