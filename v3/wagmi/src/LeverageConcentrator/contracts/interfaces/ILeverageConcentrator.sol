// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title ILeverageConcentrator
 * @dev Interface for a Leverage Concentrator contract.
 */
interface ILeverageConcentrator {
    /**
     *
     *  The strategy is a range of ticks that the leverage concentrator will be using to concentrate the liquidity
     *  examples:
     *
     *        _____________positionRange_______________
     *       |                                         |
     *     tickLower                                tickUpper
     *       |                                         |
     *           current tick
     *               |
     *  __|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__
     *             |  |  |
     *      -2 -1  0  1  2                             12
     *             |
     *          mintedTick
     *
     * mintedTick =  _getMintedTick
     *
     * Strategy {
     *   range0:12,.. //tickUpper=mintedTick+range0
     *   range1:-2, //tickLower=mintedTick+range1
     *   weightBps: 5000 //50%
     * }
     *
     *
     *        _____________positionRange_______________
     *       |                                         |
     *     tickLower                                tickUpper
     *       |                                         |
     *                                         current tick
     *                                             |
     *  __|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__
     *                                           |  |  |
     *      -13                           -3 -2 -1  0  1  2
     *                                           |
     *                                        mintedTick
     *
     * mintedTick =  _getMintedTick
     *
     * Strategy {
     *   range0:2, //tickUpper=mintedTick+range0
     *   range1:-12,//tickLower=mintedTick+range1
     *   weightBps: 5000 //50%
     * }
     * */

    struct Strategy {
        int24 range0;
        int24 range1;
        uint256 weightBps;
    }
    /// @dev Structure encapsulating the logic for operations.
    struct OperationLogic {
        /// the offset in ticks at which the strategy will be reinstalled
        uint24 threshold;
        /// array of strategies
        Strategy[] strategies;
    }

    /// @dev Definition of PositionTokenInfo struct used in getPositionTokenInfo function
    struct PositionTokenInfo {
        uint256 tokenId;
        uint256 liquidity;
    }

    struct SwapParams {
        /// The direction of the swap, true for token0 to token1, false for token1 to token0
        bool zeroForOne;
        /// @notice Address of the aggregator's router
        address swapTarget;
        /// The amount of the swap
        uint256 amountIn;
        /// @notice The aggregator's data that stores paths and amounts for swapping through
        bytes swapData;
    }
    /**
     * @title Strategy Mint Amounts
     * @dev A struct to hold the desired minting amounts for a set of strategies.
     * This structure is used to specify how much of each asset in a pair a user wants to use
     * when adding liquidity or executing a strategy that involves minting new tokens.
     */
    struct StrategiesMintAmts {
        uint256 amount0Desired; ///< The desired amount of the first asset to be minted.
        uint256 amount1Desired; ///< The desired amount of the second asset to be minted.
    }
    /**
     * @dev A struct to keep track of the token balances of a contract.
     */
    struct Balances {
        uint256 amount0;
        uint256 amount1;
    }

    /**
     * Events for the contract
     */
    event SetNewOperationLogic(OperationLogic newLogic);
    event OperatorSet(address operator);
    event SetTwap(uint32 duration, uint256 deviation, uint256 impact);
    event ExternalSwap(bool zeroForOne, uint256 amountIn, uint256 amountOut);
    event CallLeverageManager(bytes4 selector);
    event DecreaseLiquidity(uint256, uint256);

    // Introduce SafeERC20 and EnumerableSet methods if needed by functions

    // Essential addresses which would be relevant to the leverage concentrator operations
    function UNDERLYING_POSITION_MANAGER_ADDRESS() external view returns (address);

    function LIQUIDITY_BORROWING_MANAGER_ADDRESS() external view returns (address);

    function UNDERLYING_POOL_ADDRESS() external view returns (address);

    // Operator address getter
    function operator() external view returns (address);

    // Tokens related getters
    function token0() external view returns (address);

    function token1() external view returns (address);

    // TWAP duration getter
    function twapDuration() external view returns (uint32);

    // TWAP deviation getter
    function twapDeviation() external view returns (uint256);

    // priceImpact getter
    function priceImpact() external view returns (uint256);

    // Symbols related getter
    function symbols() external view returns (string memory);

    function tokenIdToLiquidity(uint256 tokenId) external view returns (uint128);

    // Functions:
    function setOperator(address _operator) external;

    function setTwap(uint32 _twapDuration, uint256 _twapDeviation, uint256 _priceImpact) external;

    function setOperationLogic(OperationLogic calldata newLogic) external;

    function transferToken(
        address token,
        address recipient,
        uint256 amount
    ) external returns (bool);

    function getCurrentOperationLogic() external view returns (OperationLogic memory);

    function getPositionTokenInfo(
        uint256 startIndex,
        uint256 endIndex
    ) external view returns (PositionTokenInfo[] memory info);

    function getPosNumbers() external view returns (uint256);

    function getPriceDiviation(
        uint160 sqrtPrice,
        uint160 sqrtPriceAvg
    ) external pure returns (uint256 deviationBps);

    function getPairBalance() external view returns (Balances memory balances);

    function decreaseLiquidity(
        uint256[] memory tokenIds,
        uint256 minRemainingGas,
        uint256 deadline
    ) external returns (uint256 i, uint256 gasLeft);

    function callLeverageManager(bytes calldata callData, uint256 deadline) external;

    function externalSwap(SwapParams calldata params, uint256 deadline) external;

    function imbalanceCheck() external view returns (bool outOfRange, int24 currentTick);

    function calcStrategiesMintAmts(
        uint256 slippageBpsFactor
    ) external view returns (Balances memory balances, StrategiesMintAmts[] memory mintAmts);

    function mintPosition(StrategiesMintAmts[] memory mintAmts, uint256 deadline) external;

    function getIdealAmountOut(bool zeroForOne, uint256 amountIn) external view returns (uint256);
}
