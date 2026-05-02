//
//  ChatLogView.swift
//  SwiftUIFirebaseChat
//
//  Created by Arafath Hossain on 2/5/26.
//

import SwiftUI

struct ChatLogView: View {
    
    let chatUser: ChatUser?
    
    @State var chatText = ""
    
    var body: some View {
        ZStack {
            messagesView
            VStack {
                Spacer()
                chatBottomBar
                    .background(Color.white)
            }
        }
        .navigationTitle(chatUser?.email ?? "")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    private var messagesView: some View {
        ScrollView {
            ForEach(0..<20) { num in
                HStack {
                    Spacer()
                    HStack {
                        Text("Fake Message for now")
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                }
                .padding(.horizontal)
                .padding(.top, 8)
            }
            
            HStack {
                Spacer()
            }
        }
        .clipped()
        .background(Color(.init(white: 0.9, alpha: 1)))
        .padding(.bottom, 65)
    }
    
    private var chatBottomBar: some View {
        HStack(spacing: 16) {
            Image(systemName: "photo.on.rectangle")
                .font(.system(size: 24))
                .foregroundColor(Color(.darkGray))
            TextField("Description", text: $chatText)
            Button {
                
            } label: {
                Text("Send")
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color.blue)
            .cornerRadius(8)

        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

#Preview {
    NavigationView {
        ChatLogView(
            chatUser: .init(
                data: [
                    "uid": "dkfjdkfjkdfjkd",
                    "email": "Waterfall@gamil.com"
                ]
            )
        )
    }
    
}
