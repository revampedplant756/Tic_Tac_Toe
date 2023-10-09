//
//  TicTacToeGame.swift
//  TicTacToe
//
//  Created by Barla, Saatvik on 9/25/23.
//

import Foundation

struct TicTacToe {
    var board = [Int](repeating: -1, count: 9)
    
    mutating func updateBoard(index: Int, xOrO: Int) -> Bool{
        board[index] = xOrO
        return isGameOver()
    }
    
    func isGameOver() -> Bool{
        if board[0] == board[1] && board[0] == board[2] && board[0] != -1 {
            return true
        }
        if board[3] == board[4] && board[3] == board[5] && board[3] != -1 {
            return true
        }
        if board[6] == board[7] && board[6] == board[8] && board[6] != -1 {
            return true
        }
        if board[0] == board[4] && board[0] == board[8] && board[0] != -1 {
            return true
        }
        if board[2] == board[4] && board[2] == board[6] && board[2] != -1 {
            return true
        }
        if board[0] == board[3] && board[0] == board[6] && board[0] != -1 {
            return true
        }
        if board[1] == board[4] && board[1] == board[7] && board[1] != -1 {
            return true
        }
        if board[2] == board[5] && board[2] == board[8] && board[2] != -1 {
            return true
        }
        if !board.contains(-1) {
            return true
        }

        
        return false
    }
    
    mutating func resetBoard() {
        board = [Int](repeating: -1, count: 9)
    }
    
    func getBoardState(index: Int) -> Int {
        return board[index]
    }
    
    
}
