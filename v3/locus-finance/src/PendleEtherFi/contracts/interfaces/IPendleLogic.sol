// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {OffChainData} from "../BaseStrategyPendle.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {OracleLibrary} from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";
import {IPendleRouter} from "../integrations/pendle/IPendleRouter.sol";
import {PendleGeneralInfo} from "../strategies/PendleGeneral.sol";
import {IPendleGeneral} from "../interfaces/IPendleGeneral.sol";
import {IAggregatorV3} from "../integrations/chainlink/IAggregatorV3.sol";
import {IPenpieMaster} from "../integrations/penpie/IPenpieMaster.sol";
import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IPendleLogic {
    
    /**
     * @dev Calculates the equivalent amount in the want token for a given amount of yield token.
     * @param ytAmount The amount of yield token.
     * @return uint256 The equivalent amount in the want token.
     */
    function ytToWant(uint256 ytAmount) external view returns(uint256);

    /**
     * @dev Calculates the equivalent amount in the want token for a given amount of LP token.
     * @param lpAmount The amount of LP token.
     * @return uint256 The equivalent amount in the want token.
     */
    function lpToWant(uint256 lpAmount) external view returns(uint256);
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
    ) external view returns (uint256);

    /**
     * @dev Fetches the latest answer from the Chainlink data feed.
     * @return uint256 The latest answer from the Chainlink data feed.
     */
    function getChainlinkDataFeedLatestAnswer() external view returns (uint256);

    /**
     * @dev Calculates the equivalent amount in the want token for a given amount of asset token.
     * @param assetAmount The amount of asset token.
     * @return uint256 The equivalent amount in the want token.
     */
    function assetToWantRate(uint256 assetAmount) external view  returns (uint256);

    /**
     * @dev Calculates the equivalent amount in the want token for a given amount of asset token.
     * @param wantAmount The amount of asset token.
     * @return uint256 The equivalent amount in the want token.
     */
    function wantToAssetRate(uint256 wantAmount) external view  returns (uint256);

    /**
     * @dev Estimates the total assets including LP tokens, YT tokens, and rewards in want token.
     * @param lpBalanceStaked The amount of LP tokens staked.
     * @param ytBalance The amount of YT tokens.
     * @return uint256 The estimated total assets in want token.
     */
    function estimatedTotalAssets(uint256 lpBalanceStaked, uint256 ytBalance) external view returns (uint256);

    /**
     * @dev Calculates the expected LP tokens and YT tokens to be received when adding liquidity.
     * @param amount The amount of want token to be added as liquidity.
     * @param _offChainData The OffChainData struct containing off-chain data related to the strategy.
     * @return lpExpected The expected LP tokens.
     * @return ytExpected The expected YT tokens.
     * @return inputData The input data for swapping tokens.
     */
    function addLiquidity(uint256 amount, OffChainData calldata _offChainData) external returns(uint256 lpExpected, uint256 ytExpected, IPendleRouter.TokenInput memory inputData);

    /**
     * @dev Calculates the total rewards in want token that a user can claim.
     * @return amount The total rewards in want token.
     */
    function getRewardsInWantToken() external view returns (uint256 amount);

    /**
     * @dev Calculates the LP tokens and YT tokens to be liquidated based on the staked amount in want token.
     * @param _offChainData The OffChainData struct containing off-chain data related to the strategy.
     * @param _stakedAmountInWant The amount staked in want token.
     * @param lpStaked The amount of LP tokens staked.
     * @param ytBalance The amount of YT tokens.
     * @return lp The LP tokens to be liquidated.
     * @return yt The YT tokens to be liquidated.
     */
    function getLpAndYtAmountToLiquidate(OffChainData calldata _offChainData, uint256 _stakedAmountInWant, uint256 lpStaked, uint256 ytBalance) external view returns (uint256 lp, uint256 yt);

    function getRewardInfo() external view returns(address[] memory, address[][] memory);

    function swapRewards() external;

    function setSlippage(uint256 _newSlippage) external;
}