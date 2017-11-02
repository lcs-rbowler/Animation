import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 600)
        
        // Set starting position
        canvas.translate(byX: 400, byY: 300)
        
        // Draw pumpkin stem
        //??
        
        // Draw pumpkin body
        canvas.borderColor = Color.orange
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: 30, centreY: 0, width: 150, height: 200)
        canvas.drawEllipse(centreX: -30, centreY: 0, width: 150, height: 200)
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Set flame colour
        let flame = Color.init(hue: random(from: 20, toButNotIncluding: 41), saturation: 100, brightness: 100, alpha: 100)
      
        // Set starting position
        canvas.translate(byX: 400, byY: 300)
        
        // Remove borders for everything else
        canvas.drawShapesWithBorders = false
    
        // Draw eyes and mouth
        canvas.fillColor = flame
        canvas.drawRectangle(centreX: 40, centreY: 30, width: 70, height: 50)
        canvas.drawRectangle(centreX: -40, centreY: 30, width: 70, height: 50)
        
        canvas.fillColor = Color.orange
        canvas.rotate(by: 25)
        canvas.drawRectangle(centreX: 80, centreY: 0, width: 30, height: 70)
        canvas.drawRectangle(centreX: 10, centreY: 40, width: 30, height: 70)
        canvas.rotate(by: -50)
        canvas.drawRectangle(centreX: 5, centreY: 40, width: 30, height: 70)
        canvas.drawRectangle(centreX: -75, centreY: 0, width: 40, height: 70)
        canvas.rotate(by: 25)
        canvas.drawRectangle(centreX: 15, centreY: 50, width: 20, height: 20)
    }
    
}
