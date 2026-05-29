// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";
import {IERC20Metadata} from "src/interfaces/IERC20Metadata.sol";

import {SafeMath} from "@openzeppelin/math/SafeMath.sol";
import {MulDivMathLib} from "src/libraries/MulDivMathLib.sol";
import {IRamsesV2Pool} from "src/interfaces/pool/ramses/IRamsesV2Pool.sol";
import {RamsesLibrary} from "src/libraries/RamsesLibrary.sol";
import {RamsesLiquidityLib} from "src/libraries/RamsesLiquidityLib.sol";
import {IPriceHelper} from "src/interfaces/swap/IPriceHelper.sol";
import {ISequencer} from "src/interfaces/swap/ISequencer.sol";
import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";
import {IFeeds} from "src/interfaces/management/IFeeds.sol";

contract RamsesPriceHelper is IPriceHelper, UpgradeableGovernable {
    using SafeMath for uint256;
    using MulDivMathLib for uint256;

    mapping(address => PoolData) public data;
    address public factory;
    IFeeds public feeds;

    // Math Precision
    uint256 public constant PRECISION = 1e30;

    bool public l2;

    /// @notice L2 Sequencer
    ISequencer public sequencer;

    uint256 private constant GRACE_PERIOD_TIME = 7200;

    function initialize(address _factory, address _feeds, bool _l2, address _sequencer) external initializer {
        __Governable_init(msg.sender);

        factory = _factory;
        feeds = IFeeds(_feeds);

        l2 = _l2;

        if (_l2) {
            sequencer = ISequencer(_sequencer);
        }
    }

    /**
     * @notice Get the amounts of the given numbers of liquidity tokens
     * @param pool Algebra liquidity pool contract
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @param liquidity The amount of liquidity tokens
     * @return Amount of token0 and token1
     */
    function amountsForLiquidity(address pool, int24 tickLower, int24 tickUpper, uint128 liquidity)
        external
        view
        override
        returns (uint256, uint256)
    {
        return RamsesLiquidityLib.amountsForLiquidity(pool, tickLower, tickUpper, liquidity);
    }

    /**
     * @notice Get the liquidity amount of the given numbers of token0 and token1
     * @param pool Algebra liquidity pool contract
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @param amount0 The amount of token0
     * @param amount1 The amount of token1
     * @return Amount of liquidity tokens
     */
    function liquidityForAmounts(address pool, int24 tickLower, int24 tickUpper, uint256 amount0, uint256 amount1)
        external
        view
        override
        returns (uint128)
    {
        return RamsesLiquidityLib.liquidityForAmounts(pool, tickLower, tickUpper, amount0, amount1);
    }

    /**
     * @notice Get the amounts needed in deposits of the given amoun0
     * @param pool Algebra liquidity pool contract
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @param amount0 The amount of token0
     * @return Amount of token0
     * @return Amount of token1
     */
    function amountsForAmount0(address pool, int24 tickLower, int24 tickUpper, uint256 amount0)
        external
        view
        override
        returns (uint256, uint256)
    {
        return RamsesLiquidityLib.amountsForAmount0(pool, tickLower, tickUpper, amount0);
    }

    /**
     * @notice Get the amounts needed in deposits of the given amount1
     * @param pool Algebra liquidity pool contract
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @param amount1 The amount of token1
     * @return Amount of token0
     * @return Amount of token1
     */
    function amountsForAmount1(address pool, int24 tickLower, int24 tickUpper, uint256 amount1)
        public
        view
        override
        returns (uint256, uint256)
    {
        return RamsesLiquidityLib.amountsForAmount1(pool, tickLower, tickUpper, amount1);
    }

    /**
     * @notice Normalice token decimals to uint256(18).
     * @param _token Token address.
     * @param _amount amount of tokens.
     */
    function normalise(address _token, uint256 _amount) external view override returns (uint256 normalised) {
        normalised = _amount;

        uint256 _decimals = IERC20Metadata(_token).decimals();

        if (_decimals < 18) {
            normalised = _amount.mul(10 ** (uint256(18).sub(_decimals)));
        } else if (_decimals > 18) {
            normalised = _amount.div(10 ** (_decimals.sub(18)));
        }
    }

    /**
     * @notice Return USD price of pool tokens; token0 and token1.
     * @param pool UniswapV3 Pool.
     * @return price0 usd price of token0; uint256(18) decimals.
     * @return price1 usd price of token1; uint256(18) decimals.
     */
    function getPrices(address pool) external view override returns (uint256 price0, uint256 price1) {
        PoolData memory _data = data[pool];

        uint256 oraclePrice = _oraclePrice(_data);
        uint256 oracleDecimals = _data.feed.decimals();

        // TWAP of token0 quoted in token1.
        uint256 spotPrice = _manipulationProtection(pool, _data);

        if (_data.referenceToken == IRamsesV2Pool(pool).token1()) {
            //  token1 decimals * oracle decimals
            price0 = spotPrice.mul(oraclePrice);
            uint256 decimals = oracleDecimals.add(IERC20Metadata(IRamsesV2Pool(pool).token1()).decimals());
            if (decimals < 18) {
                price0 = price0.mul(10 ** (uint256(18).sub(decimals)));
            } else {
                price0 = price0.div(10 ** (decimals.sub(18)));
            }

            price1 = oraclePrice;

            if (oracleDecimals < 18) {
                price1 = price1.mul(10 ** (uint256(18).sub(oracleDecimals)));
            } else {
                price1 = price1.div(10 ** (oracleDecimals.sub(18)));
            }
        } else {
            price0 = oraclePrice;
            if (oracleDecimals < 18) {
                price0 = price0.mul(10 ** (uint256(18).sub(oracleDecimals)));
            } else {
                price0 = price0.div(10 ** (oracleDecimals.sub(18)));
            }

            price1 = price0.mulDivDown(PRECISION, spotPrice); //24 decimals

            uint256 decimals = uint256(48).sub(IERC20Metadata(IRamsesV2Pool(pool).token1()).decimals());

            if (decimals < 18) {
                price1 = price1.mul(10 ** (uint256(18).sub(decimals)));
            } else {
                price1 = price1.div(10 ** (decimals.sub(18)));
            }
        }
    }

    /**
     * @notice Check pool manipulation. check if the price change "too much" (base on threshold) in X time.
     * @param pool UniswapV3 Pool.
     * @return spot TWAP price of token0 quoted in token1.
     */
    function checkManipulation(address pool) external view override returns (uint256 spot) {
        PoolData memory _data = data[pool];

        spot = RamsesLibrary.getSpot(pool);

        uint256 mean = RamsesLibrary.getPrice(pool, _data.secondsAgo);

        uint256 diff;

        if (mean > spot) {
            diff = mean.sub(spot).mulDivDown(PRECISION, spot.add(mean).div(2));
        } else {
            diff = spot.sub(mean).mulDivDown(PRECISION, spot.add(mean).div(2));
        }

        require(spot > 0, "Spot 0");
        require(diff <= _data.threshold, "Pool Manipulated");
    }

    /**
     * @notice Check pool manipulation. check if the price change "too much" (base on threshold) in X time.
     * @param pool UniswapV3 Pool.
     * @return spot TWAP price of token0 quoted in token1.
     */
    function _manipulationProtection(address pool, PoolData memory _data) private view returns (uint256 spot) {
        spot = RamsesLibrary.getSpot(pool);

        uint256 mean = RamsesLibrary.getPrice(pool, _data.secondsAgo);

        uint256 diff;

        if (mean > spot) {
            diff = mean.sub(spot).mulDivDown(PRECISION, spot.add(mean).div(2));
        } else {
            diff = spot.sub(mean).mulDivDown(PRECISION, spot.add(mean).div(2));
        }

        require(spot > 0, "Spot 0");
        require(diff <= _data.threshold, "Pool Manipulated");
    }

    /**
     * @notice Get Oracle price.
     * @param _data Pool Data.
     * @return Oracle price
     */
    function _oraclePrice(PoolData memory _data) private view returns (uint256) {
        uint256 justNow = block.timestamp;

        if (l2) {
            (
                /*uint80 roundID*/
                ,
                int256 answer,
                uint256 startedAt,
                /*uint256 updatedAt*/
                ,
                /*uint80 answeredInRound*/
            ) = sequencer.latestRoundData();

            require(answer != 1, "Sequencer Down");
            require(justNow - startedAt > GRACE_PERIOD_TIME, "Grace Period Not Over");
        }

        (, int256 oraclePrice,, uint256 updatedAt,) = _data.feed.latestRoundData();

        require(oraclePrice > 0, "Invalid Price");

        require(justNow <= updatedAt + _data.stalePeriod, "Stale Price Update");

        return uint256(oraclePrice);
    }

    /**
     * @notice Update pool Data.
     * @param pool UniswapV3 Pool.
     * @param _input Pool Input.
     */
    function updatePoolData(address pool, PoolInput memory _input) external override onlyGovernorOrFactory {
        address feed = feeds.getPriceFeed(_input.referenceToken);
        data[pool] = PoolData({
            feed: IAggregatorV3(feed),
            referenceToken: _input.referenceToken,
            secondsAgo: _input.secondsAgo,
            threshold: _input.threshold,
            stalePeriod: _input.stalePeriod
        });
    }

    /**
     * @notice Set New Factory.
     * @param _factory Factory address.
     */
    function setFactory(address _factory) external onlyGovernor {
        factory = _factory;
    }

    /**
     * @notice Update Sequencer
     */
    function updateSequencer(address _sequencer) external onlyGovernor {
        sequencer = ISequencer(_sequencer);
    }

    /**
     * @notice Set New Price Feed.
     * @param _feeds Feeds address.
     */
    function setFeeds(address _feeds) external onlyGovernor {
        feeds = IFeeds(_feeds);
    }

    /**
     * @notice Only msg.sender with GOVERNOR role or if it is the factory can call the function.
     */
    modifier onlyGovernorOrFactory() {
        require(hasRole(GOVERNOR, msg.sender) || msg.sender == factory, "Invalid Caller");

        _;
    }
}
