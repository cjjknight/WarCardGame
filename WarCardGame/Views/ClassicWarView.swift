import SwiftUI

struct ClassicWarView: View {
    @State private var playerCard = "card_back"
    @State private var cpuCard = "card_back"
    @State private var playerScore = 0
    @State private var cpuScore = 0

    let cardSuits = ["hearts", "diamonds", "clubs", "spades"]
    let cardValues = ["A", "02", "03", "04", "05", "06", "07", "08", "09", "10", "J", "Q", "K"]

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all) // Simple background color

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: dealCards) {
                    Text("Deal")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                        Text("\(playerScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                        Text("\(cpuScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }

    func dealCards() {
        let playerRandSuit = cardSuits.randomElement()!
        let playerRandValue = cardValues.randomElement()!
        let cpuRandSuit = cardSuits.randomElement()!
        let cpuRandValue = cardValues.randomElement()!

        playerCard = "card_\(playerRandSuit)_\(playerRandValue)"
        cpuCard = "card_\(cpuRandSuit)_\(cpuRandValue)"

        let playerCardValue = cardValues.firstIndex(of: playerRandValue)!
        let cpuCardValue = cardValues.firstIndex(of: cpuRandValue)!

        let scores = ClassicWar.dealCards(playerCardValue: playerCardValue, cpuCardValue: cpuCardValue)
        playerScore += scores.playerScore
        cpuScore += scores.cpuScore
    }
}

struct ClassicWarView_Previews: PreviewProvider {
    static var previews: some View {
        ClassicWarView()
    }
}
