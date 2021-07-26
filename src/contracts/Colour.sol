pragma solidity 0.5.0;

import "./ERC721Full.sol";

contract Colour is ERC721Full {

  // Initialise function 
  constructor () ERC721Full("Color", "COLOR") public {
    
  }
}