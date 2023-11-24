//
//  Data.swift
//  linkedinClone
//
//  Created by Marin Buric on 23.11.2023..
//

import SwiftUI

struct DataConstants {
    static let networkData: [NetworkModel] = [
        .init(id: 0, name: "Marry", position: "SDE at Paytm", mutual: 34, image: "00"),
        .init(id: 1, name: "Peter", position: "Assistant Manager", mutual: 45, image: "01"),
        .init(id: 2, name: "Jenny", position: "SDE at Ginger ", mutual: 67, image: "02"),
        .init(id: 3, name: "Sara", position: "open to work", mutual: 103, image: "03"),
        .init(id: 4, name: "Kia", position: "GET at HCL", mutual: 12, image: "04"),
        .init(id: 5, name: "Shristi", position: "Student", mutual: 78, image: "05"),
        .init(id: 6, name: "Rachel", position: "intern at iNeuron", mutual: 90, image: "00"),
        .init(id: 7, name: "John", position: "HR at Intel", mutual: 34, image: "01"),
        .init(id: 8, name: "Tiya", position: "purchase Engineer", mutual: 50, image: "02"),
        .init(id: 9, name: "Pheobe", position: "Product Manager", mutual: 86, image: "03"),
        .init(id: 10, name: "Monica", position: "Data Analyst", mutual: 55, image: "04"),
        .init(id: 11, name: "Joe", position: "Software Development intern", mutual: 42, image: "05"),
        .init(id: 12, name: "Charel", position: "SDE-II ", mutual: 30, image: "00"),
        .init(id: 13, name: "Chandler", position: "Mobile Developer", mutual: 71, image: "01"),
        .init(id: 14, name: "Max", position: "QA", mutual: 95, image: "02"),
        .init(id: 15, name: "Nancy", position: "Frontend Developer", mutual: 18, image: "03")
    ]
   static let socialView: [SocialViewModel] = [
       .init(ids: 0, image: "hand.thumbsup", title: "Like"),
       .init(ids: 1, image: "text.bubble", title: "Comment"),
       .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
       .init(ids: 3, image: "paperplane.fill", title: "Send")
   ]
   static let postData: [PostData] = [
        .init(id: 0, image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
        .init(id: 1, image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
        .init(id: 2, image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
        .init(id: 3, image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
        .init(id: 4, image: "4", title: "Intel", followers: 1234, profileImage: "04"),
        .init(id: 5, image: "5", title: "HP", followers: 567, profileImage: "05"),
        .init(id: 6, image: "6", title: "JungleWorks", followers: 346, profileImage: "00")
        
    ]
    static let notifData: [NotifModel] = [
        .init(id: 0, name: "Marry", profilePhoto: "00", notifText: "Most relatable content of the day", time: "20m"),
        .init(id: 1, name: "John", profilePhoto: "01", notifText: "Liked your post", time: "1h"),
        .init(id: 2, name: "Alice", profilePhoto: "02", notifText: "Started following you", time: "2h"),
        .init(id: 3, name: "Bob", profilePhoto: "03", notifText: "Mentioned you in a comment", time: "3h"),
        .init(id: 4, name: "Charlie", profilePhoto: "04", notifText: "Reacted to your story", time: "4h"),
        .init(id: 5, name: "David", profilePhoto: "05", notifText: "Sent you a connection request", time: "5h"),
        .init(id: 6, name: "Charlie", profilePhoto: "04", notifText: "Congratulated you on your work anniversary", time: "6h"),
        .init(id: 7, name: "Marry", profilePhoto: "00", notifText: "Invited you to an event", time: "7h"),
        .init(id: 8, name: "John", profilePhoto: "01", notifText: "Shared a post you might like", time: "8h"),
        .init(id: 9, name: "Alice", profilePhoto: "02", notifText: "Tagged you in a photo", time: "9h"),
        .init(id: 10, name: "David", profilePhoto: "05", notifText: "Commented on your post", time: "10h")
    ]
}
