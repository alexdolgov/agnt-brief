// SPDX-License-Identifier: LicenseRef-Gyro-1.0
// for information on licensing please see the README in the GitHub repository <https://github.com/gyrostable/concentrated-lps>.

pragma solidity ^0.7.6;
pragma experimental ABIEncoderV2;

import "../libraries/GyroFixedPoint.sol";
import "./eclp/GyroECLPPool.sol";
import "./eclp/GyroECLPMath.sol";
import "../interfaces/IOneSidedECLPJoiner.sol";

import "@balancer-labs/v2-vault/contracts/interfaces/IVault.sol";
import "@balancer-labs/v2-vault/contracts/interfaces/IAsset.sol";
import "@balancer-labs/v2-pool-weighted/contracts/BaseWeightedPool.sol";

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
// For fox' sake!!
import {IERC20 as OZIERC20} from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

// To pull decimals
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

contract OneSidedECLPJoiner is IOneSidedECLPJoiner {
    using GyroFixedPoint for uint256;
    using SafeERC20 for OZIERC20;

    uint256 internal constant ONE = 1e18;

    /// @dev a struct to package different things we pull to make my life easier and avoid stack too deep
    struct Metadata {
        bytes32 poolId;
        IVault vault;
        uint256[] scalingRates;
        IERC20[] poolTokens;
        uint256[] balances;
        uint8 tokenInIx;
        uint256 tokenInAmount;
        GyroECLPMath.Params eclpParams;
        GyroECLPMath.DerivedParams derivedECLPParams;
        uint256 swapFeePercentage;
        uint256 lpSupply; // NB this is always 18 decimals.
    }

    function joinECLPOneSided(
        address poolAddress,
        address tokenInAddress,
        uint256 tokenInAmountRaw,
        address beneficiary
    ) external override {
        OZIERC20(tokenInAddress).safeTransferFrom(msg.sender, address(this), tokenInAmountRaw);
        Metadata memory meta = _getMetadata(poolAddress, tokenInAddress);
        meta.tokenInAmount = tokenInAmountRaw.mulDown(meta.scalingRates[meta.tokenInIx]);
        _joinECLPOneSided(poolAddress, beneficiary, meta);
    }

    function joinECLPOneSidedCCIP(
        address poolAddress,
        address tokenInAddress,
        address beneficiary
    ) external override {
        try this._getMetadata(poolAddress, tokenInAddress) returns (Metadata memory meta) {
            try this._joinECLPOneSided(poolAddress, beneficiary, meta) {} catch Error(string memory reason) {
                _transferAll(IERC20(poolAddress), beneficiary);
                _transferAll(meta.poolTokens[0], beneficiary);
                _transferAll(meta.poolTokens[1], beneficiary);
                emit ExecutionFailed(reason, beneficiary);
            } catch (bytes memory data) {
                _transferAll(IERC20(poolAddress), beneficiary);
                _transferAll(meta.poolTokens[0], beneficiary);
                _transferAll(meta.poolTokens[1], beneficiary);
                emit ExecutionFailed(data, beneficiary);
            }
        } catch Error(string memory reason) {
            _transferAll(IERC20(tokenInAddress), beneficiary);
            emit ExecutionFailed(reason, beneficiary);
        } catch (bytes memory data) {
            _transferAll(IERC20(tokenInAddress), beneficiary);
            emit ExecutionFailed(data, beneficiary);
        }
    }

    function _joinECLPOneSided(
        address poolAddress,
        address beneficiary,
        Metadata memory meta
    ) public {
        _makeApprovals(meta);

        // Here comes the actual math. We exploit linearity of the pool function and later marry in
        // fees (not totally accurately, though, see below).
        uint256 swapAmountIn;
        {
            // Balances after the whole amount was added. This ignores fees we pay on the first swap and
            // is therefore slightly inaccurate.
            uint256[] memory targetBalances = _calcTargetBalances(meta.balances, meta.tokenInIx, meta.tokenInAmount);

            uint256 r0 = _calcInvariantAtBalances(meta.balances, meta);
            uint256 r1 = _calcInvariantAtBalances(targetBalances, meta);
            swapAmountIn = _getSwapAmount(targetBalances, r0, r1, meta);
        }

        // Main swap + join step
        // NB the return value from this is not used here. `joinPool()` re-reads the balances of
        // this contract post-swap to avoid potential rounding errors.
        swapTokenIn(swapAmountIn, meta);
        joinPool(meta, beneficiary);

        // Swap any leftover amounts of the out-token back to the in-token
        // These tokens may be left over b/c of the inaccuracy handling fees.
        {
            uint256 tokenOutHoldingsRaw = meta.poolTokens[1 - meta.tokenInIx].balanceOf(address(this));
            if (tokenOutHoldingsRaw > 0) {
                swap(1 - meta.tokenInIx, tokenOutHoldingsRaw, meta);
            }
        }

        // Transfer leftover amounts of the in-token to beneficiary.
        // Again, these tokens are only left over b/c of the inaccuracy handling fees.
        _transferAll(meta.poolTokens[meta.tokenInIx], beneficiary);

        // Transfer LP shares to beneficiary
        _transferAll(IERC20(poolAddress), beneficiary);
    }

    function _getMetadata(address poolAddress, address tokenInAddress) public view returns (Metadata memory meta) {
        GyroECLPPool pool = GyroECLPPool(poolAddress);
        meta.poolId = pool.getPoolId();
        meta.vault = pool.getVault();
        (IERC20[] memory poolTokens, uint256[] memory balancesRaw, ) = meta.vault.getPoolTokens(meta.poolId);
        meta.poolTokens = poolTokens;

        meta.scalingRates = _getScalingRates(poolTokens, pool);
        meta.balances = _scaleUp(balancesRaw, meta.scalingRates);

        meta.tokenInIx = _findTokenIndex(poolTokens, tokenInAddress);

        uint256 tokenInAmountRaw = meta.poolTokens[meta.tokenInIx].balanceOf(address(this));
        meta.tokenInAmount = tokenInAmountRaw.mulDown(meta.scalingRates[meta.tokenInIx]);

        (meta.eclpParams, meta.derivedECLPParams) = pool.getECLPParams();

        meta.swapFeePercentage = pool.getSwapFeePercentage();
        meta.lpSupply = pool.totalSupply();
    }

    function _makeApprovals(Metadata memory meta) internal {
        // We just make one blanket approval per token.
        for (uint256 i = 0; i < meta.poolTokens.length; ++i) {
            IERC20 token = meta.poolTokens[i];
            if (token.allowance(address(this), address(meta.vault)) == 0) {
                token.approve(address(meta.vault), type(uint256).max);
            }
        }
    }

    /** @notice Pull scaling factors to translate from "raw" units (used for transfer etc.) to
     * "scaled" units (used in pool math). Handles both decimals and rate scaling.
     *
     * @return result Scaling factors as 18-decimal numbers
     */
    function _getScalingRates(IERC20[] memory poolTokens, GyroECLPPool pool) internal view returns (uint256[] memory result) {
        result = new uint256[](2);

        for (uint256 i = 0; i < 2; ++i) {
            IERC20Metadata token = IERC20Metadata(address(poolTokens[i]));
            result[i] = 10**(36 - token.decimals());
        }

        (uint256 rate0, uint256 rate1) = pool.getTokenRates();
        result[0] = result[0].mulDown(rate0);
        result[1] = result[1].mulDown(rate1);
    }

    function _findTokenIndex(IERC20[] memory tokens, address tokenAddress) internal pure returns (uint8) {
        for (uint8 i = 0; i < tokens.length; ++i) {
            if (address(tokens[i]) == tokenAddress) return i;
        }
        revert("Token not found.");
    }

    function _scaleUp(uint256[] memory balancesRaw, uint256[] memory scalingRates) internal pure returns (uint256[] memory balances) {
        balances = new uint256[](2);
        balances[0] = balancesRaw[0].mulDown(scalingRates[0]);
        balances[1] = balancesRaw[1].mulDown(scalingRates[1]);
    }

    /// @dev This simply adds `tokenInAmount` to the respective balance.
    function _calcTargetBalances(
        uint256[] memory balances,
        uint8 tokenInIx,
        uint256 tokenInAmount
    ) internal pure returns (uint256[] memory targetBalances) {
        targetBalances = new uint256[](2);
        targetBalances[tokenInIx] = balances[tokenInIx].add(tokenInAmount);
        targetBalances[1 - tokenInIx] = balances[1 - tokenInIx];
    }

    function _calcInvariantAtBalances(uint256[] memory balances, Metadata memory meta) internal pure returns (uint256 invariant) {
        invariant = GyroECLPMath.calculateInvariant(balances, meta.eclpParams, meta.derivedECLPParams);
    }

    /** @notice Calculate approximate (!) amount to swap so that we can afterwards proportionally
     * join the pool.
     *
     * This is *not* exact (when fees are not zero). We slightly overestimate the swap amount. This
     * leads to a small amount of assets being leftover afterwards (i.e., we can't deploy the full
     * capital, but most of it).
     */
    function _getSwapAmount(
        uint256[] memory targetBalances,
        uint256 r0,
        uint256 r1,
        Metadata memory meta
    ) internal view returns (uint256 swapAmount) {
        uint256 balancePostSwapIn = targetBalances[meta.tokenInIx].mulDown(r0).divDown(r1);
        swapAmount = balancePostSwapIn.sub(meta.balances[meta.tokenInIx]).divDown(ONE.sub(meta.swapFeePercentage));
    }

    /// @notice Specialized version of `swap()` to swap a *scaled* amount of the in-token into the pool.
    function swapTokenIn(uint256 amount, Metadata memory meta) internal returns (uint256 amountOut) {
        // This struct gets inherited somehow; it's not pool-specific.
        uint256 amountRaw = amount.divUp(meta.scalingRates[meta.tokenInIx]);
        uint256 amountOutRaw = swap(meta.tokenInIx, amountRaw, meta);
        amountOut = amountOutRaw.mulDown(meta.scalingRates[1 - meta.tokenInIx]);
    }

    /// @notice Swap a specified (raw, i.e., unscaled) amount of one of the two tokens into the pool.
    function swap(
        uint8 tokenInIx,
        uint256 amountInRaw,
        Metadata memory meta
    ) internal returns (uint256 amountOutRaw) {
        IVault.SingleSwap memory singleSwap = IVault.SingleSwap({
            poolId: meta.poolId,
            kind: IVault.SwapKind.GIVEN_IN,
            assetIn: IAsset(address(meta.poolTokens[tokenInIx])),
            assetOut: IAsset(address(meta.poolTokens[1 - tokenInIx])),
            amount: amountInRaw,
            userData: ""
        });

        // Essentially a dummy.
        IVault.FundManagement memory fundManagement = IVault.FundManagement({
            sender: address(this),
            fromInternalBalance: false,
            recipient: payable(address(this)),
            toInternalBalance: false
        });

        amountOutRaw = meta.vault.swap(singleSwap, fundManagement, 0, type(uint256).max);
    }

    /// @notice Join the pool proportionally with the maximum amount of assets.
    function joinPool(Metadata memory meta, address beneficiary) internal {
        // We pull everything again here to decouple rounding errors from the calculations we did before.
        uint256 sharesToMint = _getSharesToMint(meta);

        uint256[] memory maxAmountsIn = new uint256[](2);
        for (uint256 i = 0; i < 2; ++i) {
            maxAmountsIn[i] = type(uint256).max;
        }

        IVault.JoinPoolRequest memory joinPoolRequest = IVault.JoinPoolRequest({
            assets: _tokensToAssets(meta.poolTokens),
            maxAmountsIn: maxAmountsIn,
            userData: abi.encode(BaseWeightedPool.JoinKind.ALL_TOKENS_IN_FOR_EXACT_BPT_OUT, sharesToMint),
            fromInternalBalance: false
        });

        meta.vault.joinPool(meta.poolId, address(this), beneficiary, joinPoolRequest);
    }

    // @notice Dumb & unnecessary conversion function that does nothing.
    function _tokensToAssets(IERC20[] memory poolTokens) internal pure returns (IAsset[] memory assets) {
        assets = new IAsset[](poolTokens.length);
        for (uint256 i = 0; i < poolTokens.length; ++i) {
            assets[i] = IAsset(address(poolTokens[i]));
        }
    }

    /// @notice Compute the maximum amount of LP shares we can mint using all the assets in this
    /// contract.
    function _getSharesToMint(Metadata memory meta) internal returns (uint256 shares) {
        // We pull everything again here to decouple rounding errors from the calculations we did before.
        (, uint256[] memory balancesRaw, ) = meta.vault.getPoolTokens(meta.poolId);
        uint256 assetsRaw0 = meta.poolTokens[0].balanceOf(address(this));
        uint256 assetsRaw1 = meta.poolTokens[1].balanceOf(address(this));

        // NB we don't have to do decimal scaling or rate scaling here b/c it cancels out.
        uint256 shares0 = meta.lpSupply.mulDown(assetsRaw0).divDown(balancesRaw[0]);
        uint256 shares1 = meta.lpSupply.mulDown(assetsRaw1).divDown(balancesRaw[1]);
        shares = shares0 <= shares1 ? shares0 : shares1;
    }

    /// @notice Helper function to transfer all holdings to an address
    function _transferAll(IERC20 token, address beneficiary) internal {
        token.transfer(beneficiary, token.balanceOf(address(this)));
    }
}
