// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { GuardianAdmin } from "contracts/base/GuardianAdmin.sol";
import { MultiSwapRouter } from "contracts/MultiSwapRouter.sol";

/// @title BridgeSwapReceiver
/// @author vfat.tools
/// @notice Receives bridged tokens from whitelisted adapters and swaps them
/// via MultiSwapRouter. Bridge-specific callback handling is delegated to
/// per-bridge adapter contracts (e.g. StargateSwapAdapter).
contract BridgeSwapReceiver is GuardianAdmin {
    /// ERRORS ///

    error NotWhitelistedAdapter();
    error ZeroAddress();

    /// EVENTS ///

    event BridgeSwapExecuted(
        address indexed recipient,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut
    );

    event BridgeSwapFallback(
        address indexed recipient,
        address token,
        uint256 amount
    );

    event WhitelistedAdapterSet(address adapter, bool whitelisted);

    /// STORAGE ///

    MultiSwapRouter public immutable msr;

    mapping(address => bool) public whitelistedAdapters;
    address[] private _adapters;
    mapping(address => uint256) private _adapterIndexPlusOne;

    /// CONSTRUCTOR ///

    /// @param msr_ MultiSwapRouter address
    /// @param admin_ Admin address for configuration
    constructor(
        address msr_,
        address admin_,
        address guardian_
    ) GuardianAdmin(admin_, guardian_) {
        if (msr_ == address(0)) revert ZeroAddress();
        msr = MultiSwapRouter(payable(msr_));
    }

    /// PUBLIC VIEW ///

    /// @notice Enumerate the currently-allowed adapters.
    function adapters() external view returns (address[] memory) {
        return _adapters;
    }

    /// ADMIN FUNCTIONS ///

    /// @notice Whitelist or remove a bridge adapter
    /// @param adapter Bridge adapter address
    /// @param whitelisted Whether the adapter is whitelisted
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

    /// @notice Rescue tokens stuck in this contract
    function rescueTokens(
        address token,
        address to,
        uint256 amount
    ) external onlyAdmin {
        SafeTransferLib.safeTransfer(token, to, amount);
    }

    /// @notice Rescue ETH stuck in this contract
    function rescueETH(address to) external onlyAdmin {
        SafeTransferLib.safeTransferETH(to, address(this).balance);
    }

    /// ADAPTER ENTRY POINT ///

    /// @notice Execute a swap with bridged tokens. Callable only by
    /// whitelisted adapters which have already transferred tokens here.
    function executeSwap(
        address token,
        uint256 amount,
        address recipient,
        MultiSwapRouter.SwapStep[] calldata swapSteps,
        uint256 minAmountOut
    ) external {
        _onlyWhitelistedAdapter();
        _swapOrFallback(token, amount, recipient, swapSteps, minAmountOut);
    }

    /// INTERNAL ///

    function _onlyWhitelistedAdapter() internal view {
        if (!whitelistedAdapters[msg.sender]) {
            revert NotWhitelistedAdapter();
        }
    }

    /// @dev Approve MSR, attempt swap, fall back to direct transfer on failure
    function _swapOrFallback(
        address token,
        uint256 amount,
        address recipient,
        MultiSwapRouter.SwapStep[] memory swapSteps,
        uint256 minAmountOut
    ) internal {
        SafeTransferLib.safeApprove(token, address(msr), 0);
        SafeTransferLib.safeApprove(token, address(msr), amount);

        try msr.swap(
            swapSteps, amount, minAmountOut, recipient, block.timestamp
        ) returns (uint256 amountOut) {
            SafeTransferLib.safeApprove(token, address(msr), 0);
            address tokenOut = swapSteps[swapSteps.length - 1].tokenOut;
            emit BridgeSwapExecuted(
                recipient, token, tokenOut, amount, amountOut
            );
        } catch {
            SafeTransferLib.safeApprove(token, address(msr), 0);
            uint256 fallbackAmount =
                _transferAvailable(token, recipient, amount);
            emit BridgeSwapFallback(recipient, token, fallbackAmount);
        }
    }

    function _tokenBalance(
        address token,
        address account
    ) internal view returns (uint256) {
        (bool success, bytes memory data) = token.staticcall(
            abi.encodeWithSelector(0x70a08231, account)
        );
        if (!success || data.length < 32) return 0;
        return abi.decode(data, (uint256));
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
}
