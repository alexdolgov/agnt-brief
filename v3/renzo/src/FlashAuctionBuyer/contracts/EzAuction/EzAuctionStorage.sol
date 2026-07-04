// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

abstract contract EzAuctionStorageV1 {
    enum AuctionState {
        NOTSTARTED,
        STARTED
    }

    struct EpochData {
        AuctionState state; // state of the Auction
        uint16 epochId; // intentionally overflowable
        uint192 initPrice;
        uint40 startTime;
    }

    // Tracks current Epoch
    EpochData internal currentEpoch;

    /// @dev tracks the payment Token for the rewards auction
    IERC20 public paymentToken;

    /// @dev payment receiver after auction is bought
    address public paymentReceiver;

    /// @dev time period for epoch
    uint256 public epochPeriod;

    /// @dev Price multiplier for new auction
    uint256 public priceMultiplier;

    /// @dev minimum initial price
    uint256 public minInitPrice;

    /// @dev track the pause status of auction
    bool public paused;

    /// @dev track the pauser account address
    address public pauser;
}
