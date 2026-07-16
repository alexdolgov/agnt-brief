// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

struct SwapParams {
    // The executor contract to use
    uint8 executorIndex;
    // The token to sell
    IERC20 tokenIn;
    // The token to buy
    IERC20 tokenOut;
    // The amount to sell
    uint256 amountIn;
    // The minimum amount receive
    uint256 amountOutMin;
    // The beneficiary of the swap
    address receiver;
    // The address will receive any dust from swap(s)
    address refundAddress;
    // The aggregator's call that will perform the swap.
    // Check `SwapAggregator.EXECUTOR` to see which swapper/aggregator contract will be called.
    bytes callData;
}

/// @title Component delegate calls wrapper
library SwapAggregatorDelegateCalls {
    using Address for address;

    function delegateSwap(
        SwapAggregator aggregator_,
        SwapParams memory swapParams_
    ) internal returns (uint256 _amountIn, uint256 _amountOut) {
        bytes memory _ret = address(aggregator_).functionDelegateCall(
            abi.encodeCall(SwapAggregator.swap, (swapParams_))
        );
        return abi.decode(_ret, (uint256, uint256));
    }
}

/// @title Swap aggregator component
/// @dev This contract is meant to be called only by the strategies as a way to extend their capabilities
contract SwapAggregator {
    using Address for address;
    using SafeERC20 for IERC20;

    /// @notice The swapper contract (e.g., aggregator for 1-inch, AllowanceHolder for Matcha/0x, etc).
    /// @dev To avoid misuse of the `callData`, the swap aggregator mustn't allow more than one swap in the same call.
    /// Otherwise the user could transfer funds out bypassing the strategies safe-guards.
    /// On top of the swap call itself, we perform validations using metadata to ensure the call is executing the intended swap.
    address public immutable EXECUTOR_0;
    address public immutable EXECUTOR_1;
    address public immutable EXECUTOR_2;
    address public immutable EXECUTOR_3;
    address public immutable EXECUTOR_4;
    address public immutable EXECUTOR_5;
    address public immutable EXECUTOR_6;

    error NoCallData();
    error SwapWasNotExecuted();
    error AddressIsNull();
    error InvalidExecutor();
    error AmountOutTooLow(uint256 min, uint256 actual);

    constructor(
        address executor0_,
        address executor1_,
        address executor2_,
        address executor3_,
        address executor4_,
        address executor5_,
        address executor6_
    ) {
        if (executor0_ == address(0)) revert AddressIsNull();

        EXECUTOR_0 = executor0_;
        EXECUTOR_1 = executor1_;
        EXECUTOR_2 = executor2_;
        EXECUTOR_3 = executor3_;
        EXECUTOR_4 = executor4_;
        EXECUTOR_5 = executor5_;
        EXECUTOR_6 = executor6_;
    }

    /// @notice Execute a swap
    /// The actual swap must correspond the metadata set in parameters otherwise the call will revert.
    /// @param swapParams_ The swap params
    function swap(SwapParams calldata swapParams_) external returns (uint256 _amountIn, uint256 _amountOut) {
        if (swapParams_.callData.length == 0) revert NoCallData();
        if (swapParams_.receiver == address(0)) revert AddressIsNull();

        address _executor = getExecutor(swapParams_.executorIndex);

        uint256 _inBefore = swapParams_.tokenIn.balanceOf(address(this));
        uint256 _outBefore = swapParams_.tokenOut.balanceOf(swapParams_.receiver);

        swapParams_.tokenIn.forceApprove(_executor, swapParams_.amountIn);
        _executor.functionCall(swapParams_.callData);

        uint256 _inAfter = swapParams_.tokenIn.balanceOf(address(this));
        uint256 _outAfter = swapParams_.tokenOut.balanceOf(swapParams_.receiver);

        if (_inAfter >= _inBefore || _inBefore - _inAfter != swapParams_.amountIn || _outAfter <= _outBefore)
            revert SwapWasNotExecuted();

        _amountIn = _inBefore - _inAfter;
        _amountOut = _outAfter - _outBefore;

        if (_amountOut < swapParams_.amountOutMin) revert AmountOutTooLow(swapParams_.amountOutMin, _amountOut);
    }

    function getExecutor(uint256 index_) public view returns (address _executor) {
        if (index_ == 0) _executor = EXECUTOR_0;
        else if (index_ == 1) _executor = EXECUTOR_1;
        else if (index_ == 2) _executor = EXECUTOR_2;
        else if (index_ == 3) _executor = EXECUTOR_3;
        else if (index_ == 4) _executor = EXECUTOR_4;
        else if (index_ == 5) _executor = EXECUTOR_5;
        else if (index_ == 6) _executor = EXECUTOR_6;

        if (_executor == address(0)) revert InvalidExecutor();
    }
}
