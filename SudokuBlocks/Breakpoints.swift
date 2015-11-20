import Cocoa

/*
we represent a breakpoint
with a data structure that holds all the info
needed to revert to that point

we need the move list
we need the current dataD

do we need the original puzzle?
probably not
*/

var breakPointList = [Breakpoint]()

struct Breakpoint {
    var a: [Move]
    var D: DataSet
    init(arr: [Move] = [], dict: DataSet = DataSet() ) {
        a = arr
        D = dict
    }
}

func addNewBreakpoint() {
    let b = Breakpoint(arr: moveL, dict: dataD)
    breakPointList.append(b)
    // Swift.print("\(b)")
}

func restoreLastBreakpoint() {
    if breakPointList.count == 0 {
        return
    }
    let bp = breakPointList.removeLast()
    moveL = bp.a
    dataD = bp.D
    refreshScreen()
}

/*

Not implemented yet

/*
data structure to hold the tree formed by
traversing decision points (breakpoints)

*/

struct Node {
    let key: String
    let color: NSColor
    let left: String
    let right: String
    let active: Bool
    init (k: String, c: NSColor, l: String,
        r: String, active: Bool = true) {
        key = k
        color = c
        left = l
        right = r
    }
}

let node = Node(k: "root", c: black, l: "", r: "")
var decisionTree: [String:Node] = ["root":node]

// construct decisionTree upon adding a breakpoint

func addBranchToDecisionTree(key:String) {
    // find the color from the value
    let value = dataD[key]!.first!
    let i = value - 1
    let c = cL[i]
    let  =
}

*/

