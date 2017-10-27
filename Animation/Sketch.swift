import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx : Int
    var y : Int
    var dy : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 20, toButNotIncluding: 481)
        y = random(from: 20, toButNotIncluding: 481)
        
        // Set the difference for x and y
        dx = 3
        dy = 3
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Claer Background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        y += dy
        
        // Check position and bounce back if touching edge
        if x > 480 {
            dx = -3
        }
        if x < 20 {
            dx = 3
        }
        if y > 480 {
            dy = -3
        }
        if y < 20 {
            dy = 3
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}

