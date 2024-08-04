import Foundation

class ClassicWar {
    static func dealCards(playerCardValue: Int, cpuCardValue: Int) -> (playerScore: Int, cpuScore: Int) {
        var playerScore = 0
        var cpuScore = 0
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
        
        return (playerScore, cpuScore)
    }
}
