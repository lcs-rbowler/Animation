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
    var x2 : Int
    var y2 : Int
    var dx2 : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting positions
        x = 150
        y = 250
        x2 = 250
        y2 = 250
        
        
        // Set the difference for x and y
        dx = 3
        dy = 3
        dx2 = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Clear Background
        canvas.drawShapesWithFill = true
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        y += dy
        x2 += dx2
        
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
        if x2 > 450 {
            dx2 = -1
        }
        if x2 < 50 {
            dx2 = 1
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawShapesWithFill = false
        canvas.drawEllipse(centreX: x, centreY: y, width: 100, height: 100)
        canvas.drawEllipse(centreX: x2, centreY: y2, width: 300, height: 300)
        
        // Calculate distance between circle centres
        let distance = sqrt(Double(((x2-x)*(x2-x))+((y2-y)*(y2-y))))
        
        // Draw the line
        if distance <= 200 {
            canvas.lineColor = Color.red
            canvas.drawLine(fromX: x, fromY: y, toX: x2, toY: y2)
        }
        
    }
    
}
