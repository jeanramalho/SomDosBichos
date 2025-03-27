//
//  SomDosBichosHomeViewController.swift
//  SomDosBichos
//
//  Created by Jean Ramalho on 27/03/25.
//
import Foundation
import UIKit
import AVFoundation

class SomDosBichosHomeViewController: UIViewController {
    
    private let contentView: SomDosBichosView = SomDosBichosView()
    var player = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        
        setupContentView()
        setHierarchy()
        setConstraints()
    }
    
    private func setupContentView(){
        let caoButton = contentView.caoButton
        let gatoButton = contentView.gatoButton
        let leaoButton = contentView.leaoButton
        let macacoButton = contentView.macacoButton
        let ovelhaButton = contentView.ovelhaButton
        let vacaButton = contentView.vacaButton
        
        caoButton.addTarget(self, action: #selector(playCao), for: .touchUpInside)
        gatoButton.addTarget(self, action: #selector(playGato), for: .touchUpInside)
        leaoButton.addTarget(self, action: #selector(playLeao), for: .touchUpInside)
        macacoButton.addTarget(self, action: #selector(playMacaco), for: .touchUpInside)
        ovelhaButton.addTarget(self, action: #selector(playOvelha), for: .touchUpInside)
        vacaButton.addTarget(self, action: #selector(playVaca), for: .touchUpInside)
    }
    
    
    private func setHierarchy(){
        view.addSubview(contentView)
    }
    
    private func setConstraints(){
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    private func playSom(nomeSom: String){
        
        if let path = Bundle.main.path(forResource: nomeSom, ofType: "mp3") {
            
            let url = URL(fileURLWithPath: path)
            
            do {
                try player = AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
            } catch  {
                print("Nao foi possivel reproduzir o audio! Erro: \(error.localizedDescription)")
            }
        }
    }
    
    @objc private func playCao(){
        playSom(nomeSom: "cao")
    }
    
    @objc private func playGato(){
        playSom(nomeSom: "gato")
    }
    
    @objc private func playLeao(){
        playSom(nomeSom: "leao")
    }
    
    @objc private func playMacaco(){
        playSom(nomeSom: "macaco")
    }
    
    @objc private func playOvelha(){
        playSom(nomeSom: "ovelha")
    }
    
    @objc private func playVaca(){
        playSom(nomeSom: "vaca")
    }
    
   
}
