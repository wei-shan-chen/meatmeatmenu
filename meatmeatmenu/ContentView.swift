//
//  ContentView.swift
//  meatmeatmenu
//
//  Created by User03 on 2020/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            TabView {
            
                List{
                    ScrollView( .horizontal, showsIndicators:false){
                        HStack(spacing : 20){
                            ForEach(0..<6){(item)in
                                Image("family\(item)").resizable()
                                    .scaledToFill()
                                    .frame(width: 200)
                                    .clipped()
                                    .border(Color.black, width: 2)
                            }
                        }
                        .frame(height: 200)
                    }
                    VStack(alignment: .leading){
                        Text("修圖~")
                        HStack{
                            NavigationLink(
                                destination:Rightfat1View()){
                                Image("fat1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 170)
                                    .clipped()
                            }
                            NavigationLink(
                                destination:Rightmeat1View()){
                                Image("meat1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180)
                                    .clipped()
                            }
                        }
                        .frame(height:170)
                    }
                    .foregroundColor(Color(red: 1, green: 0.2, blue: 0.7))
                    VStack(alignment: .leading){
                        Text("驚喜包~")
                        HStack{
                            NavigationLink(
                                destination:Rightfat2View()){
                                Image("fat2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180)
                                    .clipped()
                            }
                            NavigationLink(
                                destination:Rightmeat2View()){
                                Image("meat2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180)
                                    .clipped()
                            }
                        }
                        .frame(height:170)
                    }
                    .foregroundColor(Color(red: 1, green: 0.4, blue: 0.7))
                    HStack{
                        Image("fat3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170)
                            .clipped()
                        Image("meat3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170)
                            .clipped()
                    }
                    .frame(height:170)
                }
                .padding().background(Color(red: 1, green: 0.6, blue: 0.6)).cornerRadius(20)
            
            
            
            Color.blue
            }
            .tabViewStyle(PageTabViewStyle())
            .navigationBarTitle("肉肉家族")
        }
        
    }
}
struct Rightmeat1View: View{
    @State private var scale : CGFloat = 1
    @State private var brightness : Double = 0
    @State private var blurness : CGFloat = 0
    @State private var rotation : Double = 0
    @State private var contract : Double = 1
    @State private var grayscale : Double = 1
    @State private var saturation : Double = 1
    var body: some View {
        GeometryReader{geometry in
            VStack{
                Image("meat1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .clipped()
                    .scaleEffect(scale)
                    .brightness(brightness)
                    .blur(radius: blurness)
                    .rotationEffect(.degrees(rotation))
                    .contrast(contract)
                    .grayscale(grayscale)
                    .saturation(saturation)
                Form{
                    VStack{
                        Group{
                            HStack{
                                Text("大小")
                                Slider(value: $scale,in: 0...1,minimumValueLabel:Image(systemName: "magnifyingglass").imageScale(.small),maximumValueLabel:Image(systemName: "magnifyingglass").imageScale(.large)
                                    ){
                                    Text("")
                                }
                                .accentColor(.red)
                                }
                        }
                        Group{
                            HStack{
                                Text("亮度")
                                Slider(value: $brightness,in: 0...1,minimumValueLabel:Image(systemName: "sun.max.fill").imageScale(.small),maximumValueLabel:Image(systemName: "sun.max.fill").imageScale(.large)){
                                    Text("")
                                }
                                .accentColor(.orange)
                            }
                        }
                        Group{
                            HStack{
                                Text("模糊")
                                Slider(value:$blurness,in : 0...10,minimumValueLabel:Image(systemName: "drop").imageScale(.small),maximumValueLabel:Image(systemName: "drop").imageScale(.large)){
                                    Text("")
                                }
                                .accentColor(.yellow)
                            }
                        }
                        Group{
                            HStack{
                                Text("旋轉")
                                Slider(value: $rotation, in: 0...360,minimumValueLabel:Image(systemName: "person.fill").imageScale(.small),maximumValueLabel:Image(systemName: "person.fill.turn.down").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.green)
                            }
                        }
                        Group{
                            HStack{
                                Text("對比")
                                Slider(value: $contract, in: 1...3,minimumValueLabel:Image(systemName: "arrow.right").imageScale(.small),maximumValueLabel:Image(systemName: "arrow.left").imageScale(.large)) {
                                    Text("")
                                }
                            }
                        }
                        Group{
                            HStack{
                                Text("灰階")
                                Slider(value: $contract, in: 0...2,minimumValueLabel:Image(systemName: "circle").imageScale(.small),maximumValueLabel:Image(systemName: "circle.fill").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.purple)
                            }
                        }
                        Group{
                            HStack{
                                Text("飽和度")
                                Slider(value: $contract, in: 0...10,minimumValueLabel:Image(systemName: "wifi.slash").imageScale(.small),maximumValueLabel:Image(systemName: "wifi").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.black)
                            }
                        }
                    }
                }
            }
        }.navigationTitle("修圖")
    }
}
struct Rightmeat1View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Rightmeat1View()
        }
    }
}
struct Rightfat1View: View{
    @State private var scale : CGFloat = 1
    @State private var brightness : Double = 0
    @State private var blurness : CGFloat = 0
    @State private var rotation : Double = 0
    @State private var contract : Double = 1
    @State private var grayscale : Double = 1
    @State private var saturation : Double = 1
    var body: some View {
        GeometryReader{geometry in
            VStack{
                Image("fat1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .clipped()
                    .scaleEffect(scale)
                    .brightness(brightness)
                    .blur(radius: blurness)
                    .rotationEffect(.degrees(rotation))
                    .contrast(contract)
                    .grayscale(grayscale)
                    .saturation(saturation)
                Form{
                    VStack{
                        Group{
                            HStack{
                                Text("大小")
                                Slider(value: $scale,in: 0...1,minimumValueLabel:Image(systemName: "magnifyingglass").imageScale(.small),maximumValueLabel:Image(systemName: "magnifyingglass").imageScale(.large)
                                    ){
                                    Text("")
                                }
                                .accentColor(.red)
                                }
                        }
                        Group{
                            HStack{
                                Text("亮度")
                                Slider(value: $brightness,in: 0...1,minimumValueLabel:Image(systemName: "sun.max.fill").imageScale(.small),maximumValueLabel:Image(systemName: "sun.max.fill").imageScale(.large)){
                                    Text("")
                                }
                                .accentColor(.orange)
                            }
                        }
                        Group{
                            HStack{
                                Text("模糊")
                                Slider(value:$blurness,in : 0...10,minimumValueLabel:Image(systemName: "drop").imageScale(.small),maximumValueLabel:Image(systemName: "drop").imageScale(.large)){
                                    Text("")
                                }
                                .accentColor(.yellow)
                            }
                        }
                        Group{
                            HStack{
                                Text("旋轉")
                                Slider(value: $rotation, in: 0...360,minimumValueLabel:Image(systemName: "person.fill").imageScale(.small),maximumValueLabel:Image(systemName: "person.fill.turn.down").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.green)
                            }
                        }
                        Group{
                            HStack{
                                Text("對比")
                                Slider(value: $contract, in: 1...3,minimumValueLabel:Image(systemName: "arrow.right").imageScale(.small),maximumValueLabel:Image(systemName: "arrow.left").imageScale(.large)) {
                                    Text("")
                                }
                            }
                        }
                        Group{
                            HStack{
                                Text("灰階")
                                Slider(value: $contract, in: 0...2,minimumValueLabel:Image(systemName: "circle").imageScale(.small),maximumValueLabel:Image(systemName: "circle.fill").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.purple)
                            }
                        }
                        Group{
                            HStack{
                                Text("飽和度")
                                Slider(value: $contract, in: 0...10,minimumValueLabel:Image(systemName: "wifi.slash").imageScale(.small),maximumValueLabel:Image(systemName: "wifi").imageScale(.large)) {
                                    Text("")
                                }
                                .accentColor(.black)
                            }
                        }
                    }
                }
            }
        }.navigationTitle("修圖")
    }
}
struct Rightfat1View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Rightfat1View()
        }
    }
}
struct Rightmeat2View: View{
    @State private var show = false
    var body: some View {
        VStack{
            Button(show ? "hi" : "click"){
                show.toggle()
            }
            if show{
                Image("meat2.1")
                    .transition(.customTransition)
            }else{
                Image("meat2.1")
                    .hidden()
            }
            
        }
        .animation(.easeInOut(duration: 5))
    }
}
extension AnyTransition{
    static var customTransition : AnyTransition{
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.offset(x: 200, y: 200)
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
struct Rightmeat2View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Rightmeat2View()
        }
    }
}
struct Rightfat2View: View{
    @State private var show = false
    var body: some View {
        VStack{
            Button(show ? "hi" : "bomb"){
                show.toggle()
            }
            if show{
                Image("fat2.1")
                    .transition(.customTransition1)
            }else{
                Image("fat2.1")
                    .hidden()
            }
            
        }
        .animation(.spring(dampingFraction:0.5))
    }
}
extension AnyTransition{
    static var customTransition1 : AnyTransition{
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.offset(x: 200, y: -200)
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
struct Rightfat2View_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            Rightfat2View()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 struct ContentView: View {

     var body: some View {
         NavigationView {
             
                 List {
                     ForEach(0 ..< 100) { item in
                         Text("\(item)")
                     }
                 }
                 .onAppear(perform: {
                     let barAppearance = UINavigationBarAppearance()
                     barAppearance.backgroundColor = UIColor.red
                     UINavigationBar.appearance().standardAppearance = barAppearance

                     UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
                 })
             
         }
     }
 }
 */
