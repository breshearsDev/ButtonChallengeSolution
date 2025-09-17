//
//  ContentView.swift
//  ButtonChallengeSolution
//
//  Created by Breshears, Rob - CTC on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    
    //Variables
    @State private var counter1 = 0
    @State private var counter2 = 0
    @State private var counter3 = 0
    @State private var total = 0
    @State private var currentColor: Color = .black
    @State private var newName = ""
    
    
    var body: some View {
        VStack {
            //Textfield
            TextField("Enter Name", text: $newName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            //Text to displ;ay user name
            Text("\(newName)")
                .font(.title3)
                .bold()
                .foregroundStyle(currentColor)
            //Text for total count
            Text("\(total)")
                .font(.system(size: 200, weight: .bold, design: .rounded))
                .foregroundStyle(currentColor)
            
            HStack {
                Button {
                    counter1 += 1
                    total += 1
                    currentColor = .blue
                } label: {
                    Circle()
                    //.frame(width: 200, height: 200)
                        .foregroundStyle(.blue)
                        .overlay {
                            Text("\(counter1)")
                                .font(.system(size: 70, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }
                
                Button {
                    counter2 += 2
                    total += 2
                    currentColor = .green
                } label: {
                    Circle()
                    //.frame(width: 200, height: 200)
                        .foregroundStyle(.green)
                        .overlay {
                            Text("\(counter2)")
                                .font(.system(size: 70, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }
                
                Button {
                    counter3 += 3
                    total += 3
                    currentColor = .red
                } label: {
                    Circle()
                    //.frame(width: 200, height: 200)
                        .foregroundStyle(.red)
                        .overlay {
                            Text("\(counter3)")
                                .font(.system(size: 70, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }
            
            
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
