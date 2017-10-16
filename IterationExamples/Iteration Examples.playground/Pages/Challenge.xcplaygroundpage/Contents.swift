//: [Previous](@previous)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport


//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 600, height: 600)

// Below this line, try combining a loop and four statements that draw lines to generate the goal


//for y in stride(from: 0, through: 300, by: 20) {
    
    //y
    
    //canvas.drawLine (fromX: y, fromY: 0, toX: 300, toY: y)
    
    //canvas.drawLine (fromX: 300-y, fromY: 0, toX: 0, toY: y)
    
    //canvas.drawLine (fromX: y+300, fromY: 300, toX: 0, toY: y)




for x in stride (from: 50, through: 550, by: 100) {
    for p in stride (from: 100, through: 20, by: -20) {
        for y in stride (from: 50, through: 550, by: 100) {
      
            canvas.fillColor = Color.init(hue: random(from: 150, toButNotIncluding: 211), saturation: p-20, brightness: 100, alpha: random(from: 1, toButNotIncluding: 101))
            canvas.drawEllipse(centreX: x, centreY: y, width: p, height: p)
            
        }
    }
}



    
    














/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
