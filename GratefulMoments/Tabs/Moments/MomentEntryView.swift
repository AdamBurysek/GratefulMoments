//
//  MomentEntryView.swift
//  GratefulMoments
//
//  Created by Adam Buryšek on 14.11.2025.
//

import SwiftUI

struct MomentEntryView: View {
    @State private var title = ""
    @State private var note = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                contentStack
            }
            .scrollDismissesKeyboard(.immediately)
            .navigationTitle("Grateful For")
        }
    }
    
    var contentStack: some View {
        VStack(alignment: .leading){
            TextField(text: $title){
                Text("Title (Required)")
            }
            .font(.title.bold())
            .padding(.top, 48)
            Divider()
            
            TextField("Log your small winds", text: $note, axis: .vertical)
                .multilineTextAlignment(.leading)
                .lineLimit(5...Int.max)
        }
        .padding()
    }
}

#Preview {
    MomentEntryView()
}
