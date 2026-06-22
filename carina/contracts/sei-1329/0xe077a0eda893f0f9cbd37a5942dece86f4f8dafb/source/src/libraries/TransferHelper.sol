// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPermit2} from "permit2/src/interfaces/IPermit2.sol";
import {ISignatureTransfer} from "permit2/src/interfaces/ISignatureTransfer.sol";

library TransferHelper {
    using SafeERC20 for IERC20;

    /// @notice Thrown when native token transfer fails.
    error NativeTokenTransferFailed();

    enum TransferFromType {
        Erc20,
        Permit2
    }

    struct TransferFromData {
        IERC20 token;
        address account;
        uint256 amount;
        TransferFromType transferType;
        bytes transferData;
        bytes transferSignature;
        bytes32 witness;
        string witnessType;
    }

    struct TransferData {
        IERC20 token;
        address account;
        uint256 amount;
    }

    address internal constant NATIVE_TOKEN_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    string internal constant WITNESS_TYPE_STRING =
        "Order witness)Order(address receiver,uint64 validTo,address tokenIn,address tokenOut,uint256 amountIn,uint256 amountOut,uint256 minAmountOut,uint256 feeAmount)TokenPermissions(address token,uint256 amount)";

    /// @dev Transfers tokens from the specified accounts to the receiver.
    ///
    /// @param permit2 The Permit2 contract to use for PERMIT2 transfers.
    /// @param transfers An array of TransferFromData structs specifying the token, account, amount
    ///                  and transfer type (ERC20 or PERMIT2) for each transfer.
    /// @param receiver The address to receive the transferred tokens.
    function transferFromAccounts(IPermit2 permit2, TransferFromData[] calldata transfers, address receiver) internal {
        uint256 length = transfers.length;
        for (uint256 i = 0; i < length; ++i) {
            TransferFromData calldata transfer = transfers[i];

            if (transfer.transferType == TransferFromType.Erc20) {
                transfer.token.safeTransferFrom(transfer.account, receiver, transfer.amount);
            } else if (transfer.transferType == TransferFromType.Permit2) {
                ISignatureTransfer.PermitTransferFrom memory permit =
                    abi.decode(transfer.transferData, (ISignatureTransfer.PermitTransferFrom));
                ISignatureTransfer.SignatureTransferDetails memory transferDetails =
                    ISignatureTransfer.SignatureTransferDetails({to: receiver, requestedAmount: transfer.amount});

                permit2.permitWitnessTransferFrom(
                    permit,
                    transferDetails,
                    transfer.account,
                    transfer.witness,
                    transfer.witnessType,
                    transfer.transferSignature
                );
            }
        }
    }

    /// @dev Transfers tokens or ETH to the specified accounts.
    ///
    /// @param transfers An array of TransferData structs specifying the token, account, and amount to transfer.
    function transferToAccounts(TransferData[] memory transfers) internal {
        uint256 length = transfers.length;
        for (uint256 i = 0; i < length; ++i) {
            TransferData memory transfer = transfers[i];

            if (transfer.amount == 0) {
                continue;
            }

            if (address(transfer.token) == NATIVE_TOKEN_ADDRESS) {
                // Note: this could potentially fail if the receiver is a contract with a fallback function that uses too much gas.
                // However, this is unlikely to be an issue in practice since most contracts should be able to receive ETH.
                // If this does become an issue, we could blacklist the receiver in the off-chain service.
                (bool success,) = payable(transfer.account).call{value: transfer.amount}("");
                if (!success) revert NativeTokenTransferFailed();
            } else {
                transfer.token.safeTransfer(transfer.account, transfer.amount);
            }
        }
    }
}
