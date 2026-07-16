// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import { SwapStep } from "contracts/dex/SwapTypes.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { GuardianAdmin } from "contracts/base/GuardianAdmin.sol";
import { SwapRouter } from "contracts/SwapRouter.sol";
import { IRouterAllowlist } from "contracts/interfaces/IRouterAllowlist.sol";

interface IWETHBridgeRouteReceiver {
    function withdraw(
        uint256
    ) external;
}

/// @title BridgeRouteReceiver
/// @notice Receives bridged tokens from whitelisted adapters, optionally
/// swaps on the intermediate chain, and immediately launches the next bridge
/// hop. Adapters that deliver a single token call `executeRoute` with
/// `(feeToken, feeAmount) = (address(0), 0)`. Adapters that also deliver a
/// fee-forwarding token (e.g. CCIP-LINK packed as a second `tokenAmount` by
/// `CcipRouteSender`) pass the delivered `(feeToken, feeAmount)` so the
/// receiver can approve it to the second-hop bridge for `feeAmount` and
/// refund the unspent leftover to `params.fallbackRecipient`.
///
/// The hub-funded native cap (`maxHubNativeFeeByAdapter`) lets the hub's own
/// ETH balance top up `nextHop.nativeValue` past `msg.value`, bounded by an
/// admin-set per-adapter cap (default zero). Only adapters that paid a
/// comparable source-side fee on the way in (e.g. `CcipRouteAdapter`) should
/// be granted a nonzero cap, otherwise a cheap first-hop adapter could drain
/// the float via an expensive CCIP second hop. See
/// `docs/CcipHubSecondHopFee.md`.
contract BridgeRouteReceiver is GuardianAdmin {
    error NotWhitelistedAdapter();
    error ZeroAddress();
    error ZeroAmountReceived();
    error OnlySelf();
    error InvalidTokenPath();
    error NativePrincipalNotSupported();
    error FeeTokenConflictsWithRouteToken();
    error InsufficientInputAmount();
    error InsufficientBridgeAmount();
    error BridgeCalldataTooShort();
    error InvalidBridgeAmountOffset();
    error HubNativeFeeExceedsCap(uint256 hubContribution, uint256 cap);
    error BridgeDidNotConsumeTokens();
    error BridgeFailed(bytes reason);
    error NativeGasDropTokenNotWrappedNative();
    error NativeGasDropExceedsAmount();
    error NativeGasDropTokenConflicts();

    event BridgeRouteExecuted(
        address indexed fallbackRecipient,
        address indexed tokenIn,
        address indexed bridgeToken,
        uint256 amountIn,
        uint256 bridgeAmount,
        address bridgeContract
    );

    event BridgeRouteFallback(
        address indexed fallbackRecipient, address indexed token, uint256 amount
    );

    /// @notice Emitted when a native refund delivery fails. The unrefunded
    /// `amount` remains in this contract and must be recovered via
    /// `rescueETH`.
    event RefundFailed(address indexed recipient, uint256 amount);

    event WhitelistedAdapterSet(address adapter, bool whitelisted);

    event MaxHubNativeFeeByAdapterSet(
        address indexed adapter, uint256 oldCap, uint256 newCap
    );

    struct NextHopParams {
        address bridgeContract;
        bytes bridgeCalldata;
        address bridgeToken;
        uint256 minBridgeAmount;
        uint256 amountOffset;
        uint256 nativeValue;
    }

    struct RouteParams {
        address fallbackRecipient;
        uint256 minAmountIn;
        SwapStep[] swapSteps;
        uint256 minSwapOut;
        NextHopParams nextHop;
        /// @dev Native gas to leave for fallbackRecipient on this route
        /// execution chain, often the hub chain rather than the final
        /// destination chain. Denominated in wei. Supported only when the
        /// first-hop delivered token is this chain's wrapped native token.
        /// Route amounts and slippage checks are planned against
        /// `amount - nativeGasDrop`.
        uint256 nativeGasDrop;
        /// @dev Deadline (unix seconds) forwarded to `SwapRouter.swap`
        /// for the intermediate-chain swap. Source-chain senders should
        /// bound how long the destination-side swap can remain executable;
        /// pass `type(uint256).max` to intentionally skip the check.
        uint256 swapDeadline;
    }

    SwapRouter public immutable msr;
    IRouterAllowlist public immutable allowlist;

    mapping(address => bool) public whitelistedAdapters;
    address[] private _adapters;
    mapping(address => uint256) private _adapterIndexPlusOne;

    /// @notice Per-adapter cap on the hub-funded portion of
    /// `nextHop.nativeValue`. The hub-funded portion is
    /// `nativeValue - msg.value` (clamped to zero when
    /// `msg.value >= nativeValue`). Default zero per adapter — admin must
    /// opt in via `setMaxHubNativeFeeByAdapter(adapter, cap)` to let a
    /// specific source-side adapter draw from the hub's own ETH balance.
    /// Only adapters whose source-side path already paid a comparable fee
    /// (e.g. `CcipRouteAdapter`) should be granted a nonzero cap.
    mapping(address adapter => uint256 cap) public maxHubNativeFeeByAdapter;

    constructor(
        address msr_,
        address admin_,
        address guardian_
    ) GuardianAdmin(admin_, guardian_) {
        if (msr_ == address(0)) revert ZeroAddress();
        msr = SwapRouter(payable(msr_));
        allowlist = msr.allowlist();
    }

    function adapters() external view returns (address[] memory) {
        return _adapters;
    }

    function setWhitelistedAdapter(
        address adapter,
        bool whitelisted
    ) external onlyAdmin {
        _setWhitelistedAdapter(adapter, whitelisted);
    }

    /// @notice Emergency-disable an adapter without waiting on governance.
    /// Re-enabling still requires the admin path.
    function emergencyDisableAdapter(
        address adapter
    ) external onlyGuardianOrAdmin {
        _setWhitelistedAdapter(adapter, false);
    }

    function _setWhitelistedAdapter(
        address adapter,
        bool whitelisted
    ) internal {
        bool currentlyAllowed = whitelistedAdapters[adapter];
        if (currentlyAllowed == whitelisted) return;

        whitelistedAdapters[adapter] = whitelisted;
        if (whitelisted) {
            _adapterIndexPlusOne[adapter] = _adapters.length + 1;
            _adapters.push(adapter);
        } else {
            uint256 indexPlusOne = _adapterIndexPlusOne[adapter];
            uint256 index = indexPlusOne - 1;
            uint256 lastIndex = _adapters.length - 1;
            if (index != lastIndex) {
                address last = _adapters[lastIndex];
                _adapters[index] = last;
                _adapterIndexPlusOne[last] = index + 1;
            }
            _adapters.pop();
            delete _adapterIndexPlusOne[adapter];
        }
        emit WhitelistedAdapterSet(adapter, whitelisted);
    }

    function setMaxHubNativeFeeByAdapter(
        address adapter,
        uint256 newCap
    ) external onlyAdmin {
        if (adapter == address(0)) revert ZeroAddress();
        uint256 oldCap = maxHubNativeFeeByAdapter[adapter];
        if (oldCap == newCap) return;
        maxHubNativeFeeByAdapter[adapter] = newCap;
        emit MaxHubNativeFeeByAdapterSet(adapter, oldCap, newCap);
    }

    function rescueTokens(
        address token,
        address to,
        uint256 amount
    ) external onlyAdmin {
        SafeTransferLib.safeTransfer(token, to, amount);
    }

    function rescueETH(
        address to,
        uint256 amount
    ) external onlyAdmin {
        SafeTransferLib.safeTransferETH(to, amount);
    }

    /// @notice Execute a route hop. Adapters that deliver only the bridged
    /// token pass `(feeToken, feeAmount) = (address(0), 0)`. Adapters that
    /// also deliver a fee-forwarding ERC20 (e.g. CCIP-LINK as a second
    /// `tokenAmount`) pass the delivered amount; the receiver approves it
    /// to the second-hop bridge for `feeAmount` and refunds the unspent
    /// leftover to `params.fallbackRecipient`.
    function executeRoute(
        address token,
        uint256 amount,
        address feeToken,
        uint256 feeAmount,
        RouteParams calldata params
    ) external payable {
        _onlyWhitelistedAdapter();
        address adapter = msg.sender;
        if (params.fallbackRecipient == address(0)) revert ZeroAddress();
        // Defense in depth: no current adapter delivers native principal
        // (Stargate wraps to WETH, AggLayer rejects native origins, CCIP /
        // Wormhole resolve to ERC20). Accepting `token == address(0)` would
        // let a misconfigured adapter credit the receiver's own ETH float
        // as route principal in the native-bridge branch of
        // `_callBridgeWithApprovals`.
        if (token == address(0)) revert NativePrincipalNotSupported();
        // The fee-token refund baseline is taken as
        // `balanceOf(feeToken) - feeAmount` at entry, which assumes the
        // delivered fee is the only `feeToken` accounted for. Allowing
        // `feeToken` to collide with either the delivered route token or
        // the next-hop bridge token would leave route principal in the
        // baseline (post-swap or no-swap respectively) and strand unspent
        // fee tokens in the receiver. Reject the collision up front.
        _requireFeeTokenIndependent(token, feeToken, feeAmount, params);

        uint256 preCallEthBalance = address(this).balance - msg.value;
        uint256 preCallFeeBalance = _preCallTokenBalance(feeToken, feeAmount);

        try this.routeExternal{ value: msg.value }(
            adapter, token, amount, feeToken, feeAmount, params
        ) returns (
            address bridgeToken, uint256 routeAmount, uint256 bridgeAmount
        ) {
            _refundExcessEth(params.fallbackRecipient, preCallEthBalance);
            if (feeToken != address(0)) {
                _refundExcessFeeToken(
                    feeToken, params.fallbackRecipient, preCallFeeBalance
                );
            }
            emit BridgeRouteExecuted(
                params.fallbackRecipient,
                token,
                bridgeToken,
                routeAmount,
                bridgeAmount,
                params.nextHop.bridgeContract
            );
        } catch {
            // Note: `routeExternal` is an external self-call, so any state
            // changes inside it (WETH unwrap, native-gas-drop sends,
            // approvals) revert with it. The catch block sees only the
            // originally-delivered token balance plus `msg.value`.
            uint256 fallbackAmount =
                _transferAvailable(token, params.fallbackRecipient, amount);
            _refundExcessEth(params.fallbackRecipient, preCallEthBalance);
            if (feeToken != address(0)) {
                _refundExcessFeeToken(
                    feeToken, params.fallbackRecipient, preCallFeeBalance
                );
            }
            emit BridgeRouteFallback(
                params.fallbackRecipient, token, fallbackAmount
            );
        }
    }

    /// @notice Execute a route while reserving native gas from a separately
    /// bridged wrapped-native token.
    /// @param nativeGasDropToken Token delivered by the adapter for the gas
    /// drop. Must be this chain's wrapped native token and must differ from
    /// both `token` and `feeToken`; use `RouteParams.nativeGasDrop` for
    /// primary-WETH drops.
    /// @param nativeGasDrop Amount of `nativeGasDropToken` to unwrap and send
    /// to `params.fallbackRecipient`, denominated in wei.
    function executeRouteWithNativeGasDropToken(
        address token,
        uint256 amount,
        address feeToken,
        uint256 feeAmount,
        address nativeGasDropToken,
        uint256 nativeGasDrop,
        RouteParams calldata params
    ) external payable {
        _onlyWhitelistedAdapter();
        address adapter = msg.sender;
        if (params.fallbackRecipient == address(0)) revert ZeroAddress();
        if (token == address(0)) revert NativePrincipalNotSupported();
        if (nativeGasDrop > 0 && params.nativeGasDrop > 0) {
            revert NativeGasDropTokenConflicts();
        }
        _requireFeeTokenIndependent(token, feeToken, feeAmount, params);

        uint256 preCallEthBalance = address(this).balance - msg.value;
        uint256 preCallFeeBalance = _preCallTokenBalance(feeToken, feeAmount);
        uint256 preCallGasDropBalance =
            _preCallTokenBalance(nativeGasDropToken, nativeGasDrop);

        try this.routeWithNativeGasDropTokenExternal{ value: msg.value }(
            adapter,
            token,
            amount,
            feeToken,
            feeAmount,
            nativeGasDropToken,
            nativeGasDrop,
            params
        ) returns (
            address bridgeToken, uint256 routeAmount, uint256 bridgeAmount
        ) {
            _refundExcessEth(params.fallbackRecipient, preCallEthBalance);
            if (feeToken != address(0)) {
                _refundExcessFeeToken(
                    feeToken, params.fallbackRecipient, preCallFeeBalance
                );
            }
            if (nativeGasDropToken != address(0)) {
                _refundExcessFeeToken(
                    nativeGasDropToken,
                    params.fallbackRecipient,
                    preCallGasDropBalance
                );
            }
            emit BridgeRouteExecuted(
                params.fallbackRecipient,
                token,
                bridgeToken,
                routeAmount,
                bridgeAmount,
                params.nextHop.bridgeContract
            );
        } catch {
            // See note in `executeRoute`: state inside the external
            // self-call reverts on failure, so no rewrap is possible here.
            uint256 fallbackAmount =
                _transferAvailable(token, params.fallbackRecipient, amount);
            _refundExcessEth(params.fallbackRecipient, preCallEthBalance);
            if (feeToken != address(0)) {
                _refundExcessFeeToken(
                    feeToken, params.fallbackRecipient, preCallFeeBalance
                );
            }
            if (nativeGasDropToken != address(0)) {
                _refundExcessFeeToken(
                    nativeGasDropToken,
                    params.fallbackRecipient,
                    preCallGasDropBalance
                );
            }
            emit BridgeRouteFallback(
                params.fallbackRecipient, token, fallbackAmount
            );
        }
    }

    function routeExternal(
        address adapter,
        address token,
        uint256 amount,
        address feeToken,
        uint256 feeAmount,
        RouteParams calldata params
    )
        external
        payable
        returns (address bridgeToken, uint256 routeAmount, uint256 bridgeAmount)
    {
        if (msg.sender != address(this)) revert OnlySelf();
        // Defense in depth: the cap is per-adapter, but a zero-amount
        // route with a nonzero cap could still consume hub native float
        // on a no-op second hop. Reject regardless of `params.minAmountIn`,
        // so a future adapter that fails to filter empty deliveries
        // cannot reach `_executeBridge`.
        if (amount == 0) revert ZeroAmountReceived();
        routeAmount = _reserveNativeGasDrop(
            token, amount, params.fallbackRecipient, params.nativeGasDrop
        );
        if (routeAmount < params.minAmountIn) {
            revert InsufficientInputAmount();
        }

        (bridgeToken, bridgeAmount) =
            _resolveBridgeTokenAmount(token, routeAmount, params);

        _executeBridge(
            adapter,
            params.nextHop.bridgeContract,
            params.nextHop.bridgeCalldata,
            bridgeToken,
            bridgeAmount,
            params.nextHop.amountOffset,
            params.nextHop.nativeValue,
            feeToken,
            feeAmount
        );
    }

    function routeWithNativeGasDropTokenExternal(
        address adapter,
        address token,
        uint256 amount,
        address feeToken,
        uint256 feeAmount,
        address nativeGasDropToken,
        uint256 nativeGasDrop,
        RouteParams calldata params
    )
        external
        payable
        returns (address bridgeToken, uint256 routeAmount, uint256 bridgeAmount)
    {
        if (msg.sender != address(this)) revert OnlySelf();
        if (amount == 0) revert ZeroAmountReceived();
        if (nativeGasDrop > 0 && params.nativeGasDrop > 0) {
            revert NativeGasDropTokenConflicts();
        }
        _sendNativeGasDropToken(
            token,
            feeToken,
            nativeGasDropToken,
            params.fallbackRecipient,
            nativeGasDrop
        );
        return this.routeExternal{ value: msg.value }(
            adapter, token, amount, feeToken, feeAmount, params
        );
    }

    function _onlyWhitelistedAdapter() internal view {
        if (!whitelistedAdapters[msg.sender]) {
            revert NotWhitelistedAdapter();
        }
    }

    /// @dev Reject same-token fee forwarding shapes that would strand
    /// unspent fee leftovers in the receiver. The fee-refund baseline
    /// uses `balanceOf(feeToken) - feeAmount`, which assumes the only
    /// delivered amount of `feeToken` is the fee itself; collisions
    /// with either the delivered route token or the next-hop bridge
    /// token inflate that baseline by the route principal.
    function _requireFeeTokenIndependent(
        address token,
        address feeToken,
        uint256 feeAmount,
        RouteParams calldata params
    ) internal pure {
        if (feeToken == address(0) || feeAmount == 0) return;
        if (
            feeToken == token || feeToken == params.nextHop.bridgeToken
        ) revert FeeTokenConflictsWithRouteToken();
    }

    function _resolveBridgeTokenAmount(
        address token,
        uint256 amount,
        RouteParams calldata params
    ) internal returns (address bridgeToken, uint256 bridgeAmount) {
        if (params.swapSteps.length == 0) {
            if (token != params.nextHop.bridgeToken) revert InvalidTokenPath();
            bridgeToken = token;
            bridgeAmount = amount;
        } else {
            if (params.swapSteps[0].tokenIn != token) {
                revert InvalidTokenPath();
            }
            if (
                params.swapSteps[params.swapSteps.length - 1].tokenOut
                    != params.nextHop.bridgeToken
            ) {
                revert InvalidTokenPath();
            }
            bridgeToken = params.nextHop.bridgeToken;
            bridgeAmount = _swapToBridgeToken(
                token,
                amount,
                params.swapSteps,
                params.minSwapOut,
                params.swapDeadline
            );
        }

        if (bridgeAmount < params.nextHop.minBridgeAmount) {
            revert InsufficientBridgeAmount();
        }
    }

    function _swapToBridgeToken(
        address token,
        uint256 amount,
        SwapStep[] calldata swapSteps,
        uint256 minSwapOut,
        uint256 swapDeadline
    ) internal returns (uint256 amountOut) {
        SafeTransferLib.safeApprove(token, address(msr), 0);
        SafeTransferLib.safeApprove(token, address(msr), amount);
        amountOut = msr.swap(
            swapSteps, amount, minSwapOut, address(this), swapDeadline
        );
        SafeTransferLib.safeApprove(token, address(msr), 0);
    }

    function _executeBridge(
        address adapter,
        address bridgeContract,
        bytes calldata bridgeCalldata,
        address bridgeToken,
        uint256 bridgeAmount,
        uint256 amountOffset,
        uint256 nativeValue,
        address feeToken,
        uint256 feeAmount
    ) internal {
        bytes memory patchedCalldata = _validateAndPatchCalldata(
            bridgeContract, bridgeCalldata, amountOffset, bridgeAmount
        );
        _checkHubNativeFeeCap(adapter, nativeValue);
        _callBridgeWithApprovals(
            bridgeContract,
            patchedCalldata,
            bridgeToken,
            bridgeAmount,
            nativeValue,
            feeToken,
            feeAmount
        );
    }

    function _reserveNativeGasDrop(
        address token,
        uint256 amount,
        address recipient,
        uint256 nativeGasDrop
    ) internal returns (uint256 routeAmount) {
        if (nativeGasDrop == 0) return amount;
        if (nativeGasDrop >= amount) revert NativeGasDropExceedsAmount();

        address wrappedNative = msr.wrappedNative();
        if (token != wrappedNative) {
            revert NativeGasDropTokenNotWrappedNative();
        }

        IWETHBridgeRouteReceiver(wrappedNative).withdraw(nativeGasDrop);
        SafeTransferLib.safeTransferETH(recipient, nativeGasDrop);

        return amount - nativeGasDrop;
    }

    function _sendNativeGasDropToken(
        address token,
        address feeToken,
        address nativeGasDropToken,
        address recipient,
        uint256 nativeGasDrop
    ) internal {
        if (nativeGasDrop == 0) return;

        address wrappedNative = msr.wrappedNative();
        if (nativeGasDropToken != wrappedNative) {
            revert NativeGasDropTokenNotWrappedNative();
        }
        if (nativeGasDropToken == token || nativeGasDropToken == feeToken) {
            revert NativeGasDropTokenConflicts();
        }

        IWETHBridgeRouteReceiver(wrappedNative).withdraw(nativeGasDrop);
        SafeTransferLib.safeTransferETH(recipient, nativeGasDrop);
    }

    function _validateAndPatchCalldata(
        address bridgeContract,
        bytes calldata bridgeCalldata,
        uint256 amountOffset,
        uint256 bridgeAmount
    ) internal view returns (bytes memory patchedCalldata) {
        allowlist.requireAllowedBridge(bridgeContract);

        patchedCalldata = bridgeCalldata;
        if (patchedCalldata.length < 4) revert BridgeCalldataTooShort();
        if (
            amountOffset < 4 || patchedCalldata.length < 36
                || amountOffset > patchedCalldata.length - 32
        ) {
            revert InvalidBridgeAmountOffset();
        }

        _patchUint256(patchedCalldata, amountOffset, bridgeAmount);
        allowlist.requireAllowedSelector(
            bridgeContract, _selector(patchedCalldata)
        );
    }

    /// @dev Permit the hub's own ETH balance to top up `nativeValue` past
    /// `msg.value`, but only up to the admin-set per-adapter cap. CCIP-shaped
    /// second hops rely on this because `ccipReceive` is non-payable. Hops
    /// that already provide sufficient `msg.value` (Stargate, Across,
    /// AggLayer) pay a `hubContribution` of zero and ignore the cap.
    /// Adapters whose source-side path did not pay a comparable fee (e.g.
    /// Across, DeBridge) default to a zero cap and cannot draw hub float.
    function _checkHubNativeFeeCap(
        address adapter,
        uint256 nativeValue
    ) internal view {
        uint256 hubContribution =
            msg.value < nativeValue ? nativeValue - msg.value : 0;
        uint256 cap = maxHubNativeFeeByAdapter[adapter];
        if (hubContribution > cap) {
            revert HubNativeFeeExceedsCap(hubContribution, cap);
        }
    }

    function _callBridgeWithApprovals(
        address bridgeContract,
        bytes memory patchedCalldata,
        address bridgeToken,
        uint256 bridgeAmount,
        uint256 nativeValue,
        address feeToken,
        uint256 feeAmount
    ) internal {
        uint256 balanceBefore = _setApprovals(
            bridgeContract, bridgeToken, bridgeAmount, feeToken, feeAmount
        );
        bool isNativeBridge = bridgeToken == address(0);
        uint256 callValue =
            isNativeBridge ? nativeValue + bridgeAmount : nativeValue;

        (bool success, bytes memory result) =
            bridgeContract.call{ value: callValue }(patchedCalldata);
        if (!success) revert BridgeFailed(result);

        uint256 balanceAfter = isNativeBridge
            ? address(this).balance
            : IERC20(bridgeToken).balanceOf(address(this));
        // For native bridges, the call also forwards `nativeValue` as the
        // relay fee. Require the bridge to consume the full `bridgeAmount
        // + nativeValue` so an unconsumed relay-fee remainder cannot mask
        // under-consumption of the principal. Bridges that refund any
        // portion of `nativeValue` will revert here and must be invoked
        // with an exact `nativeValue` quote.
        uint256 minConsumed =
            isNativeBridge ? bridgeAmount + nativeValue : bridgeAmount;
        if (balanceBefore - balanceAfter < minConsumed) {
            revert BridgeDidNotConsumeTokens();
        }

        _resetApprovals(bridgeContract, bridgeToken, feeToken);
    }

    /// @dev `_requireFeeTokenIndependent` already rejects
    /// `feeToken == bridgeToken`, so the bridge-token approval here
    /// covers only `bridgeAmount` and the fee-token approval is always
    /// a separate ERC20.
    function _setApprovals(
        address bridgeContract,
        address bridgeToken,
        uint256 bridgeAmount,
        address feeToken,
        uint256 feeAmount
    ) internal returns (uint256 balanceBefore) {
        if (bridgeToken == address(0)) {
            balanceBefore = address(this).balance;
        } else {
            balanceBefore = IERC20(bridgeToken).balanceOf(address(this));
            SafeTransferLib.safeApprove(bridgeToken, bridgeContract, 0);
            SafeTransferLib.safeApprove(
                bridgeToken, bridgeContract, bridgeAmount
            );
        }

        if (feeToken != address(0) && feeAmount > 0) {
            SafeTransferLib.safeApprove(feeToken, bridgeContract, 0);
            SafeTransferLib.safeApprove(feeToken, bridgeContract, feeAmount);
        }
    }

    function _resetApprovals(
        address bridgeContract,
        address bridgeToken,
        address feeToken
    ) internal {
        if (bridgeToken != address(0)) {
            SafeTransferLib.safeApprove(bridgeToken, bridgeContract, 0);
        }
        if (feeToken != address(0)) {
            SafeTransferLib.safeApprove(feeToken, bridgeContract, 0);
        }
    }

    function _patchUint256(
        bytes memory data,
        uint256 offset,
        uint256 value
    ) internal pure {
        assembly {
            mstore(add(add(data, 32), offset), value)
        }
    }

    function _selector(
        bytes memory data
    ) internal pure returns (bytes4 selector_) {
        assembly {
            selector_ := mload(add(data, 32))
        }
    }

    function _transferAvailable(
        address token,
        address to,
        uint256 amount
    ) internal returns (uint256 sent) {
        uint256 available = _tokenBalance(token, address(this));
        sent = available < amount ? available : amount;
        if (sent > 0) {
            SafeTransferLib.safeTransfer(token, to, sent);
        }
    }

    function _tokenBalance(
        address token,
        address account
    ) internal view returns (uint256) {
        (bool success, bytes memory data) =
            token.staticcall(abi.encodeWithSelector(0x70a08231, account));
        if (!success || data.length < 32) return 0;
        return abi.decode(data, (uint256));
    }

    function _preCallTokenBalance(
        address token,
        uint256 deliveredAmount
    ) internal view returns (uint256) {
        if (token == address(0)) return 0;
        uint256 balance = IERC20(token).balanceOf(address(this));
        return balance > deliveredAmount ? balance - deliveredAmount : 0;
    }

    function _refundExcessEth(
        address recipient,
        uint256 baseBalance
    ) internal {
        uint256 currentBalance = address(this).balance;
        if (currentBalance <= baseBalance) return;

        uint256 amount = currentBalance - baseBalance;
        (bool success,) = recipient.call{ value: amount }("");
        // Refund failure leaves the leftover on the receiver; admins must
        // recover it via `rescueETH`. We never revert the route on a
        // refund-call failure (recipient may be a non-payable contract).
        if (!success) emit RefundFailed(recipient, amount);
    }

    /// @dev Refund any feeToken delivered for this call but not consumed
    /// by the bridge. `baseBalance` is `balanceOf(this) - feeAmount` taken
    /// at entry to `executeRoute`, so `currentBalance - baseBalance` is
    /// exactly the unspent feeToken delivered for this route.
    function _refundExcessFeeToken(
        address feeToken,
        address recipient,
        uint256 baseBalance
    ) internal {
        uint256 currentBalance = IERC20(feeToken).balanceOf(address(this));
        if (currentBalance <= baseBalance) return;
        SafeTransferLib.safeTransfer(
            feeToken, recipient, currentBalance - baseBalance
        );
    }

    receive() external payable { }
}
