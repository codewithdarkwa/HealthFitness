//
//  DiscoverView.swift
//  HealthFitness
//
//  Created by Darkwa John on 24/11/2023.
//

import SwiftUI

struct DiscoverView: View {
    @State var searchTerm:String = ""
    
    
    var newReleases = [
    "image2",
    "image1",
    "image4",
    ]
    
    var mostPopular = [
    "image3",
    "image4",
    "image5",
    ]
    var body: some View {
        ZStack{
            Color(.black)
            
            VStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 370, height: 45)
                    .foregroundColor(Color(red:25/255, green: 25/255, blue: 25/255))
                    .overlay{
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                            TextField("", text: $searchTerm, prompt: Text("What are you lookin for? ").foregroundColor(.gray))
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom, 25)
                VStack{
                    HStack{
                        Text("New Releases")
                            .foregroundColor(.white)
                            .font(.subheadline)
                        Spacer()
                        Text("View all")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    .padding(.horizontal)
                    ScrollView(.horizontal){
                        HStack (spacing:20){
                            ForEach(newReleases, id: \.self){ image in
                                WorkOutCard(imageName: image, workoutTitle: "workout")
                            }
                        }
                    }
                    .padding()
                }
                VStack{
                    HStack{
                        Text("Most popular")
                            .foregroundColor(.white)
                            .font(.subheadline)
                        Spacer()
                        Text("View all")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    .padding(.horizontal)
                    ScrollView(.horizontal){
                        HStack (spacing:20){
                            ForEach(mostPopular, id: \.self){ image in
                                WorkOutCard(imageName: image, workoutTitle: "workout")
                            }
                        }
                    }
                    .padding()
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}


struct WorkOutCard: View{
    let imageName: String
    let workoutTitle: String
    var body: some View{
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 160, height: 200)
            .cornerRadius(12)
            .overlay{
                VStack{
                    Spacer()
                    Text(workoutTitle)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                .padding(.horizontal)
            }
    }
}
