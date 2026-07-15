// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.28;

import { Lock } from "@uniswap-universal-router-2/contracts/base/Lock.sol";
import { Permit2Payments } from "@uniswap-universal-router-2/contracts/modules/Permit2Payments.sol";
import { BytesLib } from "@uniswap-universal-router-2/contracts/modules/uniswap/v3/BytesLib.sol";
import { ActionConstants } from "@uniswap/v4-periphery/src/libraries/ActionConstants.sol";
import { CalldataDecoder } from "@uniswap/v4-periphery/src/libraries/CalldataDecoder.sol";
import { IAllowanceTransfer } from "permit2/src/interfaces/IAllowanceTransfer.sol";

import "../UniPoolTypes.sol";
import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";
import { Commands } from "./Commands.sol";
import { SweepModule } from "./SweepModule.sol";
import { UniPoolModule } from "./UniPoolModule.sol";

/**
 * @title Dispatcher for the UniPool Router
 * @notice Abstract contract responsible for dispatching commands in the UniPool Router.
 */
abstract contract Dispatcher is Lock, Permit2Payments, UniPoolModule, SweepModule {
    using BytesLib for bytes;
    using CalldataDecoder for bytes;

    /**
     * @notice Decodes and executes the given command with the given inputs.
     * @param commandType The command byte indicating the type of command to execute.
     * @param inputs The encoded inputs for the commands.
     * @return success_ Indicates whether the command executed successfully.
     * @return output_ The outputs or error messages from the command.
     */
    function _dispatch(bytes1 commandType, bytes calldata inputs)
        internal
        returns (bool success_, bytes memory output_)
    {
        uint256 command = uint8(commandType & Commands.COMMAND_TYPE_MASK);
        success_ = true;

        if (command < Commands.FIRST_IF_BOUNDARY) {
            if (command == Commands.UNIPOOL_SWAP_EXACT_IN) {
                (uint128 amountIn, uint128 amountOutMin, address[] memory path, address to, PaymentType payment) =
                    abi.decode(inputs, (uint128, uint128, address[], address, PaymentType));

                address payer = _getPayer(payment);
                _swapExactTokensForTokens(amountIn, amountOutMin, path, _map(to), payment, payer);
            } else if (command == Commands.UNIPOOL_SWAP_EXACT_OUT) {
                (uint128 amountOut, uint128 amountInMax, address[] memory path, address to, PaymentType payment) =
                    abi.decode(inputs, (uint128, uint128, address[], address, PaymentType));

                address payer = _getPayer(payment);
                _swapTokensForExactTokens(amountOut, amountInMax, path, _map(to), payment, payer);
            } else if (command == Commands.UNIPOOL_ADD_LIQUIDITY) {
                (AddLiquidityParams memory params, PaymentType payment) =
                    abi.decode(inputs, (AddLiquidityParams, PaymentType));

                params.to = _map(params.to);
                address payer = _getPayer(payment);
                _addLiquidity(params, payment, payer);
            } else if (command == Commands.UNIPOOL_REMOVE_LIQUIDITY) {
                (RemoveLiquidityParams memory params, PaymentType payment) =
                    abi.decode(inputs, (RemoveLiquidityParams, PaymentType));

                params.to = _map(params.to);
                address payer = _getPayer(payment);
                _removeLiquidity(params, payment, payer);
            } else if (command == Commands.UNIPOOL_CREATE_PAIR) {
                (address tokenA, address tokenB) = abi.decode(inputs, (address, address));
                _createPair(tokenA, tokenB);
            }
        } else if (command < Commands.SECOND_IF_BOUNDARY) {
            if (command == Commands.UNIPOOL_BORROW_SINGLE) {
                (address pair, BorrowParams memory params, PaymentType payment) =
                    abi.decode(inputs, (address, BorrowParams, PaymentType));

                params.to = _map(params.to);
                address payer = _getPayer(payment);
                params.callbackData = abi.encode(payment, payer); // will be retrieved in the callback
                IUniPoolPair(pair).borrow(params);
            } else if (command == Commands.UNIPOOL_BORROW_MULTIPLE) {
                (address pair, BorrowMultipleParams memory params, PaymentType payment) =
                    abi.decode(inputs, (address, BorrowMultipleParams, PaymentType));

                params.to = _map(params.to);
                address payer = _getPayer(payment);
                params.callbackData = abi.encode(payment, payer); // will be retrieved in the callback
                IUniPoolPair(pair).borrow(params);
            } else if (command == Commands.UNIPOOL_REPAY) {
                (address pair, RepayParams memory params, PaymentType payment) =
                    abi.decode(inputs, (address, RepayParams, PaymentType));
                address payer = _getPayer(payment);
                params.callbackData = abi.encode(payment, payer); // will be retrieved in the callback
                (success_,) = IUniPoolPair(pair).repay(params);
                if (!success_) {
                    output_ = abi.encodePacked(IUniPoolPair.UniPoolPairLoanLiquidated.selector);
                }
            } else if (command == Commands.UNIPOOL_TRANSFER_LOAN) {
                (
                    address pair,
                    LoanId loanId,
                    uint256 userIndex,
                    address to,
                    uint40 deadline,
                    bytes memory delegationSignature
                ) = abi.decode(inputs, (address, LoanId, uint256, address, uint40, bytes));
                IUniPoolPair(pair).transferLoan(loanId, userIndex, _map(to), deadline, delegationSignature);
            } else if (command == Commands.UNIPOOL_LIQUIDATE) {
                (address pair) = abi.decode(inputs, (address));
                IUniPoolPair(pair).liquidate();
            } else if (command == Commands.UNIPOOL_DISTRIBUTE_PROTOCOL_FEES) {
                (address pair) = abi.decode(inputs, (address));
                IUniPoolPair(pair).distributeProtocolFees();
            }
        } else {
            if (command == Commands.SWEEP) {
                (address token, address recipient, uint256 amountOutMin, uint256 amountOutThreshold) =
                    abi.decode(inputs, (address, address, uint256, uint256));

                _sweep(token, _map(recipient), amountOutMin, amountOutThreshold);
            } else if (command == Commands.PERMIT2_PERMIT) {
                IAllowanceTransfer.PermitSingle calldata permitSingle;
                assembly {
                    permitSingle := inputs.offset
                }
                bytes calldata data = inputs.toBytes(6); // struct above takes the first 6 slots
                (success_, output_) = address(PERMIT2)
                    .call(
                        abi.encodeWithSignature(
                            "permit(address,((address,uint160,uint48,uint48),address,uint256),bytes)",
                            _msgSender(),
                            permitSingle,
                            data
                        )
                    );
            } else if (command == Commands.PERMIT2_PERMIT_BATCH) {
                IAllowanceTransfer.PermitBatch calldata permitBatch;
                assembly {
                    // this is a variable length struct, so calldataload(inputs.offset) contains the
                    // offset from inputs.offset at which the struct begins
                    permitBatch := add(inputs.offset, calldataload(inputs.offset))
                }
                bytes calldata data = inputs.toBytes(1);
                (success_, output_) = address(PERMIT2)
                    .call(
                        abi.encodeWithSignature(
                            "permit(address,((address,uint160,uint48,uint48)[],address,uint256),bytes)",
                            _msgSender(),
                            permitBatch,
                            data
                        )
                    );
            } else if (command == Commands.PERMIT2_TRANSFER_FROM) {
                (address token, address recipient, uint160 amount) = abi.decode(inputs, (address, address, uint160));
                permit2TransferFrom(token, _msgSender(), _map(recipient), amount);
            } else if (command == Commands.PERMIT2_TRANSFER_FROM_BATCH) {
                IAllowanceTransfer.AllowanceTransferDetails[] calldata batchDetails;
                (uint256 length, uint256 offset) = inputs.toLengthOffset(0);
                assembly {
                    batchDetails.length := length
                    batchDetails.offset := offset
                }
                permit2TransferFrom(batchDetails, _msgSender());
            } else if (command == Commands.WRAP_ETH) {
                (address recipient, uint256 amount) = abi.decode(inputs, (address, uint256));

                wrapETH(_map(recipient), amount);
            } else if (command == Commands.UNWRAP_ETH) {
                (address recipient, uint256 amountMinimum) = abi.decode(inputs, (address, uint256));

                unwrapWETH9(_map(recipient), amountMinimum);
            } else if (command == Commands.TRANSFER) {
                (address token, address recipient, uint256 value) = abi.decode(inputs, (address, address, uint256));
                pay(token, _map(recipient), value);
            }
        }
    }

    /**
     * @notice Function to be used instead of msg.sender, as the contract performs self-reentrancy and at
     * times msg.sender == address(this). Instead msgSender() returns the initiator of the lock.
     * @return msgSender_ The address of the original caller that initiated the transaction.
     */
    function _msgSender() internal view returns (address msgSender_) {
        return _getLocker();
    }

    /**
     * @notice Function to infer the payer address from the payment type.
     * @param payment The payment type to use.
     * @return payer_ The address of the payer (either the locker address or the router address).
     */
    function _getPayer(PaymentType payment) internal view returns (address payer_) {
        payer_ = payment == PaymentType.Transfer ? address(this) : _getLocker();
    }

    /**
     * @notice Calculates the recipient address for a command.
     * @param recipient The recipient or recipient-flag for the command.
     * @return recipient_ The resultant recipient for the command.
     */
    function _map(address recipient) internal view returns (address recipient_) {
        if (recipient == ActionConstants.MSG_SENDER) {
            return _getLocker();
        } else if (recipient == ActionConstants.ADDRESS_THIS) {
            return address(this);
        } else {
            return recipient;
        }
    }
}
