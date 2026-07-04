// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import "./interfaces/uniswap/IUniswapV3Pool.sol";
import { TickMath } from "./vendor0.8/uniswap/TickMath.sol";
import { FullMath, FixedPoint96, AmountsLiquidity } from "./libraries/AmountsLiquidity.sol";
import { TransferHelper } from "./libraries/TransferHelper.sol";
import { ILiquidityBorrowingManager } from "./interfaces/leverage/ILiquidityBorrowingManager.sol";
import { INonfungiblePositionManager } from "./interfaces/uniswap/INonfungiblePositionManager.sol";
import "./interfaces/ILeverageConcentrator.sol";
import "./libraries/ExternalCall.sol";
import "./libraries/ErrLib.sol";

// import "hardhat/console.sol";

contract LeverageConcentrator is ILeverageConcentrator, Ownable, ERC721Holder, ReentrancyGuard {
    using TransferHelper for address;
    using { ExternalCall._externalCall } for address;
    using { ErrLib.revertError } for bool;

    uint8 public constant version = 1;
    uint256 public constant BP = 10_000;
    uint256 public constant MAX_STRATEGIES = 5;
    address public immutable UNDERLYING_POSITION_MANAGER_ADDRESS;
    address public immutable LIQUIDITY_BORROWING_MANAGER_ADDRESS;
    address public immutable UNDERLYING_POOL_ADDRESS;
    address public immutable token0;
    address public immutable token1;
    uint24 public immutable uFeeTiers;
    int24 public immutable uTickSpacing;
    int24 public lastMintedTick = TickMath.MIN_TICK;
    address public operator;
    uint32 public twapDuration = 10 minutes;
    uint256 public twapDeviation = 300; // 3%
    uint256 public priceImpact = 150; // 1.5%

    string public symbols;
    OperationLogic private currentOperationLogic;
    mapping(uint256 => uint128) public tokenIdToLiquidity;

    constructor(
        address _multisig,
        address _token0,
        address _token1,
        address _underlyingPool,
        address _liquidityBorrowingManager,
        address _underlyingPositionManager,
        string memory _symbols
    ) {
        UNDERLYING_POOL_ADDRESS = _underlyingPool;
        UNDERLYING_POSITION_MANAGER_ADDRESS = _underlyingPositionManager;
        uFeeTiers = IUniswapV3Pool(_underlyingPool).fee();
        uTickSpacing = IUniswapV3Pool(_underlyingPool).tickSpacing();
        LIQUIDITY_BORROWING_MANAGER_ADDRESS = _liquidityBorrowingManager;
        symbols = _symbols;
        token0 = _token0;
        token1 = _token1;

        _transferOwnership(_multisig);
        operator = _multisig;
    }

    error PriceDeviationTooHigh(uint256 deviationBps);

    /// @dev Modifier to check if the current block timestamp is before or equal to the deadline.
    modifier checkDeadline(uint256 deadline) {
        (_blockTimestamp() > deadline).revertError(ErrLib.ErrorCode.TOO_OLD_TRANSACTION);
        _;
    }

    modifier onlyOperator() {
        (msg.sender != operator).revertError(ErrLib.ErrorCode.INVALID_CALLER);
        _;
    }

    function setOperator(address _operator) external onlyOwner {
        operator = _operator;
        emit OperatorSet(_operator);
    }

    /// @notice Update the TWAP (Time Weighted Average Price) parameters
    /// @dev This function can only be called by the contract owner and updates the TWAP duration, deviation, and price impact parameters.
    /// It asserts that the twap duration is greater than 3 minutes, the twap deviation is less than 1000, and the price impact is less than 500.
    ///
    /// Emits a `SetTwap` event with the new TWAP parameters upon successful update.
    ///
    /// Reverts if:
    /// - `_twapDuration` is less than or equal to 3 minutes.
    /// - `_twapDeviation` is greater than or equal to 1000.
    /// - `_priceImpact` is greater than or equal to 500.
    ///
    /// @param _twapDuration The duration in seconds over which the TWAP is calculated.
    /// @param _twapDeviation The maximum allowed deviation for the TWAP from the spot price, in basis points.
    /// @param _priceImpact The maximum price impact allowed for trades, in basis points.
    function setTwap(
        uint32 _twapDuration,
        uint256 _twapDeviation,
        uint256 _priceImpact
    ) external onlyOwner {
        assert(_twapDuration > 3 minutes && _twapDeviation < 1000 && _priceImpact < 500);
        twapDuration = _twapDuration;
        twapDeviation = _twapDeviation;
        priceImpact = _priceImpact;
        emit SetTwap(_twapDuration, _twapDeviation, _priceImpact);
    }

    // @notice Sets a new operation logic configuration for the contract.
    /// @dev This function can only be called by the owner of the contract and will overwrite the existing
    /// operation logic with the provided `newLogic`. It ensures that the new threshold is evenly divisible
    /// by the tick spacing, each strategy has valid weight and ranges, and that the sum of strategy weights equals 100%.
    /// Emits `SetNewOperationLogic` event upon succesful update.
    ///
    /// Reverts if:
    /// - The sum of the strategy weights does not equal the base points total (100%).
    /// - Any strategy in the `newLogic` array has zero weight, negative or inverted ranges, or the ranges are not divisible by tick spacing.
    /// - The `newLogic.threshold` is not divisible by tickSpacing or is zero.
    /// - The length of `newLogic.strategies` is zero or exceeds the maximum allowed number of strategies.
    ///
    /// @param newLogic The struct containing the new threshold and strategies to set for the operation logic.
    function setOperationLogic(OperationLogic calldata newLogic) external onlyOwner {
        delete currentOperationLogic;
        int24 tickSpacing = uTickSpacing;
        (newLogic.threshold == 0 || int24(newLogic.threshold) % tickSpacing != 0).revertError(
            ErrLib.ErrorCode.INVALID_OPERATION_LOGIC
        );

        currentOperationLogic.threshold = newLogic.threshold;
        Strategy[] storage currentS = currentOperationLogic.strategies;
        uint256 length = newLogic.strategies.length;
        (length == 0 || length > MAX_STRATEGIES).revertError(ErrLib.ErrorCode.INCORRECT_LENGTH);
        uint256 weightSum;
        for (uint256 i; i < length; ) {
            Strategy memory s = newLogic.strategies[i];
            (s.weightBps == 0 ||
                s.range0 <= s.range1 ||
                s.range0 % tickSpacing != 0 ||
                s.range1 % tickSpacing != 0).revertError(ErrLib.ErrorCode.INVALID_OPERATION_LOGIC);
            currentS.push(s);
            weightSum += s.weightBps;
            unchecked {
                ++i;
            }
        }
        (weightSum != BP).revertError(ErrLib.ErrorCode.INVALID_OPERATION_LOGIC);

        emit SetNewOperationLogic(newLogic);
    }

    /// @notice Transfers a specific amount of tokens from the contract to a specified recipient.
    /// Requires that the caller must be the owner of the contract or the operator, and that the recipient is the owner.
    /// @param token The ERC20 token contract address from which tokens will be transferred.
    /// @param recipient The address to which the tokens will be transferred.
    /// @param amount The total number of tokens to be transferred.
    /// @return success A boolean value indicating whether the transfer was successful.
    function transferToken(
        address token,
        address recipient,
        uint256 amount
    ) external returns (bool) {
        require(
            msg.sender == owner() || (msg.sender == operator && recipient == owner()),
            "LeverageConcentrator: FORBIDDEN"
        );
        if (amount > 0) {
            token.safeTransfer(recipient, amount);
        }
        return true;
    }

    /// @dev Returns the `currentOperationLogic` storage value that should represent the current operation logic of the system.
    /// @return The `OperationLogic` struct representing the current operation logic state.
    function getCurrentOperationLogic() external view returns (OperationLogic memory) {
        return currentOperationLogic;
    }

    /// @notice Retrieves position token information over a range of indices.
    /// @dev This function reads from an underlying non-fungible position manager contract.
    /// @param startIndex The start index to retrieve position tokens info from (inclusive).
    /// @param endIndex The end index for retrieving position tokens info (exclusive).
    /// If set to zero, it default to the total number of position tokens available.
    /// @return info An array of PositionTokenInfo structs containing the details about each position token
    /// within the specified range. Each struct contains the tokenId and its corresponding liquidity.
    function getPositionTokenInfo(
        uint256 startIndex,
        uint256 endIndex
    ) external view returns (PositionTokenInfo[] memory info) {
        uint256 balance = getPosNumbers();

        if (endIndex == 0) {
            endIndex = balance;
        }
        (endIndex > balance || startIndex > endIndex).revertError(
            ErrLib.ErrorCode.INVALID_INDEX_RANGE
        );

        info = new PositionTokenInfo[](endIndex - startIndex);

        for (uint256 i = startIndex; i < endIndex; ) {
            uint256 tokenId = INonfungiblePositionManager(UNDERLYING_POSITION_MANAGER_ADDRESS)
                .tokenOfOwnerByIndex(address(this), i);
            (, , , , , , , uint128 liquidity, , , , ) = INonfungiblePositionManager(
                UNDERLYING_POSITION_MANAGER_ADDRESS
            ).positions(tokenId);
            info[i - startIndex] = PositionTokenInfo(tokenId, liquidity);

            unchecked {
                ++i;
            }
        }
    }

    /// @dev This function calls the `balanceOf` method on an external contract implementing the INonfungiblePositionManager interface.
    /// @return The total count of non-fungible position tokens owned by this contract.
    function getPosNumbers() public view returns (uint256) {
        return
            INonfungiblePositionManager(UNDERLYING_POSITION_MANAGER_ADDRESS).balanceOf(
                address(this)
            );
    }

    /// @notice Retrieves the current balance of the two tokens held by the contract.
    function getPairBalance() public view returns (Balances memory balances) {
        balances.amount0 = token0.getBalance();
        balances.amount1 = token1.getBalance();
    }

    /**
     * @notice Decreases liquidity for given token IDs, collects the tokens accrued from fees,
     *         and burns the NFTs if their liquidity is depleted. Terminates early if gas remaining
     *         falls below a specified minimum.
     * @dev This function can only be called by an operator. It performs a three-step process on each of the provided token IDs:
     *      1. Decrease liquidity.
     *      2. Collect accrued fees.
     *      3. Burn the NFT if liquidity reaches zero.
     *      Additionally, it checks that the operation can complete with the specified minimum gas remaining.
     *      The `_checkPriceDeviation` function ensures the price deviation is within acceptable parameters.
     * @param tokenIds An array of token IDs for which liquidity should be decreased.
     * @param minRemainingGas The minimum amount of gas required to remain after execution;
     *        prevents running out of gas mid-transaction.
     * @param deadline A timestamp until when the transaction must be processed; otherwise, it will revert.
     * @return i The index up to which the tokenIds array has been processed. This allows the function to be continued
     *         later from this point if there wasn't enough gas to finish processing all token IDs.
     * @custom:modifier checkDeadline Validates that the current block's timestamp is less than or equal to the deadline parameter.
     * @custom:modifier onlyOperator Restricts the functionality to be callable only by the operator role.
     */
    function decreaseLiquidity(
        uint256[] memory tokenIds,
        uint256 minRemainingGas,
        uint256 deadline
    )
        external
        nonReentrant
        checkDeadline(deadline)
        onlyOperator
        returns (uint256 i, uint256 gasLeft)
    {
        _checkPriceDeviation();
        for (i; i < tokenIds.length; ) {
            gasLeft = gasleft();
            if (gasLeft < minRemainingGas) {
                break;
            }
            uint256 tokenId = tokenIds[i];

            (, , , , , , , uint128 liquidity, , , , ) = INonfungiblePositionManager(
                UNDERLYING_POSITION_MANAGER_ADDRESS
            ).positions(tokenId);

            if (liquidity > 0) {
                INonfungiblePositionManager(UNDERLYING_POSITION_MANAGER_ADDRESS).decreaseLiquidity(
                    INonfungiblePositionManager.DecreaseLiquidityParams({
                        tokenId: tokenId,
                        liquidity: liquidity,
                        amount0Min: 0,
                        amount1Min: 0,
                        deadline: _blockTimestamp()
                    })
                );

                INonfungiblePositionManager(UNDERLYING_POSITION_MANAGER_ADDRESS).collect(
                    INonfungiblePositionManager.CollectParams({
                        tokenId: tokenId,
                        recipient: address(this),
                        amount0Max: type(uint128).max,
                        amount1Max: type(uint128).max
                    })
                );
                uint128 liquidityBalance = tokenIdToLiquidity[tokenId];
                if (liquidityBalance > liquidity) {
                    tokenIdToLiquidity[tokenId] = liquidityBalance - liquidity;
                    INonfungiblePositionManager(UNDERLYING_POSITION_MANAGER_ADDRESS).approve(
                        address(0),
                        tokenId
                    );
                } else {
                    tokenIdToLiquidity[tokenId] = 0;
                    // double check if the token has any liquidity left
                    ILiquidityBorrowingManager.BorrowingInfoExt[]
                        memory extinfo = ILiquidityBorrowingManager(
                            LIQUIDITY_BORROWING_MANAGER_ADDRESS
                        ).getLenderCreditsInfo(tokenId);
                    if (extinfo.length == 0) {
                        INonfungiblePositionManager(UNDERLYING_POSITION_MANAGER_ADDRESS).burn(
                            tokenId
                        );
                    }
                }
            }
            unchecked {
                ++i;
            }
        }
        emit DecreaseLiquidity(i, gasLeft);
    }

    /**
     * @dev Allows the operator to interact with the leverage manager functionality of the Liquidity Borrowing Manager contract.
     * @param callData The encoded transaction data that specifies which function to call and the arguments to pass.
     * @param deadline Timestamp after which the transaction cannot be executed.
     * @custom:modifier checkDeadline Ensures the current block timestamp is before the specified deadline.
     * @custom:modifier onlyOperator Restricts the function to be callable only by the designated operator.
     */
    function callLeverageManager(
        bytes calldata callData,
        uint256 deadline
    ) external nonReentrant checkDeadline(deadline) onlyOperator {
        // Extract the function selector from the provided call data
        bytes4 selector;
        assembly {
            selector := calldataload(callData.offset)
        }
        // Require that the selector is not for forbidden functions, e.g., borrowing or increasing collateral balance
        //              borrow  || increaseCollateralBalance
        (selector == 0x4b7dd768 || selector == 0x01777e96).revertError(ErrLib.ErrorCode.FORBIDDEN);
        bool success = LIQUIDITY_BORROWING_MANAGER_ADDRESS._externalCall(callData);
        (!success).revertError(ErrLib.ErrorCode.FAIL);
        emit CallLeverageManager(selector);
    }

    /**
     * @notice Performs a swap through an external swap target, ensuring minimum output and price deviation checks.
     * @dev This function can only be called by the operator and before the specified deadline.
     *      It also performs a whitelist check for the swap target and a price slippage check for the amount received.
     * @param params The parameters of the swap (see `SwapParams` structure for fields).
     * @param deadline A timestamp specifying the time by which the swap must succeed.
     * @custom:modifier checkDeadline Ensures that the transaction is executed before the stipulated deadline.
     * @custom:modifier onlyOperator Only callable by the operator address with correct permissions.
     */
    function externalSwap(
        SwapParams calldata params,
        uint256 deadline
    ) external nonReentrant checkDeadline(deadline) onlyOperator {
        (
            !ILiquidityBorrowingManager(LIQUIDITY_BORROWING_MANAGER_ADDRESS).swapIsWhitelisted(
                params.swapTarget
            )
        ).revertError(ErrLib.ErrorCode.SWAP_TARGET_NOT_APPROVED);
        int24 currentTick = _checkPriceDeviation();
        uint256 amountOutMinimum = _getAmountOut(params.zeroForOne, currentTick, params.amountIn);
        amountOutMinimum -= (amountOutMinimum * priceImpact) / BP;
        (address tokenIn, address tokenOut) = params.zeroForOne
            ? (token0, token1)
            : (token1, token0);
        uint256 balanceBefore = tokenOut.getBalance();

        // Approve and execute the external swap
        tokenIn.safeApprove(params.swapTarget, params.amountIn);
        bool success = params.swapTarget._externalCall(params.swapData);
        (!success).revertError(ErrLib.ErrorCode.FAIL);
        // Reset allowance
        tokenIn.safeApprove(params.swapTarget, 0);

        // Check balance after swap and compute amount out
        uint256 balanceAfter = tokenOut.getBalance();
        uint256 amountOut = balanceAfter - balanceBefore;
        // Validate slippage is within acceptable limits
        (amountOut < amountOutMinimum).revertError(ErrLib.ErrorCode.PRICE_SLIPPAGE_CHECK);
        emit ExternalSwap(params.zeroForOne, params.amountIn, amountOut);
    }

    /**
     * @notice Checks if the current tick's deviation from the last minted tick is within an acceptable range.
     * @dev Determines whether the price has deviated beyond a predefined threshold since the last tick that was minted.
     * This can be used to trigger rebalancing or adjustments in strategy if the price moves out of an acceptable range.
     *
     * @return outOfRange A boolean indicating whether the current tick deviated more than the allowable threshold from the last minted tick.
     * @return currentTick The current tick obtained from `_checkPriceDeviation`, representing the price state of the pool.
     */
    function imbalanceCheck() public view returns (bool outOfRange, int24 currentTick) {
        currentTick = _checkPriceDeviation();
        int24 deviation = _getMintedTick(currentTick) - lastMintedTick;
        outOfRange = deviation > 0
            ? uint24(deviation) > currentOperationLogic.threshold
            : uint24(-deviation) > currentOperationLogic.threshold;
    }

    /// @dev Struct to cache values during calculation of strategies mint amounts.
    struct Cache {
        int24 currentTick; ///< The current tick of the pool.
        int24 mintedTick; ///< The tick at which new tokens were minted.
        uint256 totalAmt0; ///< Total amount of the first asset calculated for minting.
        uint256 amount0; ///< Amount of the first asset used in calculation.
        uint256 amount1; ///< Amount of the second asset used in calculation.
    }

    /**
     * @notice Calculates the desired minting amounts for token0 and token1 across different strategies.
     * @dev This function computes the amount of tokens to be minted by each strategy based on the current tick,
     * optimal ticks for minting derived from provided `slippageBpsFactor`, and available pair balances. It takes into account
     * the weight of each strategy to distribute the minted amounts proportionally, while considering price slippage.
     *
     * @param slippageBpsFactor The percentage (in basis points) of the maximum tolerable slippage for calculating optimal minting amounts.
     * @return balances The current available balances of token0 and token1 in the pool.
     * @return mintAmts An array of `StrategiesMintAmts` structs, indicating the calculated minting amounts for token0 and token1 per strategy.
     */
    function calcStrategiesMintAmts(
        uint256 slippageBpsFactor
    ) public view returns (Balances memory balances, StrategiesMintAmts[] memory mintAmts) {
        // Initialize local Cache instance to store intermediate values during calculations.
        Cache memory cache;
        cache.currentTick = _checkPriceDeviation();
        // Calculate and set the minted tick value in the cache.
        cache.mintedTick = _getMintedTick(cache.currentTick);
        // Retrieve the current pair's balances and assign it to the balances variable.
        balances = getPairBalance();
        cache.totalAmt0 =
            balances.amount0 +
            (_getAmountOut(false, cache.currentTick, balances.amount1) * slippageBpsFactor) /
            BP;
        // Get the current strategies from the current operation logic for iteration.
        Strategy[] memory currentStrategies = currentOperationLogic.strategies;
        // Initialize the array of StrategiesMintAmts based on the number of current strategies.
        mintAmts = new StrategiesMintAmts[](currentStrategies.length);

        if (cache.totalAmt0 > 0) {
            Strategy memory strategy;
            for (uint256 i; i < currentStrategies.length; ) {
                // Fetch the current strategy into memory for calculations.
                strategy = currentStrategies[i];
                int24 upperTick = cache.mintedTick + strategy.range0;
                int24 lowerTick = cache.mintedTick + strategy.range1;
                // Ensure the ticks are within the valid tick range before performing calculations.
                if (upperTick <= TickMath.MAX_TICK && lowerTick >= TickMath.MIN_TICK) {
                    StrategiesMintAmts memory amts;
                    // Calculate the share of token0 amount for the current strategy based on weight and total amount.
                    uint256 totalAmt0Share = (cache.totalAmt0 * strategy.weightBps) / BP;
                    // Convert the token0 share to token1 equivalent.
                    uint256 totalAmt1Share = (_getAmountOut(
                        true,
                        cache.currentTick,
                        totalAmt0Share
                    ) * slippageBpsFactor) / BP;
                    // Check for non-zero share amounts before proceeding with rounding up calculations.
                    if (totalAmt0Share > 0 && totalAmt1Share > 0) {
                        // Calculate amounts for liquidity rounding up based on ticks and fixed point constants.
                        (cache.amount0, cache.amount1) = AmountsLiquidity
                            .getAmountsRoundingUpForLiquidity(
                                TickMath.getSqrtRatioAtTick(cache.currentTick),
                                TickMath.getSqrtRatioAtTick(lowerTick),
                                TickMath.getSqrtRatioAtTick(upperTick),
                                1e18
                            );
                        // Process the results of rounding up calculations to determine final mint amounts.
                        if (cache.amount0 == 0) {
                            amts.amount1Desired = totalAmt1Share;
                        } else if (cache.amount1 == 0) {
                            amts.amount0Desired = totalAmt0Share;
                        } else {
                            // Calculate denominator for share conversion between token0 and token1.
                            uint256 denominator = FullMath.mulDiv(
                                cache.amount0 * totalAmt1Share,
                                FixedPoint96.Q96,
                                cache.amount1 * totalAmt0Share
                            ) + FixedPoint96.Q96;
                            // Determine amount of token0 to swap to achieve desired position.
                            uint256 amount0ToSwap = FullMath.mulDiv(
                                totalAmt0Share,
                                FixedPoint96.Q96,
                                denominator
                            );

                            amts.amount1Desired = (amount0ToSwap * totalAmt1Share) / totalAmt0Share;
                            amts.amount0Desired = (totalAmt0Share - amount0ToSwap);
                        }
                    }
                    // Assign the calculated mint amounts for the current strategy to the corresponding index in the array.
                    mintAmts[i] = amts;
                }

                unchecked {
                    ++i;
                }
            }
        }
    }

    /**
     * @notice Mints new positions for each strategy within the operation logic, based on the specified mint amounts.
     * @dev Mints positions across multiple strategies as defined by the `mintAmts` array, with a deadline for the transaction.
     * Checks for price deviations, valid tick ranges, and adjusts desired amounts if they exceed available balances.
     * Finally mints the positions and assigns liquidity. Updates the last minted tick to the current minted tick.
     *
     * Requirements:
     * - The transaction must occur before the specified `deadline`.
     * - Only callable by the contract operator.
     * - `mintAmts` length must match the number of current strategies in the operation logic.
     * - Minting ticks must be inside the acceptable range, bounded by `TickMath.MIN_TICK` and `TickMath.MAX_TICK`.
     * - Desired mint amounts cannot exceed the pair's available balance.
     *
     * @param mintAmts An array of `StrategiesMintAmts` structs representing the amount of token0 and token1 desired
     *        to be minted for each strategy.
     * @param deadline A timestamp until which the transaction is considered valid, after which it will revert.
     *
     * Emits:
     * - A StrategyMinted event for each successfully minted strategy position.
     */
    function mintPosition(
        StrategiesMintAmts[] memory mintAmts,
        uint256 deadline
    ) external checkDeadline(deadline) onlyOperator {
        int24 currentTick = _checkPriceDeviation();
        int24 mintedTick = _getMintedTick(currentTick);
        lastMintedTick = mintedTick;
        Strategy[] memory currentStrategies = currentOperationLogic.strategies;
        (mintAmts.length != currentStrategies.length).revertError(
            ErrLib.ErrorCode.INCORRECT_LENGTH
        );
        Strategy memory strategy;
        StrategiesMintAmts memory amts;
        Balances memory balances;
        for (uint256 i; i < currentStrategies.length; ) {
            amts = mintAmts[i];
            if (amts.amount0Desired > 0 || amts.amount1Desired > 0) {
                strategy = currentStrategies[i];
                int24 upperTick = mintedTick + strategy.range0;
                int24 lowerTick = mintedTick + strategy.range1;
                (upperTick > TickMath.MAX_TICK || lowerTick < TickMath.MIN_TICK).revertError(
                    ErrLib.ErrorCode.OUTSIDE_TICK_RANGE
                );
                balances = getPairBalance();
                if (amts.amount0Desired > balances.amount0) {
                    amts.amount0Desired = balances.amount0;
                }
                if (amts.amount1Desired > balances.amount1) {
                    amts.amount1Desired = balances.amount1;
                }
                _mintAndApprove(lowerTick, upperTick, amts.amount0Desired, amts.amount1Desired);
            }

            unchecked {
                ++i;
            }
        }
    }

    function _getMintedTick(int24 tick) private view returns (int24) {
        int24 tickSpacing = uTickSpacing;
        int24 compressed = tick / tickSpacing;
        if (tick < 0 && tick % tickSpacing != 0) compressed--;
        return compressed * tickSpacing;
    }

    function _mintAndApprove(
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) private {
        (amount0Desired == 0 && amount1Desired == 0).revertError(
            ErrLib.ErrorCode.MINT_ZERO_AMOUNTS
        );
        _maxApproveIfNecessary(token0, UNDERLYING_POSITION_MANAGER_ADDRESS);
        _maxApproveIfNecessary(token1, UNDERLYING_POSITION_MANAGER_ADDRESS);
        (uint256 tokenId, uint128 liquidity, , ) = INonfungiblePositionManager(
            UNDERLYING_POSITION_MANAGER_ADDRESS
        ).mint(
                INonfungiblePositionManager.MintParams({
                    token0: token0,
                    token1: token1,
                    fee: uFeeTiers,
                    tickLower: tickLower,
                    tickUpper: tickUpper,
                    amount0Desired: amount0Desired,
                    amount1Desired: amount1Desired,
                    amount0Min: 0,
                    amount1Min: 0,
                    recipient: address(this),
                    deadline: _blockTimestamp()
                })
            );
        tokenIdToLiquidity[tokenId] = liquidity;
        INonfungiblePositionManager(UNDERLYING_POSITION_MANAGER_ADDRESS).approve(
            LIQUIDITY_BORROWING_MANAGER_ADDRESS,
            tokenId
        );
    }

    /**
     * @notice Calculates the ideal output amount of a swap, given an input amount and current price.
     * @dev Calls `_checkPriceDeviation` to ensure the current tick is within acceptable deviation
     * and `_getAmountOut` to compute the actual output amount for the swap. The direction of the swap
     * (whether input is token0 or token1) is determined by the `zeroForOne` parameter.
     *
     * @param zeroForOne A boolean indicating the direction of the swap:
     *                   - `true` if swapping token0 for token1
     *                   - `false` if swapping token1 for token0
     * @param amountIn The amount of input tokens to be swapped.
     * @return amountOut The ideal output amount after the swap, according to the current tick price.
     */
    function getIdealAmountOut(bool zeroForOne, uint256 amountIn) external view returns (uint256) {
        int24 currentTick = _checkPriceDeviation();
        return _getAmountOut(zeroForOne, currentTick, amountIn);
    }

    function _getAmountOut(
        bool zeroForOne,
        int24 currentTick,
        uint256 amountIn
    ) private pure returns (uint256 swappedOut) {
        uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(currentTick);
        if (sqrtPriceX96 <= type(uint128).max) {
            uint256 ratioX192 = uint256(sqrtPriceX96) * sqrtPriceX96;
            swappedOut = zeroForOne
                ? FullMath.mulDiv(ratioX192, amountIn, 1 << 192)
                : FullMath.mulDiv(1 << 192, amountIn, ratioX192);
        } else {
            uint256 ratioX128 = FullMath.mulDiv(sqrtPriceX96, sqrtPriceX96, 1 << 64);
            swappedOut = zeroForOne
                ? FullMath.mulDiv(ratioX128, amountIn, 1 << 128)
                : FullMath.mulDiv(1 << 128, amountIn, ratioX128);
        }
    }

    function getPriceDiviation(
        uint160 sqrtPrice,
        uint160 sqrtPriceAvg
    ) public pure returns (uint256 deviationBps) {
        uint256 ratio = _getRatio(sqrtPrice);
        uint256 ratioAvg = _getRatio(sqrtPriceAvg);
        uint256 ratioDeviation = ratio > ratioAvg
            ? uint256(ratio - ratioAvg)
            : uint256(ratioAvg - ratio);
        deviationBps = FullMath.mulDiv(ratioDeviation, BP, ratioAvg);
    }

    function _getRatio(uint160 sqrtPrice) private pure returns (uint256 ratio) {
        ratio = FullMath.mulDiv(sqrtPrice, sqrtPrice, 1 << 64);
    }

    function _checkPriceDeviation() private view returns (int24 currentTick) {
        IUniswapV3Pool pool = IUniswapV3Pool(UNDERLYING_POOL_ADDRESS);
        (, currentTick, , , , , ) = pool.slot0();
        uint32[] memory secondsAgo = new uint32[](2);
        secondsAgo[0] = twapDuration;
        secondsAgo[1] = 0;

        (int56[] memory tickCumulatives, ) = pool.observe(secondsAgo);
        int56 twapDurationInt56 = int56(uint56(twapDuration));

        int56 tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];
        int24 avarageTick = int24(tickCumulativesDelta / twapDurationInt56);

        if (tickCumulativesDelta < 0 && (tickCumulativesDelta % twapDurationInt56 != 0))
            avarageTick--;

        uint256 deviationBps = getPriceDiviation(
            TickMath.getSqrtRatioAtTick(currentTick),
            TickMath.getSqrtRatioAtTick(avarageTick)
        );

        if (deviationBps > twapDeviation) {
            revert PriceDeviationTooHigh(deviationBps);
        }
    }

    function _blockTimestamp() internal view returns (uint256) {
        return block.timestamp;
    }

    /**
     * @dev This internal function attempts to approve a specific amount of tokens for a spender.
     * It performs a call to the `approve` function on the token contract using the provided parameters,
     * and returns a boolean indicating whether the approval was successful or not.
     * @param token The address of the token contract.
     * @param spender The address of the spender.
     * @param amount The amount of tokens to be approved.
     * @return A boolean indicating whether the approval was successful or not.
     */
    function _tryApprove(address token, address spender, uint256 amount) private returns (bool) {
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(IERC20.approve.selector, spender, amount)
        );
        return success && (data.length == 0 || abi.decode(data, (bool)));
    }

    /**
     * @dev This internal function ensures that the allowance for a spender is at least the specified amount.
     * If the current allowance is less than the specified amount, it attempts to approve the maximum possible value,
     * and if that fails, it retries with the maximum possible value minus one. If both attempts fail,
     * it reverts with an error indicating that the approval did not succeed.
     * @param token The address of the token contract.
     * @param spender The address of the spender.
     */
    function _maxApproveIfNecessary(address token, address spender) internal {
        if (IERC20(token).allowance(address(this), spender) < type(uint128).max) {
            if (!_tryApprove(token, spender, type(uint256).max)) {
                if (!_tryApprove(token, spender, type(uint256).max - 1)) {
                    require(_tryApprove(token, spender, 0));
                    if (!_tryApprove(token, spender, type(uint256).max)) {
                        if (!_tryApprove(token, spender, type(uint256).max - 1)) {
                            true.revertError(ErrLib.ErrorCode.ERC20_APPROVE_DID_NOT_SUCCEED);
                        }
                    }
                }
            }
        }
    }
}
