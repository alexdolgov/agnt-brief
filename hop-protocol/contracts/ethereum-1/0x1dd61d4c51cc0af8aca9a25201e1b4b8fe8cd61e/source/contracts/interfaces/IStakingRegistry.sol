//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.2;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStakingRegistry {
    event HopStaked(
        address indexed staker,
        address indexed from,
        uint256 amount
    );

    event HopUnstaked(
        address indexed staker,
        uint256 amount
    );

    event StakeWithdrawn(
        address indexed staker,
        uint256 amount
    );

    event BonderPreference(
        address indexed bonder,
        bytes32 indexed pathId,
        uint256 indexed feeTier,
        uint256 liquidity
    );

    event ChallengeCreated(
        address indexed staker,
        address indexed challenger,
        uint256 penalty,
        bytes slashingData,
        uint256 amount
    );

    event AddedToChallenge(
        address indexed staker,
        address indexed contributor,
        uint256 penalty,
        bytes slashingData,
        uint256 amount
    );

    event AddedToAppeal(
        address indexed staker,
        address indexed contributor,
        uint256 penalty,
        bytes slashingData,
        uint256 amount
    );

    event ChallengeSettled(
        address indexed staker,
        uint256 penalty,
        bytes slashingData,
        uint256 amount,
        bool challengeWon
    );

    event EthClaimed(
        address indexed staker,
        uint256 penalty,
        bytes slashingData,
        uint256 amount
    );

    function hopToken() external returns (IERC20);
    function challengeIterationPeriod() external returns (uint256);
    function minChallengeIncrease() external returns (uint256);
    function fullChallenge() external returns (uint256);
    function minHopStake() external returns (uint256);
    function stakeHop(address staker, uint256 amount) external;
    function unstakeHop(uint256 amount) external;
    function withdrawStake(uint256 amount) external;
    function signalPreference(bytes32 pathId, uint256 feeTier, uint256 liquidity) external;
    function createChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external
        payable
        returns (bytes32);

    function addToChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external
        payable;

    function addToAppeal(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external
        payable;

    function optimisticallySettleChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external;

    function acceptSlash(
        uint256 penalty,
        bytes memory slashingData
    )
        external;

   
    function forceSettleChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData,
        bool challengeWon
    )
        external;

    function claimEth(address staker, uint256 penalty, bytes memory slashingData) external;

    function isStaked(address staker) external view returns (bool);
    function getWithdrawableBalance(address staker) external view returns (uint256);

    function getChallengeId(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external
        pure
        returns (bytes32);

    function getTotalPendingUnstaked(address staker) external view returns (uint256);
    function getTotalBalance(address staker) external view returns (uint256);
    function getStakedBalance(address staker) external view returns (uint256);
    function getChallenge(bytes32 challengeId) external view returns (address staker, address challenger, uint256 lastUpdated, uint256 penalty, bool isSettled, bool isChallengeWon, bool isAppealed, uint256 challengeEth, uint256 appealEth);
    function getStake(address staker) external view returns (uint256 hopBalance, uint256 totalUnstaked, uint256 activeChallengeCount, uint256 totalChallengeCount);
}
