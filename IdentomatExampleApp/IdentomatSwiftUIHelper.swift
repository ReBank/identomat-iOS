//
//  IdentomatSwiftUIHelper.swift
//  identomat
//
//  Created by Oto Siradze on 1/1/21.
//

import Foundation
import UIKit
import SwiftUI

final class IdentomatSwiftUIHelper: UIViewController{
    @available(iOS 13.0, *)
    static var context : IdentomatSwiftUIView? = nil;
   
  
    override func viewDidLoad() {
        //self.view.addSubview(IdentomatManager.getInstance().getIdentomatView().view)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let identomatViewController = IdentomatManager.getInstance().getIdentomatView()
        identomatViewController.modalPresentationStyle = .fullScreen
        self.present(identomatViewController, animated: true, completion: nil)
       
    }
    
}
@available(iOS 13.0, *)
extension IdentomatSwiftUIHelper : UIViewControllerRepresentable{
    public typealias UIViewControllerType = IdentomatSwiftUIHelper
    
    public func makeUIViewController(context: UIViewControllerRepresentableContext<IdentomatSwiftUIHelper>) -> IdentomatSwiftUIHelper {
        return IdentomatSwiftUIHelper()
    }
    
    public func updateUIViewController(_ uiViewController: IdentomatSwiftUIHelper, context: UIViewControllerRepresentableContext<IdentomatSwiftUIHelper>) {
    }
}
@available(iOS 13.0, *)
public struct IdentomatSwiftUIView : View{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var used : Bool = false
    public var body: some View {
        ZStack {
            if(!used){
                IdentomatSwiftUIHelper()
            }
            Image(uiImage: IdentomatManager.getInstance().logoImage)
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
        .onAppear(perform: {
            if(used){
                goBack()
            }
        })
        .onDisappear(perform: {
            used.toggle()
        })
    }
    
    func goBack(){
        print("back")
        self.presentationMode.wrappedValue.dismiss()
    }
}

