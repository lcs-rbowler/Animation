import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var up : Int
    var down : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        canvas.drawShapesWithBorders = false
        // Set starting position
        up = 250
        down = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        up -= 1
        down += 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: up, centreY: up, width: 50, height: 50)
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: up, centreY: down, width: 50, height: 50)
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: down, centreY: up, width: 50, height: 50)
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: down, centreY: down, width: 50, height: 50)
    }
    
}
