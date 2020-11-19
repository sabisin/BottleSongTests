//Solution goes in Sources
//import Foundation

class BottleSong {
    var numberOfBottles: Int
    
    init(numberOfBottles: Int) {
        self.numberOfBottles = numberOfBottles
    }
    
    func generateVersesOfBottlesSong() -> String {
        
        var versesOfBottlesSong = ""
        
        while (numberOfBottles >= 0 ) {
            let bottles = numberOfBottles == 1 ? "bottle" : "bottles"
            let bottlesHanging = numberOfBottles == 2 ? "bottle" : "bottles"
            if numberOfBottles > 0 {
                versesOfBottlesSong.append(
                    """
                    \(numberOfBottles) green \(bottles) hanging on the wall,
                    \(numberOfBottles) green \(bottles) hanging on the wall,
                    And if \(numberOfBottles - 1 == 0 ? "this" : "1") green bottle should accidentally fall,
                    There will \(numberOfBottles - 1 <= 0 ? "no" : "be \(numberOfBottles - 1)") green \(bottlesHanging) hanging on the wall.
                    
                    
                    """
                )
            } else if numberOfBottles == 0 {
                versesOfBottlesSong.append(
                    """
                    No green bottles hanging on the wall,no green bottles hanging on the wall,
                    Go to the store and buy some more, 99 green bottle hanging on the wall
                    """
                )
            }
            numberOfBottles -= 1
        }
        
        return versesOfBottlesSong
        
    }
}
