// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MYX is ERC20, ERC20Permit {

    uint256 public constant MAX_SUPPLY = 1_000_000_000 ether;
    address private constant _DISTRIBUTOR = 0x3E1D9070C3573E72113DDc5a0E1Fa61d5f42b293;

    constructor()
    ERC20("MYX", "MYX")
    ERC20Permit("MYX")
    {
        _mint(_DISTRIBUTOR, MAX_SUPPLY);
    }

}
