//
//  ForEachIndexTests.swift
//  ForEachIndexTests
//
//  Created by Donnacha Oisín Kidney on 09/08/2015.
//  Copyright © 2015 Donnacha Oisín Kidney. All rights reserved.
//

import XCTest
import ForEachIndex

private func charClos(index: String.Index, value: Character) {
  let _ = index
  let _ = value
}

private func numClos(index: Int, value: Int) {
  let _ = index
  let _ = value
}

class ForEachIndexTests: XCTestCase {
  
  // Looping over a String.CharacterView, with a for loop in the forEachWithIndex function
  
  func testLookupChars() {
    self.measureBlock { ForEachCollections.chrs.forEachWithIndexLookup(charClos) }
  }
  
  func testIncChars() {
    self.measureBlock { ForEachCollections.chrs.forEachWithIndexIncrement(charClos) }
  }
  
  // Looping over an array of integers, with a for loop in the forEachWithIndex function
  
  func testLookupNums() {
    self.measureBlock {
      for _ in 0...100 {
        ForEachCollections.nums.forEachWithIndexLookup(numClos)
      }
    }
  }
  
  func testIncNums() {
    self.measureBlock {
      for _ in 0...100 {
        ForEachCollections.nums.forEachWithIndexIncrement(numClos)
      }
    }
  }
  
  // Looping over a String.CharacterView, with a forEach in the forEachWithIndex function
  
  func testLookupCharsClos() {
    self.measureBlock { ForEachCollections.chrs.forEachWithIndexLookupClos(charClos) }
  }
  
  func testIncCharsClos() {
    self.measureBlock { ForEachCollections.chrs.forEachWithIndexIncrementClos(charClos) }
  }
  
  // Looping over an array of integers, with a forEach in the forEachWithIndex function
  
  func testLookupNumsClos() {
    self.measureBlock {
      for _ in 0...100 {
        ForEachCollections.nums.forEachWithIndexLookupClos(numClos)
      }
    }
  }
  
  func testIncNumsClos() {
    self.measureBlock {
      for _ in 0...100 {
        ForEachCollections.nums.forEachWithIndexIncrementClos(numClos)
      }
    }
  }
}
