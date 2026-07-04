// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {ERC20} from "@solmate/src/tokens/ERC20.sol";

contract AmberPoints is ERC20 {
    constructor(
        string memory _tokenName,
        string memory _tokenSymbol,
        address _tokenOwner,
        uint256 _initialSupply
    ) ERC20(_tokenName, _tokenSymbol, 18) {
        _mint(_tokenOwner, _initialSupply * 10 ** decimals);
    }

    function burn(uint256 _amount) external returns (bool success) {
        _burn(msg.sender, _amount);

        return true;
    }
}
