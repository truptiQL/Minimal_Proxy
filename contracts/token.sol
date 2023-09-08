// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;


import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";


contract Token is Initializable {
    string private _name;
    string private _symbol;
    function initialize(string memory name_, string memory symbol_) public initializer {
        _name = name_;
        _symbol = symbol_;
    }
}