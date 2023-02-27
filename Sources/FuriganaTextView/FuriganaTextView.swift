import SwiftUI

public struct FuriganaTextView: UIViewRepresentable {
    private let furiganaView: UIFuriganaTextView
    
    private let furigana: [Furigana]
    private let text: NSAttributedString
    
    private let font: UIFont
    private let textColor: UIColor
    
    public init(
        furigana: [Furigana],
        text: NSAttributedString,
        font: UIFont = UIFont.systemFont(ofSize: 16),
        textColor: UIColor = .black
    ) {
        self.furiganaView = UIFuriganaTextView()
        self.furigana = furigana
        self.text = text
        
        self.font = font
        self.textColor = textColor
        furiganaView.contentView?.font = font
        furiganaView.contentView?.textColor = textColor
    }

    public func makeUIView(context: Context) -> UIFuriganaTextView {
        furiganaView.contents = text
        furiganaView.furiganas = furigana
        return furiganaView
    }

    public func updateUIView(_ uiView: UIFuriganaTextView, context: Context) {
        furiganaView.contents = text
        furiganaView.furiganas = furigana
        
        if let contentView = furiganaView.contentView {
            contentView.font = font
            contentView.textColor = textColor
        }
    }
}

struct FuriganaTextView_Previews: PreviewProvider {
    static var previews: some View {
        FuriganaTextView(
            furigana: [
              Furigana(text: "た", original: "田", range: NSMakeRange(0, 1)),
              Furigana(text: "なか", original: "中", range: NSMakeRange(1, 1)),
            ],
            text: NSAttributedString(string: "田中さん、中華料理を食べたことありますか。")
        )
        .padding(10)
    }
}
