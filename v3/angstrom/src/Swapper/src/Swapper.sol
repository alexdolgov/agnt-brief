// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { ERC20 } from "solady/tokens/ERC20.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";
import { ISwapper } from "./interfaces/ISwapper.sol";
import { CallWithValue } from "./types/CallWithValue.sol";
import { Errors } from "./Errors.sol";

/// @notice A simple contract used to support arbitrary swap calls from a single Vault contract. Used to separate
/// concerns so that this contract -- rather than the vault itself -- performs arbitrary calls to arbitrary external
/// contracts as part of the swapping process.
contract Swapper is ISwapper {
    /// @inheritdoc ISwapper
    address public immutable VAULT;

    constructor(
        // forge-lint: disable-next-line(mixed-case-variable)
        address _VAULT
    ) {
        require(_VAULT != address(0), Errors.ZeroAddressDisallowed());
        VAULT = _VAULT;
    }

    /// @inheritdoc ISwapper
    function executeSwap(
        ERC20,
        /*assetIn*/
        uint256,
        /*amountIn*/
        ERC20 assetOut,
        bytes calldata params
    ) external returns (uint256 amountOut) {
        require(msg.sender == VAULT, OnlyVault());

        // perform arbitrary calls
        CallWithValue[] memory calls = abi.decode(params, (CallWithValue[]));
        for (uint256 i = 0; i < calls.length; i++) {
            // slither-disable-next-line calls-loop
            (bool success,) = calls[i].target.call{ value: calls[i].value }(calls[i].callData);
            require(success, CallFailed());
        }

        uint256 assetOutBalance = assetOut.balanceOf(address(this));
        SafeTransferLib.safeTransfer({ token: address(assetOut), to: VAULT, amount: assetOutBalance });

        return assetOutBalance;
    }

    /// @dev Allows this contract to receive native assets.
    receive() external payable { }
}
