import SwiftUI

/// A custom button view.
struct CustomButton: View {
    let text: String
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    
    var body: some View {
        Button(action: {
        }) {
            Text(text)
                .foregroundColor(.white)
                .font(.headline)
                .frame(width: 200, height: 50)
                .background(.orangeEdu)
                .cornerRadius(30)
        }
    }
}

/// A tab view bar.
struct tabViewBar: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
            }
            Text("Alerts")
                .tabItem {
                    Label("Alerts", systemImage: "bell")
            }
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
            }
        }
    }
}

/// A big orange button with text and an image.
struct OrangeBigButton: View {
    let text: String
    let imageButton: Image
    
    var body: some View {
        Button(action: {
            // Action to perform when the button is tapped
        }) {
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 120)
                    .foregroundColor(.orangeEdu)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16.0)
                            .stroke(Color.orangeEdu, lineWidth: 2)
                    )
                
                VStack {
                    Rectangle()
                        .frame(width: 75, height: 40)
                        .foregroundColor(.yellowEdu)
                        .clipShape(.rect(topLeadingRadius: 0, bottomLeadingRadius: 16, bottomTrailingRadius: 0, topTrailingRadius: 16))
                        .offset(x: 38, y: -10)
                    
                    imageButton
                        .resizable()
                        .frame(width: 25, height: 25)
                        .offset(x: -40)
                    
                    Text(text)
                        .foregroundColor(.white)
                        .offset(x: 40)
                }
            }
        }
    }
}

/// A non-filled orange button with text and an image.
struct NonFilledOrangeButton: View {
    let text: String
    let imageButton: Image
    
    var body: some View {
        Button(action: {
            
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.orange, lineWidth: 2)
                    .frame(width: 285,height: 85)
                
                HStack {
                    Text(text)
                        .foregroundColor(.orange)
                        .padding(.leading, 8)
                    imageButton
                        .resizable()
                        .frame(width: 25, height: 25)
                }
            }
        }
    }
}

/// A button with a question and an answer.
struct ButtonAnswer: View {
    let question: String
    let answer: String
    
    var body: some View {
        Button(action: {
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .frame(width: 330, height: 220)
                    .foregroundStyle(.greyEdu)
                    .opacity(0.2)
                
                VStack {
                    Text(question)
                    Text(answer)
                }
            }
        }
    }
}

/// A rectangular togglable button.
struct RectangularTogglableButton: View {
    @State private var isClicked = false
    let buttonText: String
    
    var body: some View {
        Button(action: {
            isClicked.toggle()
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.orangeEdu, lineWidth: 2)
                    .frame(width: 200, height: 50)
                    .overlay(HStack{
                        Text(buttonText)
                            .foregroundStyle(.orangeEdu)
                        Spacer()
                        Circle()
                            .fill(isClicked ? .orangeEdu : .clear)
                            .fill(isClicked ? Color.orangeEdu : Color.clear)
                            .overlay(Circle().stroke(Color.orangeEdu, lineWidth: 2))
                            .frame(width: 30, height: 30)
                        }
                        .padding(.horizontal)
                    )
            }
        }
    }
}

/// The main content view.
struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            CustomButton(text: "Inscription", width: 200, height: 50, cornerRadius: 30)
            CustomButton(text: "Connexion", width: 200, height: 50, cornerRadius: 30)
            OrangeBigButton(text: "Histoire", imageButton: Image("vector"))
            NonFilledOrangeButton(text: "Historique", imageButton: Image(systemName: "star"))
            ButtonAnswer(question: "la question", answer: "la réponse")
            RectangularTogglableButton(buttonText: "lol")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
