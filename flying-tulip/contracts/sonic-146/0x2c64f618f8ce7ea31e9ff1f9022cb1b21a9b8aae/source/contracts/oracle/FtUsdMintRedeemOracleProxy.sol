// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Ownable, Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

import {AggregatorV3Interface} from "./OracleRouterChainlink.sol";

interface IFtUsdMintRedeem {
    function previewMint(
        address collateralToken,
        uint256 collateralAmount
    )
        external
        view
        returns (uint256 ftUSDAmount);

    function previewRedeem(
        address collateralToken,
        uint256 ftUSDAmount
    )
        external
        view
        returns (uint256 collateralAmount);
}

/// @title FtUsdMintRedeemOracleProxy
/// @notice AggregatorV3-compatible ftUSD/USD proxy derived from MintAndRedeem USDC quotes.
/// @dev Reads both 1 USDC -> ftUSD and 1 ftUSD -> USDC previews, converts each path to a USD
///      price for 1 ftUSD using the base USDC/USD feed, returns the lower value capped by
///      `maxAnswer`. Round metadata comes from the base feed.
contract FtUsdMintRedeemOracleProxy is AggregatorV3Interface, Ownable2Step {
    using SafeCast for uint256;

    uint8 private constant FTUSD_DECIMALS = 6;
    uint256 private constant FTUSD_UNIT = 1e6;
    uint32 private constant DEFAULT_MAX_STALENESS = 24 hours;

    error ZeroAddress();
    error NotAContract(address a);
    error UnsupportedCollateralDecimals(uint8 decimals);
    error UnsupportedAnswerDecimals(uint8 decimals);
    error Paused();
    error BaseRoundIncomplete(uint80 roundId, uint80 answeredInRound, uint256 updatedAt);
    error BaseRoundStale(uint256 updatedAt, uint32 maxStaleness);
    error NonPositiveAnswer(int256 answer);
    error AnswerBelowMin(int256 answer, int256 minAnswer, int256 maxAnswer);
    error InvalidAnswerBounds(int256 minAnswer, int256 maxAnswer);
    error AnswerTooLarge(uint256 answer);

    event PausedSet(bool paused);
    event RequirePositiveAnswerSet(bool enabled);
    event AnswerBoundsSet(bool enabled, int256 minAnswer, int256 maxAnswer);
    event MaxStalenessSet(uint32 maxStaleness);

    AggregatorV3Interface public immutable baseFeed;
    IFtUsdMintRedeem public immutable mintRedeem;
    address public immutable usdc;
    uint8 public immutable answerDecimals;

    bool public paused;
    bool public requirePositiveAnswer;
    bool public boundsEnabled;
    uint32 public maxStaleness; // 0 = disabled
    int256 public minAnswer;
    int256 public maxAnswer;

    constructor(
        address _baseFeed,
        address _mintRedeem,
        address _usdc,
        address initialOwner,
        uint256 initialMaxAnswer
    )
        Ownable(initialOwner)
    {
        if (
            _baseFeed == address(0) || _mintRedeem == address(0) || _usdc == address(0)
                || initialOwner == address(0)
        ) {
            revert ZeroAddress();
        }
        if (_baseFeed.code.length == 0) revert NotAContract(_baseFeed);
        if (_mintRedeem.code.length == 0) revert NotAContract(_mintRedeem);
        if (_usdc.code.length == 0) revert NotAContract(_usdc);

        uint8 collateralDecimals = IERC20Metadata(_usdc).decimals();
        if (collateralDecimals != FTUSD_DECIMALS) {
            revert UnsupportedCollateralDecimals(collateralDecimals);
        }

        uint8 feedDecimals = AggregatorV3Interface(_baseFeed).decimals();
        if (feedDecimals > 76) revert UnsupportedAnswerDecimals(feedDecimals);

        baseFeed = AggregatorV3Interface(_baseFeed);
        mintRedeem = IFtUsdMintRedeem(_mintRedeem);
        usdc = _usdc;
        answerDecimals = feedDecimals;

        requirePositiveAnswer = true;
        maxStaleness = DEFAULT_MAX_STALENESS;

        uint256 initialCap = initialMaxAnswer == 0 ? 10 ** uint256(feedDecimals) : initialMaxAnswer;
        boundsEnabled = true;
        minAnswer = 0;
        maxAnswer = _toInt256Answer(initialCap);
    }

    /*//////////////////////////////////////////////////////////////
                                ADMIN
    //////////////////////////////////////////////////////////////*/

    function setPaused(bool paused_) external onlyOwner {
        paused = paused_;
        emit PausedSet(paused_);
    }

    function setRequirePositiveAnswer(bool enabled) external onlyOwner {
        requirePositiveAnswer = enabled;
        emit RequirePositiveAnswerSet(enabled);
    }

    function setAnswerBounds(int256 minAnswer_, int256 maxAnswer_) external onlyOwner {
        if (minAnswer_ > maxAnswer_) revert InvalidAnswerBounds(minAnswer_, maxAnswer_);
        boundsEnabled = true;
        minAnswer = minAnswer_;
        maxAnswer = maxAnswer_;
        emit AnswerBoundsSet(true, minAnswer_, maxAnswer_);
    }

    function disableAnswerBounds() external onlyOwner {
        boundsEnabled = false;
        emit AnswerBoundsSet(false, minAnswer, maxAnswer);
    }

    function setMaxStaleness(uint32 maxStaleness_) external onlyOwner {
        maxStaleness = maxStaleness_;
        emit MaxStalenessSet(maxStaleness_);
    }

    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        if (paused) revert Paused();

        int256 usdcUsdAnswer;
        (roundId, usdcUsdAnswer, startedAt, updatedAt, answeredInRound) = baseFeed.latestRoundData();

        if (answeredInRound < roundId || updatedAt == 0 || updatedAt > block.timestamp) {
            revert BaseRoundIncomplete(roundId, answeredInRound, updatedAt);
        }

        uint32 maxStale = maxStaleness;
        if (maxStale != 0 && block.timestamp - updatedAt > maxStale) {
            revert BaseRoundStale(updatedAt, maxStale);
        }

        if (usdcUsdAnswer <= 0) revert NonPositiveAnswer(usdcUsdAnswer);

        answer = _quoteAnswer(usdcUsdAnswer);

        if (requirePositiveAnswer && answer <= 0) revert NonPositiveAnswer(answer);
        if (boundsEnabled) {
            if (answer < minAnswer) revert AnswerBelowMin(answer, minAnswer, maxAnswer);
            if (answer > maxAnswer) answer = maxAnswer;
        }
        if (requirePositiveAnswer && answer <= 0) revert NonPositiveAnswer(answer);
    }

    function decimals() external view returns (uint8) {
        return answerDecimals;
    }

    function _quoteAnswer(int256 usdcUsdAnswer) internal view returns (int256 answer) {
        uint256 usdcUsd = SafeCast.toUint256(usdcUsdAnswer);
        uint256 mintOut = mintRedeem.previewMint(usdc, FTUSD_UNIT);
        uint256 redeemOut = mintRedeem.previewRedeem(usdc, FTUSD_UNIT);

        if (mintOut == 0) revert NonPositiveAnswer(0);

        uint256 mintImpliedUsdPerFtUsd = Math.mulDiv(usdcUsd, FTUSD_UNIT, mintOut);
        uint256 redeemUsdValue = Math.mulDiv(redeemOut, usdcUsd, FTUSD_UNIT);
        uint256 rawAnswer =
            mintImpliedUsdPerFtUsd < redeemUsdValue ? mintImpliedUsdPerFtUsd : redeemUsdValue;

        answer = _toInt256Answer(rawAnswer);
    }

    function _toInt256Answer(uint256 answer) internal pure returns (int256) {
        if (answer > uint256(type(int256).max)) revert AnswerTooLarge(answer);
        return answer.toInt256();
    }
}
