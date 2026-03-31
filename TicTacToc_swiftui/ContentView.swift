//
//  ContentView.swift
//  TicTacToc_swiftui
//
//  Created by CDMI on 13/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var array = ["","","","","","","","",""]
    @State var won = ""
    @State var turn = "X"
    @State var wonturn = ""
    @State var wonaction = true
    @State var Xwin = 0
    @State var Owin = 0
    @State var tie = 0
    
    var body: some View {
        GeometryReader { geo in
            let size = min(geo.size.width, geo.size.height)
            let box = ( size - 15 ) / 4
            ZStack{
                Color(.darkGray)
                    .ignoresSafeArea()
                VStack(){
                    HStack(spacing : 20){
                        
                        Button(action: {
                            
                            
                        }) {
                            Image("x")
                                .resizable()
                                .frame(width: 30,height: 30)
                            Image("o")
                                .resizable()
                                .frame(width: 30,height: 30)
                        }
                        
                        .frame(maxWidth: 80 , maxHeight: 40)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.caption)
                        Spacer()
                        
                        Label("TURN: \(turn)",systemImage: "")
                            .frame(maxWidth: box, maxHeight: box/2)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.title2)
                        
                        Spacer()
                        Button(action: {
                            array = ["","","","","","","","",""]
                            won = ""
                            turn = "X"
                            wonturn = ""
                            wonaction = true
                            
                            
                        }) {
                            Image(systemName: "repeat")
                        }
                        .frame(maxWidth: box / 2 , maxHeight: box / 2)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.largeTitle)
                        
                    }
                    .padding(.horizontal, 10.0)
                    Spacer()
                    
                    VStack(spacing : 30) {
                        HStack(spacing : 30){
                            Button(action : {
                                buttonClick(0)
                            }){
                                Text(array[0])
                                    .frame(width: 200,height: 200)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                            
                            Button(action : {
                                buttonClick(1)
                            }){
                                Text(array[1])
                                    .frame(width: 90,height: 90)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                            Button(action : {
                                buttonClick(2)
                            }){
                                Text(array[2])
                                    .frame(width: 90,height: 90)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                        }
                        HStack(spacing : 30){
                            Button(action : {
                                buttonClick(3)
                            }){
                                Text(array[3])
                                    .frame(width: 90,height: 90)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                            Button(action : {
                                buttonClick(4)
                            }){
                                Text(array[4])
                                    .frame(width: 90,height: 90)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                            Button(action : {
                                buttonClick(5)
                            }){
                                Text(array[5])
                                    .frame(width: 90,height: 90)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                        }
                        HStack(spacing : 30){
                            Button(action : {
                                buttonClick(6)
                            }){
                                Text(array[6])
                                    .frame(width: 90,height: 90)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                            Button(action : {
                                buttonClick(7)
                            }){
                                Text(array[7])
                                    .frame(width: 90,height: 90)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                            Button(action : {
                                buttonClick(8)
                            }){
                                Text(array[8])
                                    .frame(width: 90,height: 90)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: box , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                            
                        }
                        HStack(spacing : 30){
                            Label("X : \(Xwin)",systemImage: "")
                                .frame(maxWidth: box , maxHeight: box / 1.5)
                                .background(.mint)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.largeTitle)
                            
                            Label("tie : \(tie)",systemImage: "")
                                .frame(maxWidth: box , maxHeight: box / 1.5)
                                .background(.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.largeTitle)
                            
                            Label("O : \(Owin)",systemImage: "")
                                .frame(maxWidth: box , maxHeight: box / 1.5)
                                .background(.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.largeTitle)
                            
                        }
                        .padding(.top, 25.0)
                        
                        
                        Label("\(wonturn)\(won)",systemImage: "")
                            .frame(maxWidth: .infinity , maxHeight: box)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.largeTitle)
                    }
                    Spacer()
                }
            }
        }
    }
    func buttonClick(_ index : Int) {
        if array[index] == "" && won == "" {
            array[index] = turn
            if wonaction {
                if turn == "X" {
                    array[index] = "X"
                    turn = "O"
                    
                }else{
                    array[index] = "O"
                    turn = "X"
                    
                }
            }else{
                array[8] = "        "
            }
            winCheck()
//            if (array[0] != "") && (array[1] != "") && (array[2] != "") && (array[3] != "") && (array[4] != "") && (array[5] != "") && (array[6] != "") && (array[7] != "") && (array[8] != "") && wonturn == ""{
//                tie = tie + 1
//            }
        }
    }
    func winCheck() {
        if  (array[0] == "X" && array[1] == "X" && array[2] == "X") ||
                (array[3] == "X" && array[4] == "X" && array[5] == "X") ||
                (array[6] == "X" && array[7] == "X" && array[8] == "X") ||
                (array[0] == "X" && array[4] == "X" && array[8] == "X") ||
                (array[2] == "X" && array[4] == "X" && array[6] == "X") ||
                (array[0] == "X" && array[3] == "X" && array[6] == "X") ||
                (array[1] == "X" && array[4] == "X" && array[7] == "X") ||
                (array[2] == "X" && array[5] == "X" && array[8] == "X") ||
                (array[0] == "O" && array[1] == "O" && array[2] == "O") ||
                (array[3] == "O" && array[4] == "O" && array[5] == "O") ||
                (array[6] == "O" && array[7] == "O" && array[8] == "O") ||
                (array[0] == "O" && array[4] == "O" && array[8] == "O") ||
                (array[2] == "O" && array[4] == "O" && array[6] == "O") ||
                (array[0] == "O" && array[3] == "O" && array[6] == "O") ||
                (array[1] == "O" && array[4] == "O" && array[7] == "O") ||
                (array[2] == "O" && array[5] == "O" && array[8] == "O"){
            won = " : is won the game"
            wonaction = false
            if turn == "X" {
                wonturn = "O"
            }else{
                wonturn = "X"
            }
            if wonturn == "O"{
                Owin = Owin + 1
            }
            if wonturn == "X"{
                Xwin = Xwin + 1
            }
            
        }else{
            if (array[0] != "") && (array[1] != "") && (array[2] != "") && (array[3] != "") && (array[4] != "") && (array[5] != "") && (array[6] != "") && (array[7] != "") && (array[8] != "") {
                tie = tie + 1
            }
        }
    }
}

#Preview {
    ContentView()
}
