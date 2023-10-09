//
//  ViewController.swift
//  TicTacToe
//
//  Created by Barla, Saatvik on 9/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    var game = TicTacToe()
    var turn = 0
    var isXTurn = true
    var isGameOver = false
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var restart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton){

        
        if game.getBoardState(index: sender.tag) == -1
        {
            isGameOver = game.updateBoard(index: sender.tag, xOrO: turn)
            
            if isXTurn
            {
                sender.titleLabel?.font = UIFont.systemFont(ofSize: 95, weight: .semibold)
                sender.tintColor = UIColor.black
                sender.setTitle("X", for: .normal)
                turn = 1
                isXTurn = false
            }
            else
            {
                sender.titleLabel?.font = UIFont.systemFont(ofSize: 95, weight: .semibold)
                sender.tintColor = UIColor.blue
                sender.setTitle("O", for: .normal)
                turn = 0
                isXTurn = true
            }
        }
        
        if isGameOver{
            resetGame()
        }
        
    }
    
    func resetGame() {
        game.resetBoard()
        restart.isHidden = false
        
        for button in Buttons{
            button.isEnabled = false
        }
        
    }
    
    @IBAction func restartingGame(_ sender: Any) {
        for button in Buttons{
            button.setTitle("", for: .normal)
            button.isEnabled = true
        }
        
        restart.isHidden = true
        turn = 0
        isXTurn = true
        isGameOver = false
        
    }
    
    
}

