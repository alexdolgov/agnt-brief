// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "@eth-optimism/contracts/libraries/bridge/ICrossDomainMessenger.sol";

import "./interfaces/IWRETH.sol";
import "./RocketOvmPriceOracle.sol";
import "./RocketOvmPriceMessenger.sol";

/// @author Kane Wallmann (Rocket Pool)
/// @notice A wrapper around the price messenger which also executes a rebase on the WRETH token on the OVM L2
contract RocketOvmRebasingPriceMessenger {
    // Immutables
    ICrossDomainMessenger public immutable ovmL1CrossDomainMessenger;
    RocketOvmPriceMessenger public immutable priceMessenger;
    address public immutable wrethL2;

    /// @notice The most recently submitted rate
    uint256 lastRate;

    constructor(RocketOvmPriceMessenger _priceMessenger, address _wrethL2, ICrossDomainMessenger _ovmL1CrossDomainMessenger) {
        priceMessenger = _priceMessenger;
        wrethL2 = _wrethL2;
        ovmL1CrossDomainMessenger = _ovmL1CrossDomainMessenger;
    }

    /// @notice Returns whether the rate has changed since it was last submitted
    function rateStale() external view returns (bool) {
        return priceMessenger.rate() != lastRate;
    }

    /// @notice Returns the calculated rETH exchange rate
    function rate() public view returns (uint256) {
        return priceMessenger.rate();
    }

    /// @notice Submits the rETH exchange rate and executes a rebase
    /// @dev The name `submitRate` is used to make the interface consistent with RocketOvmPriceMessenger
    function submitRate() external {
        lastRate = priceMessenger.rate();
        priceMessenger.submitRate();
        rebase();
    }

    /// @notice Calls rebase on the WRETH token on the OVM L2 via cross domain messenger
    function rebase() public {
        // Send the cross chain message
        ovmL1CrossDomainMessenger.sendMessage(
            wrethL2,
            abi.encodeWithSelector(IWRETH.rebase.selector),
            500000
        );
    }
}
