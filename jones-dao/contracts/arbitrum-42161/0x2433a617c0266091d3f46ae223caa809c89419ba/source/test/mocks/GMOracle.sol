// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20Metadata} from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";
import {ISequencer} from "src/interfaces/swap/ISequencer.sol";
import {IReader, DataStore, Market, Price} from "src/interfaces/gmx/IReader.sol";
import {Keys} from "src/interfaces/gmx/Keys.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {MarketPoolValueInfo} from "src/interfaces/gmx/MarketPoolValueInfo.sol";

import {Ownable} from "openzeppelin-contracts/access/Ownable.sol";

contract GMOracle is IAggregatorV3, Ownable {
    using FixedPointMathLib for uint256;

    struct GMTokens {
        address marketToken;
        address indexToken;
        address longToken;
        address shortToken;
    }

    struct GMInfo {
        int256 price;
        int256 poolValue;
        int256 longPnl;
        int256 shortPnl;
        int256 netPnl;
        uint256 longTokenAmount;
        uint256 shortTokenAmount;
        uint256 longTokenUsd;
        uint256 shortTokenUsd;
        uint256 totalBorrowingFees;
        uint256 borrowingFeePoolFactor;
        uint256 impactPoolAmount;
    }

    IReader private constant reader = IReader(0xf60becbba223EEA9495Da3f606753867eC10d139);
    DataStore private constant dataStore = DataStore(0xFD70de6b91282D8017aA4E741e9Ae325CAb992d8);

    address private constant BTC_INDEX = 0x47904963fc8b2340414262125aF798B9655E58Cd;
    GMTokens public tokens;

    IAggregatorV3 public indexOracle;
    IAggregatorV3 public longOracle;
    IAggregatorV3 public shortOracle;

    string private description_;

    /// @notice ARB Sequencer
    ISequencer public sequencer;

    mapping(address => uint256) public gracePeriod;

    constructor(
        string memory _description,
        GMTokens memory _tokens,
        address _indexOracle,
        address _longOracle,
        address _shortOracle
    ) Ownable(msg.sender) {
        tokens = _tokens;

        indexOracle = IAggregatorV3(_indexOracle);
        longOracle = IAggregatorV3(_longOracle);
        shortOracle = IAggregatorV3(_shortOracle);

        description_ = _description;

        sequencer = ISequencer(0xFdB631F5EE196F0ed6FAa767959853A9F217697D);

        gracePeriod[_indexOracle] = 86400;
        gracePeriod[_longOracle] = 86400;
        gracePeriod[_shortOracle] = 86400;
    }

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (
            /*uint80 roundID*/
            ,
            int256 answer,
            /*uint256 startedAt*/
            ,
            /*uint256 updatedAt*/
            ,
            /*uint80 answeredInRound*/
        ) = sequencer.latestRoundData();

        if (answer == 1) {
            revert SequencerDown();
        }

        uint256 _indexPrice;
        if (tokens.indexToken == BTC_INDEX) {
            _indexPrice = _adjustDecimals(_price(indexOracle), tokens.longToken);
        } else {
            _indexPrice = _adjustDecimals(_price(indexOracle), tokens.indexToken);
        }

        uint256 _longPrice = _adjustDecimals(_price(longOracle), tokens.longToken);
        uint256 _shortPrice = _adjustDecimals(_price(shortOracle), tokens.shortToken);

        (int256 price,) = reader.getMarketTokenPrice(
            dataStore,
            Market.Props({
                marketToken: tokens.marketToken,
                indexToken: tokens.indexToken,
                longToken: tokens.longToken,
                shortToken: tokens.shortToken
            }),
            Price.Props({min: _indexPrice, max: _indexPrice}),
            Price.Props({min: _longPrice, max: _longPrice}),
            Price.Props({min: _shortPrice, max: _shortPrice}),
            Keys.MAX_PNL_FACTOR_FOR_WITHDRAWALS,
            false
        ); // price have 30 decimals

        return (uint80(0), price / 1e12, block.timestamp - 1, block.timestamp - 1, uint80(1));
    }

    function decimals() external view returns (uint8) {
        return 18;
    }

    function version() external view returns (uint256) {
        return 1;
    }

    function _adjustDecimals(int256 _price, address token) private view returns (uint256) {
        return uint256(_price).mulDivDown(1e22, 10 ** IERC20Metadata(token).decimals());
    }

    function getRoundData(uint80 _roundId)
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (
            /*uint80 roundID*/
            ,
            int256 answer,
            /*uint256 startedAt*/
            ,
            /*uint256 updatedAt*/
            ,
            /*uint80 answeredInRound*/
        ) = sequencer.latestRoundData();

        if (answer == 1) {
            revert SequencerDown();
        }

        uint256 _indexPrice;
        if (tokens.indexToken == BTC_INDEX) {
            _indexPrice = _adjustDecimals(_price(indexOracle), tokens.longToken);
        } else {
            _indexPrice = _adjustDecimals(_price(indexOracle), tokens.indexToken);
        }

        uint256 _longPrice = _adjustDecimals(_price(longOracle), tokens.longToken);
        uint256 _shortPrice = _adjustDecimals(_price(shortOracle), tokens.shortToken);

        (int256 price,) = reader.getMarketTokenPrice(
            dataStore,
            Market.Props({
                marketToken: tokens.marketToken,
                indexToken: tokens.indexToken,
                longToken: tokens.longToken,
                shortToken: tokens.shortToken
            }),
            Price.Props({min: _indexPrice, max: _indexPrice}),
            Price.Props({min: _longPrice, max: _longPrice}),
            Price.Props({min: _shortPrice, max: _shortPrice}),
            Keys.MAX_PNL_FACTOR_FOR_WITHDRAWALS,
            false
        ); // price have 30 decimals

        return (uint80(0), price / 1e12, block.timestamp - 1, block.timestamp - 1, uint80(1));
    }

    function getGMInfo() external view returns (GMInfo memory) {
        (
            /*uint80 roundID*/
            ,
            int256 answer,
            /*uint256 startedAt*/
            ,
            /*uint256 updatedAt*/
            ,
            /*uint80 answeredInRound*/
        ) = sequencer.latestRoundData();

        if (answer == 1) {
            revert SequencerDown();
        }

        uint256 _indexPrice;
        if (tokens.indexToken == BTC_INDEX) {
            _indexPrice = _adjustDecimals(_price(indexOracle), tokens.longToken);
        } else {
            _indexPrice = _adjustDecimals(_price(indexOracle), tokens.indexToken);
        }

        uint256 _longPrice = _adjustDecimals(_price(longOracle), tokens.longToken);
        uint256 _shortPrice = _adjustDecimals(_price(shortOracle), tokens.shortToken);

        (int256 price, MarketPoolValueInfo.Props memory info) = reader.getMarketTokenPrice(
            dataStore,
            Market.Props({
                marketToken: tokens.marketToken,
                indexToken: tokens.indexToken,
                longToken: tokens.longToken,
                shortToken: tokens.shortToken
            }),
            Price.Props({min: _indexPrice, max: _indexPrice}),
            Price.Props({min: _longPrice, max: _longPrice}),
            Price.Props({min: _shortPrice, max: _shortPrice}),
            Keys.MAX_PNL_FACTOR_FOR_WITHDRAWALS,
            false
        ); // price have 30 decimals
        return GMInfo({
            price: price,
            poolValue: info.poolValue,
            longPnl: info.longPnl,
            shortPnl: info.shortPnl,
            netPnl: info.netPnl,
            longTokenAmount: info.longTokenAmount,
            shortTokenAmount: info.shortTokenAmount,
            longTokenUsd: info.longTokenUsd,
            shortTokenUsd: info.shortTokenUsd,
            totalBorrowingFees: info.totalBorrowingFees,
            borrowingFeePoolFactor: info.borrowingFeePoolFactor,
            impactPoolAmount: info.impactPoolAmount
        });
    }

    function description() external view returns (string memory) {
        return description_;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  ONLY OWNER                                */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Update Tokens
     */
    function updateTokens(GMTokens memory _tokens) external onlyOwner {
        _tokens = _tokens;
    }

    /**
     * @notice Update Oracle
     */
    function updateOracle(address _oracle, uint8 _type) external onlyOwner {
        if (_type == 0) {
            indexOracle = IAggregatorV3(_oracle);
        } else if (_type == 1) {
            longOracle = IAggregatorV3(_oracle);
        } else {
            shortOracle = IAggregatorV3(_oracle);
        }
    }

    /**
     * @notice Update Sequencer
     */
    function updateSequencer(address _sequencer) external onlyOwner {
        sequencer = ISequencer(_sequencer);
    }

    /**
     * @notice Update Oracle grace period.
     */
    function updateOracleGracePeriod(address _oracle, uint256 _gracePeriod) external onlyOwner {
        gracePeriod[_oracle] = _gracePeriod;
    }

    /**
     * @notice Get USD Price.
     */
    function _price(IAggregatorV3 oracle) public view returns (int256) {
        (, int256 currentPrice,, uint256 updatedAt,) = oracle.latestRoundData();

        if (currentPrice == 0) {
            revert InvalidPrice();
        }

        if (block.timestamp > updatedAt + gracePeriod[address(oracle)]) {
            revert StalePriceUpdate();
        }

        return currentPrice;
    }

    error InvalidPrice();
    error StalePriceUpdate();
    error SequencerDown();
}
