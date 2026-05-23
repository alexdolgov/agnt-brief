// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "../tokens/MarketToken.sol";
import "../clearinghouse/ClearingHouseImp.sol";
import "./IMarketStorage.sol";
import "../libraries/YieldPositionLib.sol";
import "../libraries/LiquidityMath.sol";
import "../libraries/OracleLibrary.sol";
import "../v3-core/interfaces/IUniswapV3Pool.sol";
import "../v3-core/libraries/TickMath.sol";

abstract contract MarketStorage is Ownable, IMarketStorage {
    event NewImplementation(address newImplementation);
    bool internal _mutex;

    error Reentrancy();

    modifier _reentryLock_() {
        if (_mutex) revert Reentrancy();
        _mutex = true;
        _;
        _mutex = false;
    }

    bool internal initialized;
    address public implementation;
    ClearingHouseImp public clearingHouse;
    address internal factory;
    address internal market;
    address internal pool;
    int24 internal tickSpacing;
    uint256 internal activeRatioCoef;
    uint256 internal minOrderSize;
    uint256 internal orderStepSize;
    uint256 internal minLpAmount;
    address internal oracle;
    bytes32 internal marketName;
    uint256 internal expireTs;
    MarketType internal marketType;
    address internal pToken;
    address internal baseToken;
    address internal quoteToken;
    int256 internal keeperFee;
    uint256 internal maxAllowedRate; 
    uint256 internal minAllowedRate; 
    uint160 internal maxAllowedSqrtPriceX96;
    uint160 internal minAllowedSqrtPriceX96;
    uint32 internal boundTwapDuration;
    uint256 internal boundPercentage;
    bool internal shortingEnabled;


    IMarketStorage.MarketStats public stats;
    IMarketStorage.EpochUpdate public epochUpdate;
    IMarketStorage.ExpireUpdate public expireUpdate;
    IMarketStorage.EarnPosition public earnPosition;
    
    YieldPositionLib.YieldPosition public insuranceYieldPosition;
    YieldPositionLib.YieldPosition public socialLossYieldPosition;
    mapping(bytes32 => YieldPositionLib.YieldPosition) public yieldPosition;
    mapping(bytes32 => IMarketStorage.LiquidityPosition) public liquidityPositions;
    mapping(bytes32 => bool) public isExpiryOn;

    function getBasicInfo() external view returns (
        address _factory,
        address _market,
        address _pool,
        int24 _tickSpacing,
        uint256 _activeRatioCoef,
        bytes32 _marketName,
        MarketType _marketType
    ) {
        return (
            factory,
            market,
            pool,
            tickSpacing,
            activeRatioCoef,
            marketName,
            marketType
        );
    }

    function getTradeParams() external view returns (
        uint256 _minOrderSize,
        uint256 _orderStepSize,
        uint256 _minLpAmount,
        address _oracle,
        uint256 _expireTs,
        address _pToken,
        address _baseToken,
        address _quoteToken,
        int256 _keeperFee
    ) {
        return (
            minOrderSize,
            orderStepSize,
            minLpAmount,
            oracle,
            expireTs,
            pToken,
            baseToken,
            quoteToken,
            keeperFee
        );
    }

    function getPriceConfig() external view returns (
        uint256 _maxAllowedRate,
        uint256 _minAllowedRate,
        uint160 _maxAllowedSqrtPriceX96,
        uint160 _minAllowedSqrtPriceX96,
        uint256 _boundPercentage,
        uint32 _boundTwapDuration
    ) {
        return (
            maxAllowedRate,
            minAllowedRate,
            maxAllowedSqrtPriceX96,
            minAllowedSqrtPriceX96,
            boundPercentage,
            boundTwapDuration
        );
    }
   
}
