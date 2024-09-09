// The Swift Programming Language
// https://docs.swift.org/swift-book

import Distributed
import WebSocketActors

extension NodeIdentity {
   public static let server = NodeIdentity(id: "server")
}

extension ActorIdentity {
   public static let chatbot = ActorIdentity(id: "chatbot", node: .server)
}

public distributed actor Chatbot {
   public typealias ActorSystem = WebSocketActorSystem

   public distributed func sendMessage(text: String) -> String {
      return "Hello, \(text)!"
   }
}
