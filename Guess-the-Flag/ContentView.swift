import SwiftUI
struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue , .red], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing: 30){
                Text("Guess the View")
                    .font(.largeTitle.weight(.heavy))
                VStack{
                    Text("Tap on the Flag")
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.bold))
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.semibold))
                }
                ForEach(0..<3){ number in
                    Button{
                        flagTapped(number)
                    }label: {
                        Image(countries[number])
                            .clipShape(.capsule)
                            .shadow(radius: 5)
                    }
                    
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue",action: askQuestion)
        }message: {
            Text("Your Score is ??? \(correctAnswer)")
        }
    }
    func flagTapped(_ number : Int){
        if number == correctAnswer{
            scoreTitle = "Correct"
            score += 1
        }else{
            scoreTitle = "Wrong"
            score -= 1
        }
        showingScore = true
    }
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
    }
    
}

#Preview {
    ContentView()
}
