// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IPActionSimple} from "../../../interfaces/IPActionSimple.sol";
import {ApproxParams, LimitOrderData, TokenInput} from "../../../interfaces/IPAllActionTypeV3.sol";
import {ActionBase} from "./ActionBase.sol";

/// @title ActionDelegateBase
/// @notice Provides internal delegate call wrappers for simple action functions.
/// @dev These wrappers allow complex action facets to reuse simple action logic via delegatecall,
///      ensuring storage context is preserved while avoiding code duplication. Each delegate function
///      encodes a call to IPActionSimple and executes it through _delegateToSelf.
contract ActionDelegateBase is ActionBase {
    /// @notice Delegates to addLiquiditySingleBtSimple to add liquidity using only BT
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param netBtIn Amount of BT to add as liquidity
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @return netLpOut Amount of LP tokens received
    /// @return netFwFee Fees paid in FW
    function delegateToAddLiquiditySingleBtSimple(address receiver, address market, uint256 netBtIn, uint256 minLpOut)
        internal
        returns (uint256 netLpOut, uint256 netFwFee)
    {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.addLiquiditySingleBtSimple, (receiver, market, netBtIn, minLpOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Delegates to addLiquiditySingleTokenSimple to add liquidity using any input token
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @param input Token input parameters including swap routing if needed
    /// @return netLpOut Amount of LP tokens received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Intermediate FW amount used
    function delegateToAddLiquiditySingleTokenSimple(
        address receiver,
        address market,
        uint256 minLpOut,
        TokenInput calldata input
    ) internal returns (uint256 netLpOut, uint256 netFwFee, uint256 netFwInterm) {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.addLiquiditySingleTokenSimple, (receiver, market, minLpOut, input)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256, uint256));
    }

    /// @notice Delegates to addLiquiditySingleFwSimple to add liquidity using only FW
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param netFwIn Amount of FW to add as liquidity
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @return netLpOut Amount of LP tokens received
    /// @return netFwFee Fees paid in FW
    function delegateToAddLiquiditySingleFwSimple(address receiver, address market, uint256 netFwIn, uint256 minLpOut)
        internal
        returns (uint256 netLpOut, uint256 netFwFee)
    {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.addLiquiditySingleFwSimple, (receiver, market, netFwIn, minLpOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Delegates to removeLiquiditySingleBtSimple to remove liquidity and receive BT
    /// @param receiver Address to receive the BT tokens
    /// @param market Address of the Fira market
    /// @param netLpToRemove Amount of LP tokens to burn
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    function delegateToRemoveLiquiditySingleBtSimple(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minBtOut
    ) internal returns (uint256 netBtOut, uint256 netFwFee) {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.removeLiquiditySingleBtSimple, (receiver, market, netLpToRemove, minBtOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Delegates to swapExactTokenForBtSimple to swap any token for BT
    /// @param receiver Address to receive the BT tokens
    /// @param market Address of the Fira market
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param input Token input parameters including swap routing if needed
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Intermediate FW amount used
    function delegateToSwapExactTokenForBtSimple(
        address receiver,
        address market,
        uint256 minBtOut,
        TokenInput calldata input
    ) internal returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm) {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.swapExactTokenForBtSimple, (receiver, market, minBtOut, input)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256, uint256));
    }

    /// @notice Delegates to swapExactFwForBtSimple to swap FW for BT
    /// @param receiver Address to receive the BT tokens
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    function delegateToSwapExactFwForBtSimple(address receiver, address market, uint256 exactFwIn, uint256 minBtOut)
        internal
        returns (uint256 netBtOut, uint256 netFwFee)
    {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.swapExactFwForBtSimple, (receiver, market, exactFwIn, minBtOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Delegates to swapExactTokenForCtSimple to swap any token for CT
    /// @param receiver Address to receive the CT tokens
    /// @param market Address of the Fira market
    /// @param minCtOut Minimum CT to receive (slippage protection)
    /// @param input Token input parameters including swap routing if needed
    /// @return netCtOut Amount of CT received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Intermediate FW amount used
    function delegateToSwapExactTokenForCtSimple(
        address receiver,
        address market,
        uint256 minCtOut,
        TokenInput calldata input
    ) internal returns (uint256 netCtOut, uint256 netFwFee, uint256 netFwInterm) {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.swapExactTokenForCtSimple, (receiver, market, minCtOut, input)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256, uint256));
    }

    /// @notice Delegates to swapExactFwForCtSimple to swap FW for CT
    /// @param receiver Address to receive the CT tokens
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minCtOut Minimum CT to receive (slippage protection)
    /// @return netCtOut Amount of CT received
    /// @return netFwFee Fees paid in FW
    function delegateToSwapExactFwForCtSimple(address receiver, address market, uint256 exactFwIn, uint256 minCtOut)
        internal
        returns (uint256 netCtOut, uint256 netFwFee)
    {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.swapExactFwForCtSimple, (receiver, market, exactFwIn, minCtOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Checks if on-chain approximation can be used instead of off-chain computed values
    /// @dev On-chain approximation is only valid when no off-chain guess is provided and no limit orders exist
    /// @param approx Approximation parameters containing guessOffchain value
    /// @param limit Limit order data to check for presence of orders
    /// @return True if on-chain approximation can be used
    function canUseOnchainApproximation(ApproxParams calldata approx, LimitOrderData calldata limit)
        internal
        pure
        returns (bool)
    {
        return approx.guessOffchain == 0 && _isEmptyLimit(limit);
    }
}
