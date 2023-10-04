//
//  ContentView.swift
//  ToDoApp
//
//  Created by emi oiso on 2023/10/03.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [
        (title:"ジョギングする",completed:false),
        (title:"お花にお水をやる",completed:false),
        (title:"部屋の掃除をする",completed:false),
        (title:"本を読む",completed:false),
        (title:"トイレ掃除をする",completed:false)
    ]
    
    var body: some View {
        NavigationStack{
            List(0..<taskData.count, id: \.self) {index in
                Button {
//                    taskData[index].completed = !taskData[index].completed
//                    or ↕︎
                    taskData[index].completed.toggle()
                } label: {
                    HStack{
//                        if(taskData[index].completed == true){
//                            Image(systemName: "checkmark.circle.fill")
//                        } else {
//                            Image(systemName: "circle")
//                        }
                        // or ↕︎
                        Image(systemName: taskData[index].completed == true ? "checkmark.circle.fill": "circle")
                        Text(taskData[index].title);
                    }
                }
                .foregroundColor(.primary)
            }
            .navigationTitle("ToDoリスト")
        }
    }
}

#Preview {
    ContentView()
}
