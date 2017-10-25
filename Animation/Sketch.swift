import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        
        // Set the difference for x
        dx = 3
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Claer Background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        
        // Check position and bounce back if touching edge
        if x > 480 {
           dx = -3
        }
        if x < 20 {
            dx = 3
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.init(hue: x, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
    }
    
}
