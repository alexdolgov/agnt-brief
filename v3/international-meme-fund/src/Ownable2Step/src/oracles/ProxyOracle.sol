// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IOracle} from "../interfaces/IOracle.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @title ProxyOracle
/// @author Some IMFer
/// @notice A simple proxy contract to manage oracle upgrades
contract ProxyOracle is IOracle, Ownable2Step {
    address public delegate;

    constructor(address _delegate) {
        delegate = _delegate;
    }

    function setDelegate(address _delegate) external onlyOwner() {
        delegate = _delegate;
    }

    function price() external view override returns (uint256) {
        return IOracle(delegate).price();
    }
}