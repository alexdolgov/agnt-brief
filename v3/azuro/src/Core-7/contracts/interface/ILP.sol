// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./ICore.sol";
import "./IOwnable.sol";

interface ILP is IOwnable {
    enum CoreState {
        UNKNOWN,
        ACTIVE,
        INACTIVE
    }

    struct Game {
        bytes32 ipfsHash;
        uint128 lockedLiquidity;
        uint64 startsAt;
        bool canceled;
        Condition[] conditions;
    }

    struct Condition {
        address core;
        uint256 conditionId;
    }

    struct Reward {
        int128 amount;
        uint64 claimedAt;
    }

    event CoreUpdated(address indexed core, bool active);
    event MaintainerUpdated(address indexed maintainer, bool active);
    event OracleUpdated(address indexed oracle, bool active);

    event AffiliateRewardChanged(uint64 newAffiliateFee);
    event AffiliateRewarded(address indexed affiliate, uint256 amount);
    event BettorWin(address indexed bettor, uint256 tokenId, uint256 amount);
    event ClaimTimeoutChanged(uint64 newClaimTimeout);
    event DaoRewardChanged(uint64 newDaoFee);
    event GameCanceled(uint256 indexed gameId);
    event GameShifted(uint256 indexed gameId, uint64 newStart);
    event LiquidityAdded(
        address indexed account,
        uint48 indexed leaf,
        uint256 amount
    );
    event LiquidityRemoved(
        address indexed account,
        uint48 indexed leaf,
        uint256 amount
    );
    event MinDepoChanged(uint128 newMinDepo);
    event NewGame(uint256 indexed gameId, bytes32 ipfsHash, uint64 startsAt);
    event OracleRewardChanged(uint64 newOracleFee);
    event ReinforcementAbilityChanged(uint128 newReinforcementAbility);
    event WithdrawTimeoutChanged(uint64 newWithdrawTimeout);

    error OnlyFactory();
    error OnlyMaintainer();
    error OnlyOracle();

    error AmountMustNotBeZero();
    error AmountNotSufficient();
    error MinDepoNotSufficient();

    error NoReward();

    error BetExpired();
    error CoreNotActive();
    error GameAlreadyCanceled();
    error GameCanceled_();
    error GameNotExists();
    error IncorrectFee();
    error IncorrectTimestamp();
    error LiquidityNotOwned();
    error LiquidityIsLocked();
    error NoLiquidity();
    error NotEnoughLiquidity();
    error UnknownCore();
    error WithdrawalTimeout(uint64 waitTime);
    error ClaimTimeout(uint64 waitTime);

    function initialize(
        address token,
        uint64 daoFee,
        uint64 oracleFee,
        uint64 affiliateFee,
        address oracle
    ) external;

    function addCore(address core) external;

    function addLiquidity(uint128 amount) external;

    function addLiquidityNative() external payable;

    function withdrawLiquidity(uint48 depNum, uint40 percent) external;

    function withdrawLiquidityNative(uint48 depNum, uint40 percent) external;

    function viewPayout(address core, uint256 tokenId)
        external
        view
        returns (uint128 payout);

    function betFor(
        address bettor,
        address core,
        uint128 amount,
        uint64 expiresAt,
        ICore.BetData calldata data
    ) external;

    function betNative(
        address core,
        uint64 expiresAt,
        ICore.BetData calldata data
    ) external payable;

    function bet(
        address core,
        uint128 amount,
        uint64 expiresAt,
        ICore.BetData calldata data
    ) external;

    function getReserve() external view returns (uint128);

    function addReserve(
        uint256 gameId,
        uint128 lockedReserve,
        uint128 profitReserve,
        uint48 leaf,
        address oracle,
        bool affiliated
    ) external;

    function addCondition(uint256 gameId, uint256 conditionId)
        external
        returns (uint64);

    function withdrawPayout(address core, uint256 tokenId) external;

    function withdrawPayoutNative(address core, uint256 tokenId) external;

    function changeLockedLiquidity(uint256 gameId, int128 deltaReserve)
        external;

    function checkOracle(address oracle) external view;

    function checkMaintainer(address maintainer) external view;

    function getGameInfo(uint256 gameId)
        external
        view
        returns (uint64 startsAt, bool canceled);

    function isGameCanceled(uint256 gameId)
        external
        view
        returns (bool canceled);

    function getLeaf() external view returns (uint48 leaf);
}
