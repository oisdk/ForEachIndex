extension CollectionType {
  
  public func forEachWithIndexLookup(
    @noescape block: (index: Index, value: Generator.Element) -> ()
    ) {
      for i in indices {
        block(index: i, value: self[i])
      }
  }
  
  public func forEachWithIndexIncrement(
    @noescape block: (index: Index, value: Generator.Element) -> ()
    ) {
      for (index, value) in zip(self.indices,self) {
        block(index: index, value: value)
      }
  }
  
  public func forEachWithIndexLookupClos(
    @noescape block: (index: Index, value: Generator.Element) -> ()
    ) {
      indices.forEach { block(index: $0, value: self[$0]) }
  }
  
  public func forEachWithIndexIncrementClos(
    @noescape block: (index: Index, value: Generator.Element) -> ()
    ) {
      zip(self.indices,self).forEach(block)
  }
}

