// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC20Burnable, ERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title Meta Pool Governance mpDAO Token.

contract MpDaoToken is ERC20Burnable, Ownable {
    constructor(
        string memory name_,
        string memory symbol_,
        address _daoOwner,
        uint256 _initialSupply
    ) ERC20(name_, symbol_) Ownable(_daoOwner) {
        _mint(_daoOwner, _initialSupply);
    }

    function mint(address _receiver, uint256 _amount) external onlyOwner {
        _mint(_receiver, _amount);
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }
}
