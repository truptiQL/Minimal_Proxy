// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "./token.sol";
import "./CloneFactory.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract TokenFactory  is CloneFactory, Ownable{
    address private _implementation;
    
    function setImplementation(address implementation_) public onlyOwner {
        _implementation = implementation_;
    }
    
    function createToken(string memory name, string memory symbol) public onlyOwner {
        address clone = createClone(_implementation);
        Token(clone).initialize(name, symbol);
        
    }
}