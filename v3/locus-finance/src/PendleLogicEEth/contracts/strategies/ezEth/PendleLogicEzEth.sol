// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {OffChainData} from "../../BaseStrategyPendle.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {OracleLibrary} from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";
import {IPendleRouter} from "../../integrations/pendle/IPendleRouter.sol";
import {PendleGeneralInfo} from "./PendleGeneralEzEth.sol";
import {IPendleGeneral} from "../../interfaces/IPendleGeneral.sol";
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {IPenpieMaster} from "../../integrations/penpie/IPenpieMaster.sol";


/**
 * @title PendleLogic
 * @dev Contract containing logic for handling various operations related to Pendle strategies.
 */
contract PendleLogicEzEth {
    AggregatorV3Interface internal dataFeed;
    PendleGeneralInfo public pendleGeneralInfo;
    address constant public WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address constant public PENDLE = 0x0c880f6761F1af8d9Aa9C466984b80DAb9a8c9e8;
    address constant public ARB = 0x912CE59144191C1204E64559FE8253a0e49E6548;
    uint32 internal constant TWAP_RANGE_SECS = 1800;



    /**
     * @dev Constructor to initialize PendleLogic contract with necessary parameters.
     * @param _pendleGeneralInfo The PendleGeneralInfo struct containing information about the Pendle market.
     * @param _dataFeed The address of the Chainlink AggregatorV3Interface for fetching price data.
     */
    constructor(PendleGeneralInfo memory _pendleGeneralInfo, address _dataFeed){
        pendleGeneralInfo = _pendleGeneralInfo;
        dataFeed = AggregatorV3Interface(_dataFeed);
    }

    /**
     * @dev Calculates the equivalent amount in the want token for a given amount of yield token.
     * @param ytAmount The amount of yield token.
     * @return uint256 The equivalent amount in the want token.
     */
    function ytToWant(uint256 ytAmount) public view returns(uint256){
        if (ytAmount == 0) {
            return 0;
        }
        uint256 exchangeRate = pendleGeneralInfo.syToken.exchangeRate();
        uint256 ptToAssetRate = pendleGeneralInfo.ptOracle.getPtToAssetRate(address(pendleGeneralInfo.market), TWAP_RANGE_SECS);
        uint256 ytPrice = assetToWantRate(1e18) * 1e18 / exchangeRate - ptToAssetRate;
        return ytAmount * ytPrice / 1e18;
    }

    /**
     * @dev Calculates the equivalent amount in the want token for a given amount of LP token.
     * @param lpAmount The amount of LP token.
     * @return uint256 The equivalent amount in the want token.
     */
    function lpToWant(uint256 lpAmount) public view returns(uint256){
        if (lpAmount == 0) {
            return 0;
        }
        uint256 lpToAssetRate = pendleGeneralInfo.ptOracle.getLpToAssetRate(address(pendleGeneralInfo.market), TWAP_RANGE_SECS);
        return assetToWantRate( lpToAssetRate * lpAmount / 1e18);
    }

    /**
     * @dev Calculates the exchange rate between two tokens in a given pool.
     * @param pool Address of the Uniswap pool.
     * @param tokenFrom Address of the token to swap from.
     * @param tokenTo Address of the token to swap to.
     * @param amount The amount of tokenFrom.
     * @return uint256 The equivalent amount of tokenTo.
     */
    function smthToSmth(
        address pool,
        address tokenFrom,
        address tokenTo,
        uint256 amount
    ) public view returns (uint256) {
        (int24 meanTick, ) = OracleLibrary.consult(pool, TWAP_RANGE_SECS);
        return
            OracleLibrary.getQuoteAtTick(
                meanTick,
                uint128(amount),
                tokenFrom,
                tokenTo
            );
    }

    /**
     * @dev Fetches the latest answer from the Chainlink data feed.
     * @return uint256 The latest answer from the Chainlink data feed.
     */
    function getChainlinkDataFeedLatestAnswer() public view returns (uint256) {
        (
            /* uint80 roundID */,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = dataFeed.latestRoundData();
        return uint256(answer);
    }

    /**
     * @dev Calculates the equivalent amount in the want token for a given amount of asset token.
     * @param assetAmount The amount of asset token.
     * @return uint256 The equivalent amount in the want token.
     */
    function assetToWantRate(uint256 assetAmount) public view  returns (uint256) {
        uint256 ezETHToWantRate = getChainlinkDataFeedLatestAnswer();
        return ezETHToWantRate * assetAmount / 1e18;
    }

    /**
     * @dev Estimates the total assets including LP tokens, YT tokens, and rewards in want token.
     * @param lpBalanceStaked The amount of LP tokens staked.
     * @param ytBalance The amount of YT tokens.
     * @return uint256 The estimated total assets in want token.
     */
    function estimatedTotalAssets(uint256 lpBalanceStaked, uint256 ytBalance) public view returns (uint256) {
        return lpToWant(lpBalanceStaked) + ytToWant(ytBalance) + getRewardsInWantToken();
    }

    /**
     * @dev Calculates the expected LP tokens and YT tokens to be received when adding liquidity.
     * @param amount The amount of want token to be added as liquidity.
     * @param _offChainData The OffChainData struct containing off-chain data related to the strategy.
     * @return lpExpected The expected LP tokens.
     * @return ytExpected The expected YT tokens.
     * @return inputData The input data for swapping tokens.
     */
    function addLiquidity(uint256 amount, OffChainData calldata _offChainData) external view returns(uint256 lpExpected, uint256 ytExpected, IPendleRouter.TokenInput memory inputData) {
        IPendleRouter.SwapData memory swapData;
        inputData = IPendleRouter.TokenInput(WETH, amount, WETH, address(0), swapData);
        lpExpected = _offChainData.WantToLpYtProportion[0] * amount / 1e18;
        ytExpected = _offChainData.WantToLpYtProportion[1] * amount / 1e18;
    }

    /**
     * @dev Calculates the total rewards in want token that a user can claim.
     * @return amount The total rewards in want token.
     */
    function getRewardsInWantToken() public view returns (uint256 amount) {
        (, address[] memory bonusRewardTokens, , uint256[] memory bonusTokensAmounts) = pendleGeneralInfo.penpieMaster.allPendingTokens(pendleGeneralInfo.lpToken, msg.sender);
        uint256 len = bonusRewardTokens.length;
        for (uint256 i; i < len; i++) {
            if (bonusTokensAmounts[i] == 0) {
                continue;
            }
            if (bonusRewardTokens[i] == ARB) {
                amount += smthToSmth(pendleGeneralInfo.poolArbToWeth, ARB, WETH, bonusTokensAmounts[i]);
            } else if(bonusRewardTokens[i] == PENDLE){
                amount += smthToSmth(pendleGeneralInfo.poolPendleToWeth, PENDLE, WETH, bonusTokensAmounts[i]);
            }
        }
    }

    /**
     * @dev Calculates the LP tokens and YT tokens to be liquidated based on the staked amount in want token.
     * @param _offChainData The OffChainData struct containing off-chain data related to the strategy.
     * @param _stakedAmountInWant The amount staked in want token.
     * @param lpStaked The amount of LP tokens staked.
     * @param ytBalance The amount of YT tokens.
     * @return lp The LP tokens to be liquidated.
     * @return yt The YT tokens to be liquidated.
     */
    function getLpAndYtAmountToLiquidate(OffChainData calldata _offChainData, uint256 _stakedAmountInWant, uint256 lpStaked, uint256 ytBalance) external view returns (uint256 lp, uint256 yt){
        lp = _offChainData.WantToLpYtProportion[0] * _stakedAmountInWant / 1e18;
        yt = _offChainData.WantToLpYtProportion[1] * _stakedAmountInWant / 1e18;
        if (lp > lpStaked) {
            lp = lpStaked;
        }
        if (yt > ytBalance ) {
            yt = ytBalance;
        }
    }
}