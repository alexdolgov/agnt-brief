// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./ERC20Permit.sol";
import "./BurnPermit.sol";

/// @title HashKey Platform Token Contract
contract HSKImplementationV1 is BurnPermit, ERC20Permit {
    receive() external payable {
        revert("Contract is not payable");
    }
}