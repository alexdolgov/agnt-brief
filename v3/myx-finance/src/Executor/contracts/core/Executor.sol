// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {IAddressesProvider} from "../interfaces/IAddressesProvider.sol";
import {IAdlExecutionLogic} from "../interfaces/IAdlExecutionLogic.sol";
import {IBacktracker} from "../interfaces/IBacktracker.sol";
import {IExecution} from "../interfaces/IExecution.sol";
import {IExecutionLogic} from "../interfaces/IExecutionLogic.sol";
import {IExecutor} from "../interfaces/IExecutor.sol";
import {IIndexPriceFeed} from "../interfaces/IIndexPriceFeed.sol";
import {ILiquidationLogic} from "../interfaces/ILiquidationLogic.sol";
import {IPositionManager} from "../interfaces/IPositionManager.sol";
import {IRoleManager} from "../interfaces/IRoleManager.sol";
import {Roleable} from "../libraries/Roleable.sol";
import {TradingTypes} from "../libraries/TradingTypes.sol";
import {OracleTypes} from "../oracleV3/OracleTypes.sol";
import {IOracleManager} from "../oracleV3/interfaces/IOracleManager.sol";
import {IOraclePriceFeedV3} from "../oracleV3/interfaces/IOraclePriceFeedV3.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract Executor is IExecutor, Roleable, ReentrancyGuard, Pausable {

    IPositionManager public positionManager;
    address public adlExecutionLogic;

    constructor(
        IAddressesProvider addressProvider,
        address _adlExecutionLogic
    ) Roleable(addressProvider) {
        adlExecutionLogic = _adlExecutionLogic;
    }

    modifier onlyPositionKeeper() {
        require(IRoleManager(ADDRESS_PROVIDER.roleManager()).isKeeper(msg.sender), "opk");
        _;
    }

    function setPaused() external onlyPoolAdmin {
        _pause();
    }

    function setUnPaused() external onlyPoolAdmin {
        _unpause();
    }

    function updatePositionManager(address _positionManager) external onlyPoolAdmin {
        address oldAddress = address(positionManager);
        positionManager = IPositionManager(_positionManager);
        emit UpdatePositionManager(msg.sender, oldAddress, _positionManager);
    }

    function setPriceAndUpdateFundingRate(
        uint256 pairIndex,
        OracleTypes.PriceFeedParams memory params
    ) external payable whenNotPaused nonReentrant onlyPositionKeeper {
        IOraclePriceFeedV3(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(params.oracleType, params.tokens, params.updateData, params.publishTimes);

        positionManager.updateFundingRate(pairIndex, params.oracleType);
    }

    function setPricesAndExecuteOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory orders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(tokens.length == prices.length && tokens.length >= 0, "ip");

        _setPrices(tokens, prices, updateData, publishTimes);

        _setPricesAndExecuteOrders(orders);
    }

    function setPricesAndExecuteIncreaseMarketOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory increaseOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(tokens.length == prices.length && tokens.length >= 0, "ip");

        _setPrices(tokens, prices, updateData, publishTimes);

        _setPricesAndExecuteMarketOrders(true, increaseOrders);
    }

    function setPricesAndExecuteDecreaseMarketOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory decreaseOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(tokens.length == prices.length && tokens.length >= 0, "ip");

        _setPrices(tokens, prices, updateData, publishTimes);

        _setPricesAndExecuteMarketOrders(false, decreaseOrders);
    }

    function setPricesAndExecuteIncreaseLimitOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory increaseOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(tokens.length == prices.length && tokens.length >= 0, "ip");

        _setPrices(tokens, prices, updateData, publishTimes);

        _setPricesAndExecuteLimitOrders(true, increaseOrders);
    }

    function setPricesAndExecuteDecreaseLimitOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory decreaseOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(tokens.length == prices.length && tokens.length >= 0, "ip");

        _setPrices(tokens, prices, updateData, publishTimes);

        _setPricesAndExecuteLimitOrders(false, decreaseOrders);
    }

    function setPricesAndExecuteADLOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        uint256 pairIndex,
        IExecution.ExecutePosition[] memory executePositions,
        IExecutionLogic.ExecuteOrder[] memory executeOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(tokens.length == prices.length && tokens.length >= 0, "ip");

        _setPrices(tokens, prices, updateData, publishTimes);

        _setPricesAndExecuteADLOrders(pairIndex, executePositions, executeOrders);
    }

    function setPricesAndLiquidatePositions(
        address[] memory _tokens,
        uint256[] memory _prices,
        LiquidatePosition[] memory liquidatePositions
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(_tokens.length == _prices.length && _tokens.length >= 0, "ip");

        IIndexPriceFeed(ADDRESS_PROVIDER.indexPriceOracle()).updatePrice(_tokens, _prices);

        _setPricesAndLiquidatePositions(OracleTypes.OracleType.PYTH, liquidatePositions);
    }

    function _setPrices(
        address[] memory _tokens,
        uint256[] memory _prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes
    ) internal {
        IIndexPriceFeed(ADDRESS_PROVIDER.indexPriceOracle()).updatePrice(_tokens, _prices);

        IOracleManager(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(
            OracleTypes.OracleType.PYTH,
            _tokens,
            updateData,
            publishTimes
        );
    }

    function setPricesAndExecuteOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory orders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(priceFeedParams.tokens.length == priceFeedParams.prices.length
        && priceFeedParams.tokens.length >= 0, "ip");

        _setPricesV2(priceFeedParams);

        _setPricesAndExecuteOrders(orders);
    }

    function setPricesAndExecuteIncreaseMarketOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory increaseOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(priceFeedParams.tokens.length == priceFeedParams.prices.length
        && priceFeedParams.tokens.length >= 0, "ip");

        _setPricesV2(priceFeedParams);

        _setPricesAndExecuteMarketOrders(true, increaseOrders);
    }

    function setPricesAndExecuteDecreaseMarketOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory decreaseOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(priceFeedParams.tokens.length == priceFeedParams.prices.length
        && priceFeedParams.tokens.length >= 0, "ip");

        _setPricesV2(priceFeedParams);

        _setPricesAndExecuteMarketOrders(false, decreaseOrders);
    }

    function setPricesAndExecuteIncreaseLimitOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory increaseOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(priceFeedParams.tokens.length == priceFeedParams.prices.length
        && priceFeedParams.tokens.length >= 0, "ip");

        _setPricesV2(priceFeedParams);

        _setPricesAndExecuteLimitOrders(true, increaseOrders);
    }

    function setPricesAndExecuteDecreaseLimitOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory decreaseOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(priceFeedParams.tokens.length == priceFeedParams.prices.length
        && priceFeedParams.tokens.length >= 0, "ip");

        _setPricesV2(priceFeedParams);

        _setPricesAndExecuteLimitOrders(false, decreaseOrders);
    }

    function setPricesAndExecuteADLOrdersV2(
        uint256 pairIndex,
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecution.ExecutePosition[] memory executePositions,
        IExecutionLogic.ExecuteOrder[] memory executeOrders
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(priceFeedParams.tokens.length == priceFeedParams.prices.length
        && priceFeedParams.tokens.length >= 0, "ip");

        _setPricesV2(priceFeedParams);

        _setPricesAndExecuteADLOrders(pairIndex, executePositions, executeOrders);
    }

    function setPricesAndLiquidatePositionsV2(
        OracleTypes.OracleType _oracleType,
        address[] memory _tokens,
        uint256[] memory _prices,
        LiquidatePosition[] memory liquidatePositions
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(_tokens.length == _prices.length && _tokens.length >= 0, "ip");

        IIndexPriceFeed(ADDRESS_PROVIDER.indexPriceOracle()).updatePrice(_tokens, _prices);

        _setPricesAndLiquidatePositions(_oracleType, liquidatePositions);
    }

    function setPricesAndExecuteADLOrdersV3(
        uint256 pairIndex,
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecution.ExecutePosition[] memory adlPositionParams,
        IExecutionLogic.ExecuteOrder memory orderParams
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(priceFeedParams.tokens.length == priceFeedParams.prices.length && priceFeedParams.tokens.length >= 0, "ip");

        _setPricesV2(priceFeedParams);

        bool adlExec = IAdlExecutionLogic(adlExecutionLogic).matchAdlExecute(
            msg.sender,
            pairIndex,
            adlPositionParams,
            orderParams
        );

        if (!adlExec) {
            IExecutionLogic.ExecuteOrder[] memory orders = new IExecutionLogic.ExecuteOrder[](1);
            orders[0] = orderParams;

            _setPricesAndExecuteOrders(orders);
        }
    }

    function setPricesAndLiquidatePositionsV3(
        OracleTypes.OracleType _oracleType,
        address[] memory _tokens,
        uint256[] memory _prices,
        LiquidatePosition memory liquidatePosition,
        ExecutePosition[] memory adlPositions
    ) external payable override whenNotPaused nonReentrant onlyPositionKeeper {
        require(_tokens.length == _prices.length && _tokens.length >= 0, "ip");

        IIndexPriceFeed(ADDRESS_PROVIDER.indexPriceOracle()).updatePrice(_tokens, _prices);

        _setPricesAndLiquidatePositionWithAdl(_oracleType, liquidatePosition, adlPositions);
    }

    function _setPricesV2(OracleTypes.PriceFeedParams memory priceFeedParams) internal {
        IIndexPriceFeed(ADDRESS_PROVIDER.indexPriceOracle()).updatePrice(priceFeedParams.tokens, priceFeedParams.prices);

        IOracleManager(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(
            priceFeedParams.oracleType,
            priceFeedParams.tokens,
            priceFeedParams.updateData,
            priceFeedParams.publishTimes
        );
    }

    function needADL(
        uint256 pairIndex,
        bool isLong,
        uint256 executionSize,
        uint256 executionPrice
    ) external view returns (bool need, uint256 needADLAmount) {
        return positionManager.needADL(pairIndex, isLong, executionSize, executionPrice);
    }

    function cleanInvalidPositionOrders(
        bytes32[] calldata positionKeys
    ) external override whenNotPaused nonReentrant onlyPositionKeeper {
        ILiquidationLogic(ADDRESS_PROVIDER.liquidationLogic()).cleanInvalidPositionOrders(positionKeys);
    }

    function _fillOrders(
        IExecutionLogic.ExecuteOrder memory order
    ) private pure returns (IExecutionLogic.ExecuteOrder[] memory increaseOrders) {
        increaseOrders = new IExecutionLogic.ExecuteOrder[](1);
        increaseOrders[0] = order;
    }

    function _setPricesAndExecuteOrders(IExecutionLogic.ExecuteOrder[] memory orders) internal {
        for (uint256 i = 0; i < orders.length; i++) {
            IExecutionLogic.ExecuteOrder memory order = orders[i];
            if (order.isIncrease) {
                IExecutionLogic(ADDRESS_PROVIDER.executionLogic()).executeIncreaseOrders(
                    msg.sender,
                    _fillOrders(order),
                    order.tradeType
                );
            } else {
                IExecutionLogic(ADDRESS_PROVIDER.executionLogic()).executeDecreaseOrders(
                    msg.sender,
                    _fillOrders(order),
                    order.tradeType
                );
            }
        }
    }

    function _setPricesAndExecuteMarketOrders(bool isIncrease, IExecutionLogic.ExecuteOrder[] memory orders) internal {
        if (isIncrease) {
            IExecutionLogic(ADDRESS_PROVIDER.executionLogic()).executeIncreaseOrders(
                msg.sender,
                orders,
                TradingTypes.TradeType.MARKET
            );
        } else {
            IExecutionLogic(ADDRESS_PROVIDER.executionLogic()).executeDecreaseOrders(
                msg.sender,
                orders,
                TradingTypes.TradeType.MARKET
            );
        }
    }

    function _setPricesAndExecuteLimitOrders(bool isIncrease, IExecutionLogic.ExecuteOrder[] memory orders) internal {
        if (isIncrease) {
            IExecutionLogic(ADDRESS_PROVIDER.executionLogic()).executeIncreaseOrders(
                msg.sender,
                orders,
                TradingTypes.TradeType.LIMIT
            );
        } else {
            IExecutionLogic(ADDRESS_PROVIDER.executionLogic()).executeDecreaseOrders(
                msg.sender,
                orders,
                TradingTypes.TradeType.LIMIT
            );
        }
    }

    function _setPricesAndExecuteADLOrders(
        uint256 pairIndex,
        IExecution.ExecutePosition[] memory executePositions,
        IExecutionLogic.ExecuteOrder[] memory executeOrders
    ) internal {
        IExecutionLogic(ADDRESS_PROVIDER.executionLogic()).executeADLAndDecreaseOrders(
            msg.sender,
            pairIndex,
            executePositions,
            executeOrders
        );
    }


    function _setPricesAndLiquidatePositions(
        OracleTypes.OracleType _oracleType,
        LiquidatePosition[] memory liquidatePositions
    ) internal {
        for (uint256 i = 0; i < liquidatePositions.length; i++) {
            LiquidatePosition memory execute = liquidatePositions[i];

            require(positionManager.getPositionUpdateAtByKey(execute.positionKey) <= execute.backtrackRound, "invalid round");

            IBacktracker(ADDRESS_PROVIDER.backtracker()).enterBacktracking(execute.backtrackRound);

            address[] memory tokens = new address[](1);
            tokens[0] = execute.token;
            bytes[] memory updatesData = new bytes[](1);
            updatesData[0] = execute.updateData;
            IOracleManager(ADDRESS_PROVIDER.priceOracle()).updateHistoricalPrice{value: execute.updateFee}(
                _oracleType,
                tokens,
                updatesData,
                execute.backtrackRound
            );

            try ILiquidationLogic(ADDRESS_PROVIDER.liquidationLogic()).liquidationPosition(
                msg.sender,
                execute.positionKey,
                execute.tier,
                execute.referralsRatio,
                execute.referralUserRatio,
                execute.referralOwner
            ) {} catch Error(string memory reason) {
                emit ExecutePositionError(execute.positionKey, reason);
            }

            IOracleManager(ADDRESS_PROVIDER.priceOracle()).removeHistoricalPrice(
                _oracleType,
                execute.backtrackRound,
                tokens
            );

            IBacktracker(ADDRESS_PROVIDER.backtracker()).quitBacktracking();
        }
    }

    function _setPricesAndLiquidatePositionWithAdl(
        OracleTypes.OracleType _oracleType,
        LiquidatePosition memory liqPosition,
        ExecutePosition[] memory adlPositions
    ) internal {
        require(positionManager.getPositionUpdateAtByKey(liqPosition.positionKey) <= liqPosition.backtrackRound, "invalid round");

        IBacktracker(ADDRESS_PROVIDER.backtracker()).enterBacktracking(liqPosition.backtrackRound);

        address[] memory tokens = new address[](1);
        tokens[0] = liqPosition.token;
        bytes[] memory updatesData = new bytes[](1);
        updatesData[0] = liqPosition.updateData;
        IOracleManager(ADDRESS_PROVIDER.priceOracle()).updateHistoricalPrice{value: liqPosition.updateFee}(
            _oracleType,
            tokens,
            updatesData,
            liqPosition.backtrackRound
        );

        try ILiquidationLogic(ADDRESS_PROVIDER.liquidationLogic()).liquidateAdlExecution(
            msg.sender,
            liqPosition.positionKey,
            adlPositions,
            liqPosition.tier,
            liqPosition.referralsRatio,
            liqPosition.referralUserRatio,
            liqPosition.referralOwner
        ) {} catch Error(string memory reason) {
            emit ExecutePositionError(liqPosition.positionKey, reason);
        }

        IOracleManager(ADDRESS_PROVIDER.priceOracle()).removeHistoricalPrice(
            _oracleType,
            liqPosition.backtrackRound,
            tokens
        );

        IBacktracker(ADDRESS_PROVIDER.backtracker()).quitBacktracking();
    }
}
