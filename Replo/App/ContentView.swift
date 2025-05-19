import SwiftUI

struct ContentView: View {
    
    @State private var isActive: Bool = false
    @State private var size = 0.5
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            HomeView()
        }else{
            VStack(spacing: 20){
                Image(systemName: "list.clipboard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.blue)
                
                Text("Replo")
                    .font(.largeTitle)
                    .bold()
            }
            .scaleEffect(size) // 비율 조정
            .opacity(opacity) // 투명도 설정
            .onAppear{
                // 애니메이션 효과
                withAnimation(.easeInOut(duration: 1.5)){
                    size = 1.0
                    opacity = 1.0
                }
                
                // 3초 대기 후 isActive 값 변경
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
