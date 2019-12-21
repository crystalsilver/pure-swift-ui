//
//  SFSymbol.swift
//  
//
//  Created by Adam Fordyce on 07/12/2019.
//  Copyright © 2019 Adam Fordyce. All rights reserved.
//

public struct SFSymbol: View {
    
    private let image: Image
    
    public init(_ sfSymbol: SFSymbolName) {
        self.init(sfSymbol.rawValue)
    }
    
    public init(_ systemName: String) {
        self.image = Image(systemName: systemName)
    }
    
    public var body: Image {
        image
    }
}

// MARK: ----- IMAGE MODIFIERS

public extension SFSymbol {
    
    func resizable() -> Image {
        self.image.resizable()
    }
    
    func resizable(capInsets: EdgeInsets = EdgeInsets(), resizingMode: Image.ResizingMode = .stretch) -> Image {
        self.image.resizable(capInsets: capInsets, resizingMode: resizingMode)
    }
    
    func antialiased(_ isAntialiased: Bool) -> Image {
        self.image.antialiased(isAntialiased)
    }
    
    func interpolation(_ interpolation: Image.Interpolation) -> Image {
        self.image.interpolation(interpolation)
    }
    
    func renderingMode(_ renderingMode: Image.TemplateRenderingMode?) -> Image {
        self.image.renderingMode(renderingMode)
    }
}

// MARK: ----- CONVENIENCE FOR RESIZABLE

public extension SFSymbol {

    func resizedToFit(capInsets: EdgeInsets = EdgeInsets()) -> some View {
        resizable(capInsets: capInsets)
            .scaledToFit()
    }

    func resizedToFit<T: UINumericType>(width: T, capInsets: EdgeInsets = EdgeInsets()) -> some View {
        resizedToFit(capInsets: capInsets)
            .width(width)
    }
    
    func resizedToFit<T: UINumericType>(height: T, capInsets: EdgeInsets = EdgeInsets()) -> some View {
        resizedToFit(capInsets: capInsets)
            .height(height)
    }
    
    func resizedToFit<TW: UINumericType, TH: UINumericType>(_ width: TW, _ height: TH, capInsets: EdgeInsets = EdgeInsets()) -> some View {
        resizedToFit(capInsets: capInsets)
            .frame(width, height)
    }

    func resizedToFill(capInsets: EdgeInsets = EdgeInsets()) -> some View {
        resizable(capInsets: capInsets)
            .scaledToFill()
    }
    
    func resizedToFill<T: UINumericType>(width: T, capInsets: EdgeInsets = EdgeInsets()) -> some View {
        resizedToFill(capInsets: capInsets)
            .width(width)
    }
    
    func resizedToFill<T: UINumericType>(height: T, capInsets: EdgeInsets = EdgeInsets()) -> some View {
        resizedToFill(capInsets: capInsets)
            .height(height)
    }

    func resizedToFill<TW: UINumericType, TH: UINumericType>(_ width: TW, _ height: TH, capInsets: EdgeInsets = EdgeInsets()) -> some View {
        resizedToFill(capInsets: capInsets)
            .frame(width, height)
    }
}
