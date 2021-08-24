	//
	//  ContentView.swift
	//  LuckyRound
	//
	//  Created by Massa Antonio on 24/08/21.
	//

import SwiftUI

struct ContentView: View {
	@State private var credit = 1000
	@State private var slot1 = 1
	@State private var slot2 = 1
	@State private var slot3 = 1

	var body: some View {
		VStack(spacing: 20) {
			Spacer()
			Text("LuckyRound!")
				.font(.largeTitle)
				.fontWeight(.bold)
				.foregroundColor(Color.black)
				.padding()
			Spacer()
			VStack {
				Spacer()
				Text("Credit: \(credit)")
				Spacer()
				HStack {
					Image("fruit\(slot1)")
						.resizable()
						.aspectRatio(contentMode: .fit)
					Image("fruit\(slot2)")
						.resizable()
						.aspectRatio(contentMode: .fit)
					Image("fruit\(slot3)")
						.resizable()
						.aspectRatio(contentMode: .fit)
				}
				Spacer()
				Button("Spin") {
					slot1 = Int.random(in: 1...3)
					slot2 = Int.random(in:1...3)
					slot3 = Int.random(in: 1...3)

					if slot1 == slot2 && slot2 == slot3 {
						credit += 25
					} else {
						credit -= 5
					}
				}
				.padding()
				//Adjust left and right padding to be bigger
				.padding([.leading, .trailing], 40)
						.foregroundColor(.white)
						.background(Color(.systemPink))
						.cornerRadius(25)
						.font(.system(size: 18, weight: .bold, design: .default))
						Spacer()
				Spacer()
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
