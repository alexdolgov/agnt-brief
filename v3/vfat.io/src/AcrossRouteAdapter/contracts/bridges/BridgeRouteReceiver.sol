// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { GuardianAdmin } from "contracts/base/GuardianAdmin.sol";
import { MultiSwapRouter } from "contracts/MultiSwapRouter.sol";
import { IRouterAllowlist } from "contracts/interfaces/IRouterAllowlist.sol";

interface IWETHBridgeRouteReceiver {
    function deposit() external payable;
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
    error InsufficientInputAmount();
    error InsufficientBridgeAmount();
    error BridgeCalldataTooShort();
    error InvalidBridgeAmountOffset();
    error HubNativeFeeExceedsCap(uint256 hubContribution, uint256 cap);
    error BridgeDidNotConsumeTokens();
    error BridgeFailed(bytes reason);

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
        MultiSwapRouter.SwapStep[] swapSteps;
        uint256 minSwapOut;
        NextHopParams nextHop;
    }

    MultiSwapRouter public immutable msr;
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
        msr = MultiSwapRouter(payable(msr_));
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
        address to
    ) external onlyAdmin {
        SafeTransferLib.safeTransferETH(to, address(this).balance);
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

        uint256 preCallEthBalance = address(this).balance - msg.value;
        uint256 preCallFeeBalance = feeToken == address(0)
            ? 0
            : IERC20(feeToken).balanceOf(address(this)) - feeAmount;

        try this.routeExternal{ value: msg.value }(
            adapter, token, amount, feeToken, feeAmount, params
        ) returns (address bridgeToken, uint256 bridgeAmount) {
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
                amount,
                bridgeAmount,
                params.nextHop.bridgeContract
            );
        } catch {
            _rewrapNativeFallbackToken(
                token, amount, params.nextHop.bridgeToken, preCallEthBalance
            );
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

    function routeExternal(
        address adapter,
        address token,
        uint256 amount,
        address feeToken,
        uint256 feeAmount,
        RouteParams calldata params
    ) external payable returns (address bridgeToken, uint256 bridgeAmount) {
        if (msg.sender != address(this)) revert OnlySelf();
        // Defense in depth: the cap is per-adapter, but a zero-amount
        // route with a nonzero cap could still consume hub native float
        // on a no-op second hop. Reject regardless of `params.minAmountIn`,
        // so a future adapter that fails to filter empty deliveries
        // cannot reach `_executeBridge`.
        if (amount == 0) revert ZeroAmountReceived();
        if (amount < params.minAmountIn) revert InsufficientInputAmount();

        (bridgeToken, bridgeAmount) =
            _resolveBridgeTokenAmount(token, amount, params);

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

    function _onlyWhitelistedAdapter() internal view {
        if (!whitelistedAdapters[msg.sender]) {
            revert NotWhitelistedAdapter();
        }
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
                token, amount, params.swapSteps, params.minSwapOut
            );
        }

        if (bridgeAmount < params.nextHop.minBridgeAmount) {
            revert InsufficientBridgeAmount();
        }
    }

    function _swapToBridgeToken(
        address token,
        uint256 amount,
        MultiSwapRouter.SwapStep[] calldata swapSteps,
        uint256 minSwapOut
    ) internal returns (uint256 amountOut) {
        SafeTransferLib.safeApprove(token, address(msr), 0);
        SafeTransferLib.safeApprove(token, address(msr), amount);
        amountOut = msr.swap(
            swapSteps, amount, minSwapOut, address(this), block.timestamp
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
        uint256 callValue = bridgeToken == address(0)
            ? nativeValue + bridgeAmount
            : nativeValue;

        (bool success, bytes memory result) =
            bridgeContract.call{ value: callValue }(patchedCalldata);
        if (!success) revert BridgeFailed(result);

        uint256 balanceAfter = bridgeToken == address(0)
            ? address(this).balance
            : IERC20(bridgeToken).balanceOf(address(this));
        if (balanceBefore - balanceAfter < bridgeAmount) {
            revert BridgeDidNotConsumeTokens();
        }

        _resetApprovals(bridgeContract, bridgeToken, feeToken);
    }

    function _setApprovals(
        address bridgeContract,
        address bridgeToken,
        uint256 bridgeAmount,
        address feeToken,
        uint256 feeAmount
    ) internal returns (uint256 balanceBefore) {
        bool hasFee = feeToken != address(0) && feeAmount > 0;
        bool feeIsBridgeToken = hasFee && feeToken == bridgeToken;

        if (bridgeToken == address(0)) {
            balanceBefore = address(this).balance;
        } else {
            balanceBefore = IERC20(bridgeToken).balanceOf(address(this));
            SafeTransferLib.safeApprove(bridgeToken, bridgeContract, 0);
            SafeTransferLib.safeApprove(
                bridgeToken,
                bridgeContract,
                feeIsBridgeToken ? bridgeAmount + feeAmount : bridgeAmount
            );
        }

        if (hasFee && !feeIsBridgeToken) {
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
        if (feeToken != address(0) && feeToken != bridgeToken) {
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

    function _rewrapNativeFallbackToken(
        address token,
        uint256 maxAmount,
        address bridgeToken,
        uint256 baseBalance
    ) internal {
        if (bridgeToken != address(0)) return;

        address wrappedNative = msr.wrappedNative();
        if (token != wrappedNative) return;

        uint256 currentBalance = address(this).balance;
        if (currentBalance <= baseBalance + msg.value) return;

        uint256 wrapAmount = currentBalance - baseBalance - msg.value;
        if (wrapAmount > maxAmount) {
            wrapAmount = maxAmount;
        }
        if (wrapAmount == 0) return;

        IWETHBridgeRouteReceiver(wrappedNative).deposit{ value: wrapAmount }();
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

    function _refundExcessEth(
        address recipient,
        uint256 baseBalance
    ) internal {
        uint256 currentBalance = address(this).balance;
        if (currentBalance <= baseBalance) return;

        (bool success,) =
            recipient.call{ value: currentBalance - baseBalance }("");
        success;
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
