// SPDX-License-Identifier: MIT

pragma solidity =0.7.6;

import "../utils/Admin.sol";

abstract contract StakerStorage is Admin {
    // admin will be truned in to Timelock after deployment

    event NewImplementation(address newImplementation);

    bool internal _mutex;

    modifier _reentryLock_() {
        require(!_mutex, "Staker: reentry");
        _mutex = true;
        _;
        _mutex = false;
    }

    address public implementation;

    struct Incentive {
        uint256 totalRewardClaimed;
        uint160 totalSecondsClaimedX128;
    }

    /// @notice Represents the deposit of a liquidity NFT
    struct Deposit {
        address owner;
        int24 tickLower;
        int24 tickUpper;
    }

    /// @notice Represents a staked liquidity NFT
    struct Stake {
        uint160 secondsPerLiquidityInsideInitialX128;
        uint96 liquidityNoOverflow;
        uint128 liquidityIfOverflow;
    }

    mapping(address => uint256[]) public userTokenIds;

    uint256[] public stakedTokenIds;

    uint256 public startTime;

    uint256 public rewardPerSecond;

    Incentive public incentive;

    /// @dev deposits[tokenId] => Deposit
    mapping(uint256 => Deposit) public deposits;

    /// @dev stakes[tokenId] => Stake
    mapping(uint256 => Stake) public stakes;

    /// @dev rewards[owner] => uint256
    mapping(address => uint256) public rewards;


}
