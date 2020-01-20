/// Copyright (c) 2020 Shayan
import Combine

class TaskStore: ObservableObject {
    
  @Published  var tasks = [
        "Clean-Up the bike",
        "go to office",
        "drink water in one hour interval",
        "learn swiftUI and combine",
        "goto shop to buy hard drive",
        "take sister to gym",
        "buy medicine for parents",
        "pay credit bills via SCB",
        "finish presentation before next morning",
        "off to bed early at 10 PM"
        ].map{ Task(name: $0)}
    
    
    /*
    func getTask()-> [Task] {
        var taskStore = [Task]()
        taskStore.append(Task(name: "Clean-Up the bike"))
        taskStore.append(Task(name: "go to office"))
        taskStore.append(Task(name: "drink water in one hour interval"))
        taskStore.append(Task(name: "learn swiftUI and combine"))
        taskStore.append(Task(name: "goto shop to buy hard drive"))
        taskStore.append(Task(name: "take sister to gym"))
        taskStore.append(Task(name: "buy medicine for parents"))
        taskStore.append(Task(name: "pay credit bills via SCB"))
        taskStore.append(Task(name: "finish presentation before next morning"))
        taskStore.append(Task(name: "off to bed early at 10 PM"))
       return taskStore
    }
    */
}
