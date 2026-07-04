// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;
pragma abicoder v2;

import "./ThickBaseLiquidityManager.sol";

contract ThickMultiPositionLiquidityManager is ThickBaseLiquidityManager {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    LiquidityPositions internal positions;

    // Types

    /// @dev The vault's position data. At any given moment this represents
    ///      all active positions inside the pool.
    ///      Each lowerTick is the lower bound of the position at that index.
    ///      Each upperTick is the upper bound of the position at that index.
    ///      Each relativeWeight is the relative weight of the position at that index,
    ///      relative to the other positions.
    ///      So for example if LiquidityPositions is
    ///        {
    ///            lowerTicks: [0, 20, 40],
    ///            upperTicks: [10, 30, 50],
    ///            relativeWeights: [1, 2, 3]
    ///        }
    ///        then that means the vault has 3 positions:
    ///            1. 0-10 with relative weight 1
    ///            2. 20-30 with relative weight 2
    ///            3. 40-50 with relative weight 3
    struct LiquidityPositions {
        int24[] lowerTick;
        int24[] upperTick;
        uint16[] relativeWeight;
    }
    // Storage

    IHelper.NewLiquidityPositions[] internal opPositions;

    // External Functions

    /// @dev Get current positions held by the vault
    /// This function is used for mainly read calls so looping shouldn't be a problem
    function getPositions() external view returns (int24[] memory, int24[] memory, uint16[] memory) {
        uint256 length = opPositions.length;
        LiquidityPositions memory oldPositions;

        // Initialize the dynamic arrays with the correct length
        oldPositions.lowerTick = new int24[](length);
        oldPositions.upperTick = new int24[](length);
        oldPositions.relativeWeight = new uint16[](length);

        for (uint256 i; i != length; ++i) {
            oldPositions.lowerTick[i] = opPositions[i].lowerTick;
            oldPositions.upperTick[i] = opPositions[i].upperTick;
            oldPositions.relativeWeight[i] = opPositions[i].relativeWeight;
        }

        return (oldPositions.lowerTick, oldPositions.upperTick, oldPositions.relativeWeight);
    }

    /// @dev Internal function to pull funds from pool.
    ///      Update positions if necessary, then deposit funds into pool.
    ///      Reverts if the vault does not own any liquidity or tokens.
    ///      newPositions requirements:
    ///        Each lowerTick must be lower than its corresponding upperTick
    ///        Each lowerTick must be greater than or equal to the tick min (-887272)
    ///        Each upperTick must be less than or equal to the tick max (887272)
    ///        All lowerTicks and upperTicks must be divisible by the pool tickSpacing--
    ///      A 0.05% fee pool has tick spacing of 10, 0.3% has tick spacing 60.
    ///      And 1% has tick spacing 200.
    /// @param totalWeight The share of liquidity we want deposited, multiplied by 10,000.
    ///           A value of 10,000 means we want to deposit all tokens into uniswap.
    ///           A value of 0 means we just want all the liquidity out.
    ///           Note that values above 10,000 are not explicitly prohibited
    ///           but will generally cause the tend to fail.
    /// @param newPositions The info of each new position to be set.
    ///           newPositions.lowerTick[] is an array, in order, of the lower ticks of each position
    ///           newPositions.upperTick[] is an array, in order, of the upper ticks of each position
    ///           newPositions.relativeWeight[] is an array, in order, of the relative weights of each position
    ///           So if for example newPositions is called with lowerTick = [-120, 0],
    ///           upperTick = [-60, 60], and relativeWeight = [1, 5],
    ///           then the positions would be -120 to -60 with a weight of 1,
    ///           and 0 to 60 with a weight of 5.
    ///           The weight differences roughly correspond to what
    ///           proportion of the liquidity is added to each position.
    /// @param timeSensitiveData Encoded info of the swapAmount and sqrtPriceLimitX96.
    ///           It must be encoded as bytes so that it the data is placed after
    ///           the newPositions, which is also a dynamic data type.
    ///        timeSensitiveData.swapAmount: the amount to be swapped from one token to another this tend. zeroForOne if positive, oneForZero if negative.
    ///        timeSensitiveData.sqrtPriceLimitX96: the slippage limit of the swap. Protections elsewhere prevent extreme slippage if the keeper calling this
    ///        function is malicious, but this is the first line of defense against MEV attacks.

    function tend(uint256 totalWeight, LiquidityPositions memory newPositions, bytes calldata timeSensitiveData)
        external
        onlyRole(MANAGER_ROLE)
        whenNotPaused
    {
        require(totalWeight <= TOTAL_WEIGHT_MAX);
        (int256 swapAmount, uint160 sqrtPriceLimitX96) = abi.decode(timeSensitiveData, (int256, uint160));

        // Get current pool state
        (uint160 sqrtPriceX96, int24 currentTick,,,,,) = pool.slot0();

        // currentTick must be close enough to TWAP tick to avoid MEV exploit
        // This is essentially a way to prevent a flashloan attack
        // even if sqrtPriceLimit is set incorrectly.
        IHelper(helper).uniVolatilityCheck(currentTick, twapInterval, maxTickChange, address(pool));

        // Withdraw liquidity from Uniswap pool by passing in 1 and 1
        // (indicating we're withdrawing 100% of liquidity)
        _burnAndCollect(1, 1);

        // Update positions if desired. If newPositions is empty,
        // we'll just continue with the old positions instead.
        if (newPositions.lowerTick.length > 0) {
            migratePositions(newPositions);
        }

        // Perform a swap if desired.
        if (swapAmount != 0) {
            bool zeroForOne = swapAmount > 0;
            require(swapAmount != type(int256).min);
            swapCallBackProtection = true;
            pool.swap(address(this), zeroForOne, zeroForOne ? swapAmount : -swapAmount, sqrtPriceLimitX96, "");

            // Update sqrtPriceX96; it will have moved due to the swap
            (sqrtPriceX96,,,,,,) = pool.slot0();
        }

        uint256 balance0 = _getBalance0();
        uint256 balance1 = _getBalance1();

        emit Snapshot(sqrtPriceX96, balance0, balance1, totalSupply());

        // Create new positions in Uniswap
        if (totalWeight > 0) {
            _setBins(
                sqrtPriceX96,
                // balance0 adjusted by totalWeight
                FullMath.mulDiv(balance0, totalWeight, DIVISOR),
                // balance1 adjusted by totalWeight
                FullMath.mulDiv(balance1, totalWeight, DIVISOR),
                swapAmount
            );
        }
    }

    // Public Functions

    /// @dev burns each vault position which contains liquidity, updating fees owed to that position.
    ///      Call this before calling getTotalAmounts if total amounts must include fees.
    ///      There's a function in the periphery to do so through a static call.
    function poke() public override {
        IHelper.NewLiquidityPositions[] memory _positions = opPositions;
        uint256 positionCount = _positions.length;
        for (uint256 i; i != positionCount; ++i) {
            // Get position liquidity so that we can ignore this position if it has 0 liquidity.
            (uint128 positionLiquidity,,,,) = _position(_positions[i].lowerTick, _positions[i].upperTick);

            // If position has liquidity, update fees owed.
            if (positionLiquidity > 0) {
                pool.burn(_positions[i].lowerTick, _positions[i].upperTick, 0);
            }
        }
    }

    /// @dev Calculates the vault's total holdings of token0 and token1.
    ///      in other words, how much of each token the vault would hold if it withdrew
    ///      all its liquidity from Uniswap.
    ///      This function DOES NOT include fees earned since the last burn.
    ///      To include fees, first poke() and then call getTotalAmounts.
    ///      There's a function inside the periphery to do so.
    function getTotalAmounts() public view override returns (uint256 total0, uint256 total1) {
        // Start with tokens currently held inside the vault
        (total0, total1) = IHelper(helper).getUniswapVaultBalances(
            _getBalance0(), _getBalance1(), opPositions, address(pool), feeManager
        );
    }

    // Internal Functions

    /// @dev Given desired positions, desired relative weights, and a current token amount,
    ///      This function deposits as much liquidity as possible into each position
    ///      while respecting relative weights.
    /// @param sqrtPriceX96 The current sqrtPriceX96 of the pool
    /// @param t0ToDeposit The vault's current balance of token0 ready to be deposited
    ///                 (excluding steer and strategist fees)
    /// @param t1ToDeposit The vault's current balance of token1 ready to be deposited
    ///                 (excluding steer and strategist fees)
    /// @param swapAmount The amount to be swapped from one token to another this tend.
    ///                   zeroForOne if positive, oneForZero if negative.
    ///                   Here it is mainly used to determine which direction the swap was,
    ///                   so that we can check whether the swap was too large.
    function _setBins(uint160 sqrtPriceX96, uint256 t0ToDeposit, uint256 t1ToDeposit, int256 swapAmount) internal {
        //@todo check the updated code
        IHelper.NewLiquidityPositions[] memory _positions = opPositions;
        //    Temporary array built to hold the weights of each token in each liquidity position.
        //      t0Weights[0] = Token 0 weight in the first liquidity position, multiplied by PRECISION.
        //      t1 weight in that position can be calculated using PRECISION * total bin weight - t0 weight.
        uint256[] memory positionT0Requested;
        uint256[] memory positionT1Requested;
        uint256 totalT0Requested;
        uint256 totalT1Requested;
        uint256 positionCount = _positions.length;
        positionT0Requested = new uint256[](positionCount);
        positionT1Requested = new uint256[](positionCount);

        // For each bin, figure out how much of the bin will be in token0,
        // and how much will be in token1.
        // Set weights accordingly--if a bin's weight is 10, and nine tenths of its value
        // will be in token0, then its token0 weight will be 9 and its token1 weight will be 1.
        for (uint256 i; i != positionCount; ++i) {
            // For each position, find amount0Wanted and amount1Wanted
            // given a liquidity of PRECISION * relativeWeight.
            if (i >= 1) {
                require(
                    _positions[i - 1].lowerTick < _positions[i].lowerTick
                        && _positions[i - 1].upperTick < _positions[i].upperTick
                );
            }
            (uint256 amount0Wanted, uint256 amount1Wanted) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                TickMath.getSqrtRatioAtTick(_positions[i].lowerTick),
                TickMath.getSqrtRatioAtTick(_positions[i].upperTick),
                uint128(PRECISION * _positions[i].relativeWeight)
            );
            // No safecast here--an overflow will lead to an incorrect number,
            // which will either (usually) revert, or cause a harmless liquidity miscalculation.
            // Record amt0Delta and amt1Delta for this position
            positionT0Requested[i] = amount0Wanted;
            positionT1Requested[i] = amount1Wanted;

            // Add amt0Delta and amt1Delta to totalT0Requested and totalT1Requested
            totalT0Requested += amount0Wanted;
            totalT1Requested += amount1Wanted;
        }

        // Now add liquidity to those bins based on their weights vs total token weights.
        // If relativeWeights have a bad input (such as a weight of 0, or a very high weight,
        // in one of the positions) the below code will revert in some cases, proceed in others.
        // The result will not be correct but all that a bad input can do
        // is cause a revert or cause less than 100% of liquidity to be deployed.
        for (uint256 i; i != positionCount; ++i) {
            // Liquidity to deposit for this position is calculated using _liquidityForAmounts
            // and the calculated tokens to deposit for the position.
            // Set token amounts for this position
            uint256 positionT0Amount =
                totalT0Requested > 0 ? FullMath.mulDiv(positionT0Requested[i], t0ToDeposit, totalT0Requested) : 0;
            uint256 positionT1Amount =
                totalT1Requested > 0 ? FullMath.mulDiv(positionT1Requested[i], t1ToDeposit, totalT1Requested) : 0;

            uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96,
                TickMath.getSqrtRatioAtTick(_positions[i].lowerTick),
                TickMath.getSqrtRatioAtTick(_positions[i].upperTick),
                positionT0Amount,
                positionT1Amount
            );

            // Create the position inside the pool.
            if (liquidity > 0) {
                mintCallBackProtection = true;
                pool.mint(address(this), _positions[i].lowerTick, _positions[i].upperTick, liquidity, "");
            }
        }

        // Check post-mint balances.
        // We need to check that less than 5% of the TO token (i.e. the token we swapped into) remains post-mint.
        // Having the right liquidity ratio is extremely valuable,
        // but the main thing we're protecting against here is dynamic data that swaps more than it should.

        // As an example, assume a malicious keeper has flashloaned the Algebra pool
        // into a very bad exchange rate before handling the swap.
        // If exchange rate is extremely high token1PerToken0, exploiter will want to swap from token1 to token0
        // (going the other way just helps the liquidity manager)
        // But the positions will be entirely in token1.
        // The check below ensures that no more than 5% of the total contract token0 remains undeposited,
        // a reliable indicator that the correct amount of token1 was swapped.

        // This combined with the TWAP check makes flashloan exploits extremely difficult for a single keeper.

        // If swapAmount > 0, that means zeroForOne. Otherwise, oneForZero.
        // No overflow checks here because some kind of overflow exploit is
        // both implausible and would just cause a revert.
        if (swapAmount > 0) {
            // Require that at least 95% of t1 has been deposited
            // (ensuring that swap amount wasn't too great)
            require(_getBalance1() < (t1ToDeposit * FIVE) / DIVISOR100);
        } else if (swapAmount < 0) {
            // Require that at least 95% of t0 has been deposited
            // (ensuring that swap amount wasn't too great)
            require(_getBalance0() < (t0ToDeposit * FIVE) / DIVISOR100);
        }
    }

    /// @dev Withdraws liquidity from all positions, allocating fees correctly in the process.
    /// @param shares LP shares being withdrawn
    /// @param totalShares total # of LP tokens in the vault
    /// @return t0 Token0 earned from burned liquidity + fees.
    ///            Only includes burned + fees corresponding to LP shares being withdrawn (100% if tend)
    /// @return t1 Token1 earned from burned liquidity + fees
    function _burnAndCollect(uint256 shares, uint256 totalShares) internal override returns (uint256 t0, uint256 t1) {
        // First, fetch current positions, Only tend() and withdraw() call this function,
        // and neither uses these positions elsewhere (tend uses updated ones).
        IHelper.NewLiquidityPositions[] memory _positions = opPositions;

        // For each position, burn() and then withdraw correct amount of liquidity.
        uint256 fees0;
        uint256 fees1;
        uint256 positionCount = _positions.length;
        for (uint256 i; i != positionCount; ++i) {
            int24 lowerTick = _positions[i].lowerTick;
            int24 upperTick = _positions[i].upperTick;

            uint128 liquidityToBurn;

            // Get position liquidity. If we don't want all of it,
            // here is where we specify how much we want
            // (liquidity * fraction of pool which is being withdrawn)
            // Slightly tortured logic here due to stack management
            {
                (uint128 totalPositionLiquidity,,,,) = _position(lowerTick, upperTick);

                liquidityToBurn = uint128(FullMath.mulDiv(totalPositionLiquidity, shares, totalShares));
            }

            // amountsOwed are always pulled with liquidity in this contract,
            // so if position liquidity is 0, no need to withdraw anything.
            if (liquidityToBurn > 0) {
                // Amount burned in each position.
                // Corresponds to amount of liquidity withdrawn (i.e. doesn't include fees).
                (uint256 posBurned0, uint256 posBurned1) = pool.burn(lowerTick, upperTick, liquidityToBurn);

                // Collect all owed tokens including earned fees
                (uint256 collect0, uint256 collect1) =
                    pool.collect(address(this), lowerTick, upperTick, type(uint128).max, type(uint128).max);

                /*
                 * Add liquidity burned to t0 and t1--this is already proportional to amt being withdrawn
                 * No need to check for overflow--values come from Uniswap, and a total burn greater than 2^256 - 1 would represent burning more than a token's total supply.
                 * Technically possible given a malicious token, but a malicious token can already steal vault holdings due to the nature of uniswap
                    (just have the vault deposit all tokens, then mint an arbitrary amount of the malicious token and swap for the real token)
                */
                t0 += posBurned0;
                t1 += posBurned1;

                // Fees earned by liquidity inside uniswap = collected - burned.
                // First we allocate some to steer and some to strategist.
                // The remainder is the fees earned by LPs.
                // So after that we add remainder * shares / totalShares,
                // and that gives us t0 and t1 allocated to whatever's being withdrawn.

                // Since burned will never be greater than collected, no need to check for underflow here.
                // Since collect values were originally uint128's, no need to check for overflow either. It would take ~2^128 max additions to overflow.
                fees0 += collect0 - posBurned0;
                fees1 += collect1 - posBurned1;
            }
        }
        // Emit fee info
        emit FeesEarned(fees0, fees1);
        IFeeManager.Fee[] memory fees = IFeeManager(feeManager).getFees(address(this));
        uint256 totalFees = IFeeManager(feeManager).vaultTotalFees(address(this));
        uint256 totalCut0;
        uint256 totalCut1;
        if (fees0 > 0) {
            totalCut0 = FullMath.mulDiv(fees0, totalFees, FEE_DIVISOR);
        }
        if (fees1 > 0) {
            totalCut1 = FullMath.mulDiv(fees1, totalFees, FEE_DIVISOR);
        }
        totalFees0 += totalCut0; //Add to total Fees
        totalFees1 += totalCut1; //Add to total Fees
        // Subtract fees going to strategist/steer from fees going to vault
        fees0 -= totalCut0;
        // Subtract fees going to strategist/steer from fees going to vault
        fees1 -= totalCut1;
        // Iterate through each fees structure
        for (uint256 j; j != fees.length; ++j) {
            // Increase fees
            accruedFees0[fees[j].feeIdentifier] =
                accruedFees0[fees[j].feeIdentifier].add(FullMath.mulDiv(totalCut0, fees[j].feeValue, FEE_DIVISOR));

            // Increase fees
            accruedFees1[fees[j].feeIdentifier] =
                accruedFees1[fees[j].feeIdentifier].add(FullMath.mulDiv(totalCut1, fees[j].feeValue, FEE_DIVISOR));
        }
        // Add fees earned by burned position to burned amount
        t0 = t0.add(FullMath.mulDiv(fees0, shares, totalShares));
        t1 = t1.add(FullMath.mulDiv(fees1, shares, totalShares));
    }

    function migrate() external {
        require(!isMigrated);
        isMigrated = true;
        //Migration of fee percentages
        //Vault Registry should be upgraded and fee manager should be set there first then other vaults types should be upgraded
        address _feeManager = IBareVaultRegistry(vaultRegistry).feeManager();
        address _helper = IBareVaultRegistry(vaultRegistry).vaultHelper();
        require(_feeManager != address(0));
        require(_helper != address(0));
        feeManager = _feeManager;
        helper = _helper;
        IFeeManager(_feeManager).setMigratedVaultFeeAndWithdrawalPermission();
        accruedFees0["STEER_FEES"] += accruedSteerFees0;
        totalFees0 += accruedSteerFees0;
        accruedFees0["STRATEGIST_FEES"] += accruedStrategistFees0;
        totalFees0 += accruedStrategistFees0;

        accruedFees1["STEER_FEES"] += accruedSteerFees1;
        totalFees1 += accruedSteerFees1;
        accruedFees1["STRATEGIST_FEES"] += accruedStrategistFees1;
        totalFees1 += accruedStrategistFees1;
        //migrate postions
        migratePositions(positions);
    }

    function migratePositions(LiquidityPositions memory _positions) internal {
        uint256 newPosLength = _positions.lowerTick.length;
        delete opPositions;
        IHelper.NewLiquidityPositions memory temp;
        for (uint256 i; i != newPosLength; ++i) {
            temp = IHelper.NewLiquidityPositions({
                lowerTick: _positions.lowerTick[i],
                upperTick: _positions.upperTick[i],
                relativeWeight: _positions.relativeWeight[i]
            });
            opPositions.push(temp);
        }
    }
}
