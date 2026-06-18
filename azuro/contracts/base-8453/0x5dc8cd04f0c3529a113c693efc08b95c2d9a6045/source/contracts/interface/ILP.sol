// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./IBetting.sol";
import "./IOrder.sol";
import "./IOwnable.sol";
import "@openzeppelin/contracts/interfaces/IERC721Enumerable.sol";

interface ILP is IOrder {
    enum CoreState {
        UNKNOWN,
        ACTIVE,
        INACTIVE
    }

    enum FeeType {
        DAO,
        DATA_PROVIDER,
        AFFILIATES
    }

    struct CoreData {
        CoreState state;
        uint64 reinforcementAbility; // total ability consist of ordinary + combo
        uint64 reinforcementAbilityCombo;
        uint128 minBet;
        uint128 lockedLiquidity;
        uint128 lockedLiquidityCombo;
    }

    struct Reward {
        int128 amount;
        uint64 claimedAt;
    }

    event AffiliateChanged(address newAffilaite);
    event AffiliateRewardsClaimed(uint256 rewards);
    event BettorWin(
        address indexed core,
        address indexed bettor,
        uint256 tokenId,
        uint256 amount
    );
    event ClaimTimeoutChanged(uint64 newClaimTimeout);
    event CoreSettingsUpdated(
        address indexed core,
        CoreState state,
        uint64 reinforcementAbility,
        uint64 reinforcementAbilityCombo,
        uint128 minBet
    );
    event DataProviderChanged(address newDataProvider);
    event FeeChanged(FeeType feeType, uint64 fee);
    event LiquidityAdded(
        address indexed account,
        uint48 indexed depositId,
        uint256 amount
    );
    event LiquidityRemoved(
        address indexed account,
        uint48 indexed depositId,
        uint40 percent,
        uint256 amount
    );
    event MinDepoChanged(uint128 newMinDepo);
    event WithdrawTimeoutChanged(uint64 newWithdrawTimeout);
    event LegacyLPSet(address indexed legacyLP);
    event DepositsMigrated(
        address indexed depositor,
        uint48 indexed depositId,
        uint48[] oldDepositIds
    );
    event RelayerSet(address indexed relayer);

    error OnlyFactory();

    error CoreNotActive();
    error ClaimTimeout(uint64 waitTime);
    error IncorrectCoreState();
    error IncorrectAmount();
    error IncorrectFee();
    error IncorrectLegacyLP();
    error IncorrectMinBet();
    error IncorrectMinDepo();
    error IncorrectReinforcementAbility();
    error IncorrectRelayer();
    error InsufficientReward();
    error LiquidityNotOwned();
    error LockedBetToken(uint256 tokenId);
    error LockedLiquidityLimitReached();
    error LockedLiquidityComboLimitReached();
    error SmallBet();
    error SmallDepo();
    error UnknownCore();
    error WithdrawalTimeout(uint64 waitTime);

    function initialize(
        address access,
        address vault,
        address dataProvider,
        address affiliate,
        uint128 minDepo,
        uint64 daoFee,
        uint64 dataProviderFee,
        uint64 affiliateFee
    ) external;

    function addCore(address core) external;

    function addDeposit(uint128 amount) external returns (uint48);

    function addDepositFor(
        address account,
        uint128 amount
    ) external returns (uint48);

    function withdrawDeposit(
        uint48 depositId,
        uint40 percent
    ) external returns (uint128);

    function viewPayout(
        address core,
        uint256 tokenId
    ) external view returns (uint128 payout);

    /**
     * @notice Make batch of bets for `bettor`.
     * @notice Emits bet tokens to `bettor`.
     * @param core core to calc and execution bets
     * @param order see { IOrder.OrderData }
     * @param betOwner owner of bet token most case is same as order.betOwner, in freebet case is PayMaster (freebet supplier)
     */
    function betOrder(
        address core,
        OrderData calldata order,
        address betOwner,
        bytes calldata data
    ) external returns (uint256[] memory tokenIds);

    function changeDataProvider(address newDataProvider) external;

    function claimReward() external returns (uint128);

    function addReserve(
        uint128 lockedReserve,
        uint128 profitReserve,
        uint48 depositId,
        bool isCombo
    ) external;

    function withdrawPayout(
        address core,
        uint256 tokenId
    ) external returns (uint128);

    function withdrawPayouts(address core, uint256[] calldata tokenId) external;

    function changeLockedLiquidity(int128 deltaReserve, bool isCombo) external;

    function getLockedLiquidityLimit(
        address core
    ) external view returns (uint128 maxLiquidity, uint128 maxLiquidityCombo);

    function checkAccess(
        address account,
        address target,
        bytes4 selector
    ) external;

    function checkCore(address core) external view;

    function getLastDepositId() external view returns (uint48 depositId);

    function isDepositExists(uint256 depositId) external view returns (bool);

    function token() external view returns (address);

    function fees(uint256) external view returns (uint64);

    function factory() external view returns (IOwnable);

    function changeByPercent(
        bool isIncrease,
        uint256 amount
    ) external view returns (uint128);

    function dataProvider() external view returns (address);

    function checkOwner(address owner) external view;

    function rejectConditionFee(uint256 conditionId) external;

    function rejectFee(
        uint128 amount,
        uint256 conditionId,
        uint64 timestamp
    ) external;

    function rejectFeeComboPart(
        uint128 betAmount,
        uint256 conditionId,
        uint256 count,
        uint256 element,
        uint64 timestamp
    ) external;

    function relayer() external view returns (address);

    function releaseFee(uint256 conditionId) external;
}
