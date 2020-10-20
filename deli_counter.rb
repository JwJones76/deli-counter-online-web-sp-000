  var katzDeliLine = []
  // Function takes in two parameters, the empty arrray and a customer name
  function takeANumber(katzDeliLine, newName,) {
    // Adds the customer name to the array
    katzDeliLine.push(`${newName}`)
    return (`Welcome, ${newName}. You are number ${katzDeliLine.length} in line.`)
    }

  // Function that returns who is currently be served
  function nowServing(katzDeliLine) {
    if (katzDeliLine.length > 0) {
      // .shift method removes the first element from the array and returns the removed element
      return(`Currently serving ${katzDeliLine.shift()}.`)
      } else {
        return "There is nobody waiting to be served!"
        }
        }
  // Function returns who is in line        
  function currentLine(katzDeliLine) {
    if (katzDeliLine.length < 1) {
      return "The line is currently empty."
      } else {
        var newArray = []
        for (var i = 0; i < katzDeliLine.length; i++) {
          // Adds to the new array the customer's number in line plus their name (1.Grace)
          newArray.push(`${i + 1}. ${katzDeliLine[i]}`)
          }
          // .join converts the array to a string, separates each element with a ',' and stores it in finalString
          var finalString = newArray.join(', ');
          // Returns a string the displays who is in line
          return "The line is currently: " + finalString
          }
          }

takeANumber(katzDeliLine, "Ada")
takeANumber(katzDeliLine, "Grace")
takeANumber(katzDeliLine, "Kent")
takeANumber(katzDeliLine, "Erin")
nowServing(katzDeliLine)
currentLine(katzDeliLine