//
//  DetailsView.swift
//  shoppingApp
//
//  Created by Marin Buric on 15.11.2023..
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in react: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: react, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct Counter: View {
    @State var count = 0
    var body: some View{
        HStack(spacing: 25){
            Button {
                if count < 10 {
                    count+=1
                }
            } label: {
                Image(systemName: "plus")
            }
            Text("\(count)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button {
                if count != 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
        }
        .foregroundColor(.black)
        .frame(width: 130, height: 50)
        .background(Color("bgColor").opacity(0.15))
        .cornerRadius(12)
        .padding()
    }
}

struct DetailsView: View {
    
    @State var fruit: FruitModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(corners: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Image("\(fruit.image)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                )
            Spacer()
            Text("\(fruit.title.rawValue)")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            Text("\(fruit.size)")
                .padding(.horizontal)
            Text(DetailsConstants.description)
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 5){
                    Text(DetailsConstants.deliveryTimeTxt)
                    Text(DetailsConstants.deliveryTime)
                }
            }.padding(.horizontal)
            
            HStack{
                Text("\(fruit.price)")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                Counter()
            }
            
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Add to cart")
                        .font(.system(.title3))
                        .fontWeight(.medium)
                    )
                .padding(.horizontal)
        }
    }
}

#Preview {
    DetailsView(fruit: FruitModel(id: 1, title: .apple, image: "apple", price: "1.22", color: "1", size: "100g"))
}
