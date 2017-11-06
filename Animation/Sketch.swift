import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        let a = 100.0/((50.0-0.0)*(50.0-100.0))
        
        for i in stride(from: 100.0, through: 500.0, by: 100.0) {
        
            x += 0.1
            y = a * pow(x - 50.0, 2.0) + i
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: Int(x), centreY: Int(y), width: 20, height: 20)
        
        }
    
    }
    
}
