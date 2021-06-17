//
//  TaskFiles.swift
//  Organia
//
//  Created by Florian Doppler on 23.04.21.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
