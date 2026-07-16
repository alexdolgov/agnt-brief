// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./ApexPremierTypes.sol";

abstract contract ApexPremierEvents {
    event PremierFinalized(uint256 totalRaised);
    event ReadyForReview();
    event PremierApproved(bool isApproved);
    event PremierParametersSet();
    event PhaseSet(PremierPhases oldPhase, PremierPhases newPhase);
    event FundsWithdrawn(
        address indexed moderator,
        uint256 teamFunds,
        uint256 treasuryFee,
        uint256 revenueFee
    );
    event UnusedFundsWithdrawn(address indexed admin, uint256 balance);
    event VestingInitialized(
        address indexed moderator,
        uint256 vestingStart,
        uint256 vestingDuration,
        uint256 vestingCliffDuration
    );
    event TokensClaimed(
        address indexed participant,
        uint256 amount,
        uint256 amountReleased,
        uint256 amountRemaining
    );
    event TokensDeposited(
        address indexed moderator,
        uint256 totalTokensDeposited
    );
    event Participated(
        address indexed participant,
        PremierPhases phase,
        uint256 amountSpent,
        uint256 amountBought
    );
    event StuckTokensWithdrawn(address indexed beneficiary, uint256 amount);
    event ModeratorUpdated(
        address indexed moderator,
        address indexed oldModerator,
        address indexed newModerator
    );
    event UnsoldTokensReclaimed(address indexed beneficiary, uint256 amount);
    event TokenPriceUpdated(
        address indexed moderator,
        uint256 oldPrice,
        uint256 newPrice
    );
    event NameUpdated(address indexed admin, string name);
    event VestingParametersUpdated(
        address indexed moderator,
        Vesting vestingParameters
    );
    event LaunchFeeUpdated(address indexed admin, uint256 newLaunchFee);
    event WhitelistedAddressesAdded(address[] accounts);
    event StakingAddressesAdded(address[] accounts);
    event WhitelistedAddressesRemoved(address[] accounts);
    event StakingAddressesRemoved(address[] accounts);
    event TeamWalletUpdated(
        address indexed admin,
        address oldTeamWallet,
        address newTeamWallet
    );
    event RevenueAddressUpdated(
        address indexed admin,
        address oldRevenue,
        address newRevenue
    );
    event TreasuryAddressUpdated(
        address indexed admin,
        address oldTreasury,
        address newTreasury
    );
}
