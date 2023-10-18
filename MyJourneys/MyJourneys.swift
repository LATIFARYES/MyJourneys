//
//  MyJourneys.swift
//  MyJourneys
//
//  Created by LATIFA on 19/10/2023.
//

//
//  MyJourneys.swift
//  EqletApp
//
//  Created by LATIFA on 14/10/2023.
//

import SwiftUI

struct MyJourneys: View {
    var body: some View {
        
        
        
        NavigationStack{
            ZStack {
                
                
                VStack(spacing: 30){
  
                    CardView(title: "Al Masmak",
                             content: "it is a strong thick building used as a depot for weapons and ammunitions turned into a historic milestone then a museum.",
                             city: "Riyadh",
                             location: 26,
                             imageName: "MASMAK 3")
                    
                    
                    CardView(title: "Al Diriyah",
                             content: "provides you the experience of wandering among a harmonious network of ancient areas and their monuments.",
                             city: "Riyadh",
                             
                             location: 60,
                             imageName: "DIRIYAH3")
                    
                    CardView(title: "Al Murabba",
                             content: "you will notice the unique design of the foyer at the center of the palace, surrounded by all the rooms.",
                             city: "Riyadh",
                             location: 60,
                             imageName: "MURABBA3")




                    // Add space inside vstack to push it contant to top
                    
                    Spacer()
                }
                
            }
            .navigationTitle(" My Journeys")
            
        }
        
    }
    
    
 
    
}

#Preview {
    MyJourneys()
}

struct CardView: View {
    
    var title: String
    var content: String
    
    var city: String
    var location: Int
    
    var imageName: String
    
    var body: some View {
        HStack(alignment: .top) {
            
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 130, height: 140)
                .cornerRadius(16)
            
            
            
            VStack(alignment: .leading, spacing: 15) {
                
                HStack {
                    
                    
                    
                    Text(title)
                        .font(.system(size: 16))
                        .bold()
                        
                    
                   
                    Spacer()
                    
                    
                    VStack {
                        HStack(spacing: 2) {
                            
                            Image(systemName: "mappin.and.ellipse")
                             
                            
                            VStack {
                                Text(city)
                                    .font(.system(size: 12))
                                    .bold()
                                   
                             
                                Text("\(location) km")
                                    .font(.system(size: 8))
                                    .bold()
                               

                            }
                            
                        }
                        
                        
                    }
                    
         
//
//                    Text(title)
//                        .font(.system(size: 16))
//                        .bold()
//                        .foregroundColor(.colortitle)
                    
                    
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                
                Text(content)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 10)
                   
                
            }

            
            
        }
        .frame(width: 350, height: 140)
        .background(.white)
        .cornerRadius(16)
        .shadow(color: .gray, radius: 0.5, x: 0, y: 0)

    }
}

