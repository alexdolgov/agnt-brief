// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.26;

import {SecureAccess} from "common-contracts/access-management/SecureAccess.sol";

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract VaultToken is ERC20, SecureAccess {
    //reward trackers array
    constructor(address _accessManager, string memory _name, string memory _symbol)
        SecureAccess(_accessManager)
        ERC20(_name, _symbol)
    {}

    function mint(address _to, uint256 _value) external onlySystem {
        _mint(_to, _value);
    }

    function burn(address _from, uint256 _value) external onlySystem {
        _burn(_from, _value);
    }
}
