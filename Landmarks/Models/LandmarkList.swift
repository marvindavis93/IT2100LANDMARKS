//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Marv Davis on 5/7/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView{
            List(landmarkData)  { landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark))
            LandmarkRow(landmark: landmark)
           
            }
        
        
        .navigationBarTitle(Text("Landmarks"))
    }
}
}
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["IPHONE SE", "IPHONE XS MAX"], id: \.self) {devicename in
        LandmarkList()
        .previewDevice(PreviewDevice(rawValue: "IPHONE SE"))
    }
}
}
