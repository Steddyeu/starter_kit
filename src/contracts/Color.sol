pragma solidity 0.5.0;

import "./ERC721Full.sol";

contract Color is ERC721Full {
  string[] public colors;

  // mapping is similar to a has or json object, key/value pair
  mapping(string => bool) _colorExists;

  // Initialise function 
  constructor () ERC721Full("Color", "COLOR") public {
    
  }

  function mint(string memory _color) public {
    // require a unique Colour
    require(!_colorExists[_color]);
   uint _id = colors.push(_color);
   _mint(msg.sender, _id);
  _colorExists[_color] = true;
  }

}