//
//  ListView.swift
//  TodoListSwiftUI
//
//  Created by 김승원 on 3/8/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "abcd",
        "efgh",
        "ijkl",
        "mnop",
        "qrst",
        "uvwx",
        "yzab",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("TodoList 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(
                "Add",
                destination: AddView()
            )
        )
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
