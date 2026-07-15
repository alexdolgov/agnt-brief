// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IIrm} from "./interfaces/IIrm.sol";
import {MarketParams, Market} from "./interfaces/IIMFMoneyMarkets.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @title ProxyIrm
/// @author Some IMFer
/// @notice A simple proxy contract to manage Irm upgrades
contract ProxyIrm is IIrm, Ownable2Step {
    address public delegate;

    constructor(address _delegate) {
        delegate = _delegate;
    }

    function setDelegate(address _delegate) external onlyOwner() {
        delegate = _delegate;
    }

    /// @inheritdoc IIrm
    function borrowRate(MarketParams memory marketParams, Market memory market) external returns (uint256) {
        return IIrm(delegate).borrowRate(marketParams, market);
    }

    /// @inheritdoc IIrm
    function borrowRateView(MarketParams memory marketParams, Market memory market) external view returns (uint256) {
        return IIrm(delegate).borrowRateView(marketParams, market);
    }
}