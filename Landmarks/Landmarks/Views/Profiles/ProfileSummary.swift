//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by user on 13.12.2023.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject<ModelData> var modelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(modelData.profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(String(modelData.profile.prefersNotifications))")
                
                Text("Seasonal Photos: \(modelData.profile.seasonalPhoto.rawValue)")
                
                Text("Goal Date: ") + Text(modelData.profile.goalDate, style: .date)
                
                Divider()
                
                VStack (alignment: .leading){
                    Text("Completed Bages")
                        .font(.headline)
                    
                    ScrollView (.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            
                            HikeBadge(name: "Tenth Hike")
                                .hueRotation(Angle(degrees: 45))
                            
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
