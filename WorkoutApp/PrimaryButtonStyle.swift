




import SwiftUI

struct PrimaryButtonStyle : ButtonStyle{
    var userColor : Color = .darkPrimaryButtonColor
    func makeBody(configuration: Configuration) -> some View {
        return PrimaryButton(configuration : configuration, userColor : userColor)
    }
    struct PrimaryButton : View {
        let configuration : Configuration
        let userColor : Color
        var body: some View{
            return configuration.label
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 8).fill(userColor))
                
        }
    }
}

struct PrimaryButtonStyle_Previews : PreviewProvider{
    static var previews: some View{
        Button(action: {}) {
            Text("Enter the World")
        }.buttonStyle(PrimaryButtonStyle())
    }
}
