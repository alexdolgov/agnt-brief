// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {
    Id,
    IIMFMoneyMarketsStaticTyping,
    IIMFMoneyMarketsBase,
    MarketParams,
    Position,
    Market
} from "./interfaces/IIMFMoneyMarkets.sol";
import {
    IIMFMoneyMarketsLiquidateCallback,
    IIMFMoneyMarketsRepayCallback,
    IIMFMoneyMarketsSupplyCallback,
    IIMFMoneyMarketsSupplyCollateralCallback,
    IIMFMoneyMarketsFlashLoanCallback
} from "./interfaces/IIMFMoneyMarketsCallbacks.sol";
import {IIrm} from "./interfaces/IIrm.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMoney} from "./interfaces/IMoney.sol";
import {IOracle} from "./interfaces/IOracle.sol";

import "./libraries/ConstantsLib.sol";
import {UtilsLib} from "./libraries/UtilsLib.sol";
import {EventsLib} from "./libraries/EventsLib.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";
import {MathLib, WAD} from "./libraries/MathLib.sol";
import {SharesMathLib} from "./libraries/SharesMathLib.sol";
import {MarketParamsLib} from "./libraries/MarketParamsLib.sol";
import {SafeTransferLib} from "./libraries/SafeTransferLib.sol";

/// @title IMFMoneyMarkets
/// @author Morpho Labs
/// @author An IMFer
/// @notice The IMFMoneyMarkets contract.
contract IMFMoneyMarkets is IIMFMoneyMarketsStaticTyping {
    using MathLib for uint128;
    using MathLib for uint256;
    using UtilsLib for uint256;
    using SharesMathLib for uint256;
    using SafeTransferLib for IERC20;
    using MarketParamsLib for MarketParams;

    /* IMMUTABLES */

    /// @inheritdoc IIMFMoneyMarketsBase
    bytes32 public immutable DOMAIN_SEPARATOR;

    /* STORAGE */

    /// @inheritdoc IIMFMoneyMarketsBase
    address public owner;
    /// @inheritdoc IIMFMoneyMarketsStaticTyping
    mapping(Id => mapping(address => Position)) public position;
    /// @inheritdoc IIMFMoneyMarketsStaticTyping
    mapping(Id => Market) public market;
    /// @inheritdoc IIMFMoneyMarketsStaticTyping
    mapping(Id => MarketParams) public idToMarketParams;
    /// Interest rate receiptient
    address public interestRecipient;

    /* CONSTRUCTOR */

    /// @param newOwner The new owner of the contract.
    constructor(address newOwner, address _interestRecipient) {
        require(newOwner != address(0), ErrorsLib.ZERO_ADDRESS);

        DOMAIN_SEPARATOR = keccak256(abi.encode(DOMAIN_TYPEHASH, block.chainid, address(this)));
        owner = newOwner;
        interestRecipient = _interestRecipient;

        emit EventsLib.SetOwner(newOwner);
    }

    /* MODIFIERS */

    /// @dev Reverts if the caller is not the owner.
    modifier onlyOwner() {
        require(msg.sender == owner, ErrorsLib.NOT_OWNER);
        _;
    }

    /* ONLY OWNER FUNCTIONS */

    /// @inheritdoc IIMFMoneyMarketsBase
    function setOwner(address newOwner) external onlyOwner {
        require(newOwner != owner, ErrorsLib.ALREADY_SET);

        owner = newOwner;

        emit EventsLib.SetOwner(newOwner);
    }

    /// @inheritdoc IIMFMoneyMarketsBase
    function setInterestRecipient(address _newInterestRecipient) external onlyOwner {
        require(_newInterestRecipient != address(0), ErrorsLib.ZERO_ADDRESS);

        interestRecipient = _newInterestRecipient;

        emit EventsLib.SetInterestRecipient(_newInterestRecipient);
    }

    /// @inheritdoc IIMFMoneyMarketsBase
    function setMarketPause(MarketParams memory marketParams, bool pause) external onlyOwner {
        Id id = marketParams.id();
        market[id].isPaused = pause;
    }

    /// @inheritdoc IIMFMoneyMarketsBase
    function createMarket(MarketParams memory marketParams) external onlyOwner {
        Id id = marketParams.id();
        // require(isIrmEnabled[marketParams.irm], ErrorsLib.IRM_NOT_ENABLED);
        // require(isLltvEnabled[marketParams.lltv], ErrorsLib.LLTV_NOT_ENABLED);
        require(market[id].lastUpdate == 0, ErrorsLib.MARKET_ALREADY_CREATED);

        // Safe "unchecked" cast.
        market[id].lastUpdate = uint128(block.timestamp);
        idToMarketParams[id] = marketParams;

        emit EventsLib.CreateMarket(id, marketParams);

        // Call to initialize the IRM in case it is stateful.
        if (marketParams.irm != address(0)) IIrm(marketParams.irm).borrowRate(marketParams, market[id]);
    }


    /* BORROW MANAGEMENT */

    /// @inheritdoc IIMFMoneyMarketsBase
    function borrow(MarketParams memory marketParams, uint256 assets, uint256 shares, address receiver)
        external
        returns (uint256, uint256)
    {
        Id id = marketParams.id();
        require(market[id].lastUpdate != 0, ErrorsLib.MARKET_NOT_CREATED);
        require(!market[id].isPaused, ErrorsLib.MARKET_PAUSED);
        require(UtilsLib.exactlyOneZero(assets, shares), ErrorsLib.INCONSISTENT_INPUT);
        require(receiver != address(0), ErrorsLib.ZERO_ADDRESS);

        _accrueInterest(marketParams, id);

        if (assets > 0) {
            shares = assets.toSharesUp(market[id].totalBorrowAssets, market[id].totalBorrowShares);
        } else {
            assets = shares.toAssetsDown(market[id].totalBorrowAssets, market[id].totalBorrowShares);
        }

        position[id][msg.sender].borrowShares += shares.toUint128();
        market[id].totalBorrowShares += shares.toUint128();
        market[id].totalBorrowAssets += assets.toUint128();

        uint256 collateralPrice = IOracle(marketParams.collateralTokenOracle).price();
        require(_isHealthy(marketParams, id, msg.sender, collateralPrice), ErrorsLib.INSUFFICIENT_COLLATERAL);

        emit EventsLib.Borrow(id, msg.sender, msg.sender, receiver, assets, shares);

        IMoney(marketParams.loanToken).mint(receiver, assets);

        return (assets, shares);
    }

    /// @inheritdoc IIMFMoneyMarketsBase
    function repay(MarketParams memory marketParams, uint256 assets, uint256 shares, bytes calldata data)
        external
        returns (uint256, uint256)
    {
        Id id = marketParams.id();
        require(market[id].lastUpdate != 0, ErrorsLib.MARKET_NOT_CREATED);
        require(!market[id].isPaused, ErrorsLib.MARKET_PAUSED);
        require(UtilsLib.exactlyOneZero(assets, shares), ErrorsLib.INCONSISTENT_INPUT);

        _accrueInterest(marketParams, id);

        if (assets > 0) shares = assets.toSharesDown(market[id].totalBorrowAssets, market[id].totalBorrowShares);
        else assets = shares.toAssetsUp(market[id].totalBorrowAssets, market[id].totalBorrowShares);

        position[id][msg.sender].borrowShares -= shares.toUint128();
        market[id].totalBorrowShares -= shares.toUint128();
        market[id].totalBorrowAssets = UtilsLib.zeroFloorSub(market[id].totalBorrowAssets, assets).toUint128();

        // `assets` may be greater than `totalBorrowAssets` by 1.
        emit EventsLib.Repay(id, msg.sender, msg.sender, assets, shares);

        if (data.length > 0) IIMFMoneyMarketsRepayCallback(msg.sender).onIMFMoneyMarketsRepay(assets, data);

        IERC20(marketParams.loanToken).safeTransferFrom(msg.sender, address(this), assets);
        IMoney(marketParams.loanToken).shred(address(this), assets);

        return (assets, shares);
    }

    /* COLLATERAL MANAGEMENT */

    /// @inheritdoc IIMFMoneyMarketsBase
    function supplyCollateral(MarketParams memory marketParams, uint256 assets, bytes calldata data) external {
        Id id = marketParams.id();
        require(market[id].lastUpdate != 0, ErrorsLib.MARKET_NOT_CREATED);
        require(!market[id].isPaused, ErrorsLib.MARKET_PAUSED);
        require(assets != 0, ErrorsLib.ZERO_ASSETS);

        // Don't accrue interest because it's not required and it saves gas.

        position[id][msg.sender].collateral += assets.toUint128();

        emit EventsLib.SupplyCollateral(id, msg.sender, msg.sender, assets);

        if (data.length > 0) {
            IIMFMoneyMarketsSupplyCollateralCallback(msg.sender).onIMFMoneyMarketsSupplyCollateral(assets, data);
        }

        IERC20(marketParams.collateralToken).safeTransferFrom(msg.sender, address(this), assets);
    }

    /// @inheritdoc IIMFMoneyMarketsBase
    function withdrawCollateral(MarketParams memory marketParams, uint256 assets, address receiver) external {
        Id id = marketParams.id();
        require(market[id].lastUpdate != 0, ErrorsLib.MARKET_NOT_CREATED);
        require(!market[id].isPaused, ErrorsLib.MARKET_PAUSED);
        require(assets != 0, ErrorsLib.ZERO_ASSETS);
        require(receiver != address(0), ErrorsLib.ZERO_ADDRESS);

        _accrueInterest(marketParams, id);

        position[id][msg.sender].collateral -= assets.toUint128();

        uint256 collateralPrice = IOracle(marketParams.collateralTokenOracle).price();
        require(_isHealthy(marketParams, id, msg.sender, collateralPrice), ErrorsLib.INSUFFICIENT_COLLATERAL);

        emit EventsLib.WithdrawCollateral(id, msg.sender, msg.sender, receiver, assets);

        IERC20(marketParams.collateralToken).safeTransfer(receiver, assets);
    }

    /* LIQUIDATION */

    /// @inheritdoc IIMFMoneyMarketsBase
    function liquidate(
        MarketParams memory marketParams,
        address borrower,
        uint256 seizedAssets,
        uint256 repaidShares,
        bytes calldata data
    ) external returns (uint256, uint256) {
        Id id = marketParams.id();
        require(market[id].lastUpdate != 0, ErrorsLib.MARKET_NOT_CREATED);
        require(!market[id].isPaused, ErrorsLib.MARKET_PAUSED);
        require(UtilsLib.exactlyOneZero(seizedAssets, repaidShares), ErrorsLib.INCONSISTENT_INPUT);

        _accrueInterest(marketParams, id);

        {
            uint256 collateralPrice = IOracle(marketParams.collateralTokenOracle).price();

            require(!_isHealthy(marketParams, id, borrower, collateralPrice), ErrorsLib.HEALTHY_POSITION);

            // The liquidation incentive factor is min(maxLiquidationIncentiveFactor, 1/(1 - cursor*(1 - lltv))).
            uint256 liquidationIncentiveFactor = UtilsLib.min(
                MAX_LIQUIDATION_INCENTIVE_FACTOR,
                WAD.wDivDown(WAD - LIQUIDATION_CURSOR.wMulDown(WAD - marketParams.lltv))
            );

            if (seizedAssets > 0) {
                uint256 seizedAssetsQuoted = seizedAssets.mulDivUp(collateralPrice, ORACLE_PRICE_SCALE);

                repaidShares = seizedAssetsQuoted.wDivUp(liquidationIncentiveFactor).toSharesUp(
                    market[id].totalBorrowAssets, market[id].totalBorrowShares
                );
            } else {
                seizedAssets = repaidShares.toAssetsDown(market[id].totalBorrowAssets, market[id].totalBorrowShares)
                    .wMulDown(liquidationIncentiveFactor).mulDivDown(ORACLE_PRICE_SCALE, collateralPrice);
            }
        }
        uint256 repaidAssets = repaidShares.toAssetsUp(market[id].totalBorrowAssets, market[id].totalBorrowShares);

        position[id][borrower].borrowShares -= repaidShares.toUint128();
        market[id].totalBorrowShares -= repaidShares.toUint128();
        market[id].totalBorrowAssets = UtilsLib.zeroFloorSub(market[id].totalBorrowAssets, repaidAssets).toUint128();

        position[id][borrower].collateral -= seizedAssets.toUint128();

        uint256 badDebtShares;
        uint256 badDebtAssets;
        if (position[id][borrower].collateral == 0) {
            badDebtShares = position[id][borrower].borrowShares;
            badDebtAssets = UtilsLib.min(
                market[id].totalBorrowAssets,
                badDebtShares.toAssetsUp(market[id].totalBorrowAssets, market[id].totalBorrowShares)
            );

            market[id].totalBorrowAssets -= badDebtAssets.toUint128();
            market[id].totalBorrowShares -= badDebtShares.toUint128();
            position[id][borrower].borrowShares = 0;
        }

        // `repaidAssets` may be greater than `totalBorrowAssets` by 1.
        emit EventsLib.Liquidate(
            id, msg.sender, borrower, repaidAssets, repaidShares, seizedAssets, badDebtAssets, badDebtShares
        );

        IERC20(marketParams.collateralToken).safeTransfer(msg.sender, seizedAssets);

        if (data.length > 0) {
            IIMFMoneyMarketsLiquidateCallback(msg.sender).onIMFMoneyMarketsLiquidate(repaidAssets, data);
        }

        IERC20(marketParams.loanToken).safeTransferFrom(msg.sender, address(this), repaidAssets);
        IMoney(marketParams.loanToken).shred(address(this), repaidAssets);

        return (seizedAssets, repaidAssets);
    }

    /* FLASH LOANS */

    /// @inheritdoc IIMFMoneyMarketsBase
    function flashLoan(address token, uint256 assets, bytes calldata data) external {
        require(assets != 0, ErrorsLib.ZERO_ASSETS);

        emit EventsLib.FlashLoan(msg.sender, token, assets);

        IERC20(token).safeTransfer(msg.sender, assets);

        IIMFMoneyMarketsFlashLoanCallback(msg.sender).onIMFMoneyMarketsFlashLoan(assets, data);

        IERC20(token).safeTransferFrom(msg.sender, address(this), assets);
    }

    /* INTEREST MANAGEMENT */

    /// @inheritdoc IIMFMoneyMarketsBase

    function accrueInterest(MarketParams memory marketParams) external {
        Id id = marketParams.id();
        require(market[id].lastUpdate != 0, ErrorsLib.MARKET_NOT_CREATED);
        require(!market[id].isPaused, ErrorsLib.MARKET_PAUSED);

        _accrueInterest(marketParams, id);
    }

    /// @dev Accrues interest for the given market `marketParams`.
    /// @dev Assumes that the inputs `marketParams` and `id` match.
    function _accrueInterest(MarketParams memory marketParams, Id id) internal {
        uint256 elapsed = block.timestamp - market[id].lastUpdate;
        if (elapsed == 0) return;

        if (marketParams.irm != address(0)) {
            uint256 borrowRate = IIrm(marketParams.irm).borrowRate(marketParams, market[id]);
            uint256 interest = market[id].totalBorrowAssets.wMulDown(borrowRate.wTaylorCompounded(elapsed));
            market[id].totalBorrowAssets += interest.toUint128();
            IMoney(marketParams.loanToken).mint(interestRecipient, interest);
            emit EventsLib.AccrueInterest(id, borrowRate, interest);
        }

        // Safe "unchecked" cast.
        market[id].lastUpdate = uint128(block.timestamp);
    }

    /* HEALTH CHECK */

    /// @dev Returns whether the position of `borrower` in the given market `marketParams` with the given
    /// `collateralPrice` is healthy.
    /// @dev Assumes that the inputs `marketParams` and `id` match.
    /// @dev Rounds in favor of the protocol, so one might not be able to borrow exactly `maxBorrow` but one unit less.
    function _isHealthy(MarketParams memory marketParams, Id id, address borrower, uint256 collateralPrice)
        internal
        view
        returns (bool)
    {
        uint256 borrowed = uint256(position[id][borrower].borrowShares).toAssetsUp(
            market[id].totalBorrowAssets, market[id].totalBorrowShares
        );
        uint256 maxBorrow = uint256(position[id][borrower].collateral).mulDivDown(collateralPrice, ORACLE_PRICE_SCALE)
            .wMulDown(marketParams.lltv);

        return maxBorrow >= borrowed;
    }

    /* STORAGE VIEW */

    /// @inheritdoc IIMFMoneyMarketsBase
    function extSloads(bytes32[] calldata slots) external view returns (bytes32[] memory res) {
        uint256 nSlots = slots.length;

        res = new bytes32[](nSlots);

        for (uint256 i; i < nSlots;) {
            bytes32 slot = slots[i++];

            assembly ("memory-safe") {
                mstore(add(res, mul(i, 32)), sload(slot))
            }
        }
    }
}
