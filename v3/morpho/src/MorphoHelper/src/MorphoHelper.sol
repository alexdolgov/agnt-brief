// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// Morpho Blue interfaces
import {Id, IMorpho, MarketParams, Market, Position} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IOracle} from "../lib/morpho-blue/src/interfaces/IOracle.sol";
import {IIrm} from "../lib/morpho-blue/src/interfaces/IIrm.sol";

// Morpho Blue libraries
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import {MarketParamsLib} from "../lib/morpho-blue/src/libraries/MarketParamsLib.sol";
import {MorphoBalancesLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";
import {MorphoStorageLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoStorageLib.sol";
import {MorphoLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoLib.sol";
import "../lib/morpho-blue/src/libraries/ConstantsLib.sol";

// OpenZeppelin upgradeability
import {Initializable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";

// Project interfaces
import {IMetaMorpho, MarketAllocation} from "./interfaces/IMetaMorpho.sol";
import {IMorphoReader, MarketDataExt, PositionExt} from "./interfaces/IMorphoReader.sol";

/**
 * @title MorphoHelper
 * @notice Helper contract for interacting with Morpho Blue and MetaMorpho
 * @dev This is an upgradeable contract following the UUPS pattern
 */
contract MorphoHelper is Initializable, UUPSUpgradeable, AccessControlUpgradeable {
    using MathLib for uint256;
    using MorphoBalancesLib for IMorpho;
    using MorphoStorageLib for IMorpho;
    using MorphoLib for IMorpho;
    using MarketParamsLib for MarketParams;

    struct Withdrawal {
        MarketParams market;
        int256 amount;
    }

    struct WithdrawalById {
        Id marketId;
        int256 amount;
    }

    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

    // Default Morpho Blue address - can be changed with setMorpho function
    IMorpho public morpho = IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialAdmin) public initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin);
        _grantRole(UPGRADER_ROLE, initialAdmin);
        _grantRole(OPERATOR_ROLE, initialAdmin);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER_ROLE) {}

    function setMorpho(address morpho_) external onlyRole(UPGRADER_ROLE) {
        morpho = IMorpho(morpho_);
    }

    function setOperatorRole(address operatorRole_) external onlyRole(UPGRADER_ROLE) {
        _grantRole(OPERATOR_ROLE, operatorRole_);
    }

    function reallocate(IMetaMorpho vault, MarketAllocation[] calldata allocations) external onlyRole(OPERATOR_ROLE) {
        vault.reallocate(allocations);
    }
    // withdraw and supply queue updates
    // setflowcaps for public allocator. prefix with `pa`

    function vaultPosition(IMetaMorpho vault, MarketParams memory market) public view returns (uint256) {
        return morpho.expectedSupplyAssets(market, address(vault));
    }

    function move(
        IMetaMorpho vault,
        MarketParams memory sourceMarket,
        MarketParams memory destinationMarket,
        int256 amount
    ) public onlyRole(OPERATOR_ROLE) {
        MarketAllocation[] memory allocations = new MarketAllocation[](2);
        uint256 sourcePosition = vaultPosition(vault, sourceMarket);

        uint256 newSourcePosition;
        if (amount < 0) {
            newSourcePosition = sourcePosition + uint256(-amount);
        } else {
            newSourcePosition = uint256(amount) <= sourcePosition ? sourcePosition - uint256(amount) : 0;
        }

        allocations[0] = MarketAllocation({marketParams: sourceMarket, assets: newSourcePosition});

        allocations[1] = MarketAllocation({marketParams: destinationMarket, assets: type(uint256).max});

        vault.reallocate(allocations);
    }

    function move(IMetaMorpho vault, Id sourceMarketId, Id destinationMarketId, int256 amount) external onlyRole(OPERATOR_ROLE) {
        move(vault, morpho.idToMarketParams(sourceMarketId), morpho.idToMarketParams(destinationMarketId), amount);
    }

    function move(
        IMetaMorpho vault,
        Withdrawal[] calldata withdrawals,
        MarketParams calldata destinationMarket
    ) external onlyRole(OPERATOR_ROLE) {
        _moveInternal(vault, withdrawals, destinationMarket);
    }

    function _moveInternal(IMetaMorpho vault, Withdrawal[] memory withdrawals, MarketParams memory destinationMarket) internal {
        MarketAllocation[] memory allocations = new MarketAllocation[](withdrawals.length + 1);
        for (uint256 i = 0; i < withdrawals.length; i++) {
            uint256 sourcePosition = vaultPosition(vault, withdrawals[i].market);

            uint256 newSourcePosition;
            if (withdrawals[i].amount < 0) {
                newSourcePosition = sourcePosition + uint256(-withdrawals[i].amount);
            } else {
                newSourcePosition = withdrawals[i].amount >= 0 && uint256(withdrawals[i].amount) <= sourcePosition
                    ? sourcePosition - uint256(withdrawals[i].amount)
                    : 0;
            }

            allocations[i] = MarketAllocation({marketParams: withdrawals[i].market, assets: newSourcePosition});
        }
        allocations[withdrawals.length] = MarketAllocation({marketParams: destinationMarket, assets: type(uint256).max});

        vault.reallocate(allocations);
    }

    function move(IMetaMorpho vault, WithdrawalById[] calldata withdrawals, Id destinationMarketId) external onlyRole(OPERATOR_ROLE) {
        Withdrawal[] memory withdrawals_ = new Withdrawal[](withdrawals.length);
        for (uint256 i = 0; i < withdrawals.length; i++) {
            withdrawals_[i] = Withdrawal({market: morpho.idToMarketParams(withdrawals[i].marketId), amount: withdrawals[i].amount});
        }
        _moveInternal(vault, withdrawals_, morpho.idToMarketParams(destinationMarketId));
    }

    // MorphoReader functions

    function marketParamsToId(MarketParams memory marketParams) public pure returns (Id) {
        return marketParams.id();
    }

    function getMarketData(Id id) public view returns (MarketDataExt memory marketData) {
        Market memory market = morpho.market(id);
        MarketParams memory marketParams = morpho.idToMarketParams(id);

        (marketData.totalSupplyAssets, marketData.totalSupplyShares, marketData.totalBorrowAssets, marketData.totalBorrowShares) = morpho
            .expectedMarketBalances(marketParams);

        marketData.fee = morpho.fee(id);

        // Get the borrow rate
        marketData.borrowRate = 0;
        if (marketParams.irm != address(0)) {
            marketData.borrowRate = IIrm(marketParams.irm).borrowRateView(marketParams, market).wTaylorCompounded(365 days);
        }

        // Get the supply rate
        marketData.utilization = marketData.totalSupplyAssets == 0 ? 0 : marketData.totalBorrowAssets.wDivUp(marketData.totalSupplyAssets);

        marketData.supplyRate = marketData.borrowRate.wMulDown(1 ether - market.fee).wMulDown(marketData.utilization);
    }

    function getPosition(Id id, address user) public view returns (PositionExt memory position) {
        MarketParams memory marketParams = morpho.idToMarketParams(id);

        Position memory p = morpho.position(id, user);

        uint256 collateralPrice = (marketParams.oracle == address(0)) ? 0 : IOracle(marketParams.oracle).price();
        position.collateral = p.collateral;
        position.collateralValue = position.collateral.mulDivDown(collateralPrice, ORACLE_PRICE_SCALE);
        position.borrowedAssets = morpho.expectedBorrowAssets(marketParams, user);
        position.borrowedShares = p.borrowShares;
        position.suppliedAssets = morpho.expectedSupplyAssets(marketParams, user);
        position.suppliedShares = p.supplyShares;
        position.ltv = (position.collateralValue == 0) ? 0 : position.borrowedAssets.wDivUp(position.collateralValue);

        uint256 maxBorrow = position.collateral.mulDivDown(collateralPrice, ORACLE_PRICE_SCALE).wMulDown(marketParams.lltv);

        position.healthFactor = (position.borrowedAssets == 0) ? type(uint256).max : maxBorrow.wDivDown(position.borrowedAssets);
    }
}
