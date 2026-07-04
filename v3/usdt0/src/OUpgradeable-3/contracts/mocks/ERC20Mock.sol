// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC7802 } from "../interfaces/IERC7802.sol";

// @dev WARNING: This is for testing purposes only
contract ERC20Mock is ERC20, IERC7802 {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {}

    function crosschainMint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
        emit CrosschainMint(_to, _amount, msg.sender);
    }

    function crosschainBurn(address _from, uint256 _amount) public {
        _burn(_from, _amount);
        emit CrosschainBurn(_from, _amount, msg.sender);
    }

    function decimals() public view override returns (uint8) {
        return 6;
    }

}
