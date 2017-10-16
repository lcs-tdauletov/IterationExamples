//: [Previous](@previous) / [Next](@next)
//: # Exercise
//: Say that we want to create an output image like this on a 300x300 canvas:
//:
//: ![example](example.png "Example")
//:
//: At first glance this may seem like a complicated image.
//:
//: However, if we break down, or *decompose* the problem, into smaller, more easily completed tasks, it's not so bad.
//:
//: Take a look at this storyboard:
//:
//:![storyboard](storyboard.png "Storyboard")
//:
//: Do you think you could combine:
//: * a single loop
//: * a single statement that draws a line
//:
//: ... to create this image?  Give it a try!
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Below this line, try combining a loop and a single statement to generate the goal
for y in stride(from: 25, through: 275, by: 50) {
    
    for x in stride(from: 25, through: 275, by: 50){
        canvas.drawEllipse(centreX: y, centreY: x, width: 3, height: 3)
        var k = random(from: 0, toButNotIncluding: 2)
        if k == 1 {
            canvas.drawLine(fromX: y-25, fromY: x-25, toX: y+25, toY: x+25)
            canvas.lineColor = Color.init(hue: 250, saturation: 100, brightness: 100, alpha: 100)
        } else {
            canvas.drawLine(fromX: y-25, fromY: x+25, toX: y+25, toY: x-25)
             canvas.lineColor = Color.init(hue: 0, saturation: 100, brightness: 100, alpha: 100)
        }
    }
    
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
