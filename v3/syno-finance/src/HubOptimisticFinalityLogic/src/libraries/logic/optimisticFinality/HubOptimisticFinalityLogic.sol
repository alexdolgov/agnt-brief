// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IWormholeTunnel} from "../../../interfaces/IWormholeTunnel.sol";
import {ISpoke} from "../../../interfaces/ISpoke.sol";
import {IHub} from "../../../interfaces/IHub.sol";
import {IWETH} from "@wormhole/interfaces/IWETH.sol";

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {HubSpokeStructs} from "../../../contracts/HubSpokeStructs.sol";
import {HubSpokeEvents} from "../../../contracts/HubSpokeEvents.sol";
import "@wormhole/Utils.sol";

import {HubAccountingLogic} from "../accounting/HubAccountingLogic.sol";
import {InterestLogic} from "../InterestLogic.sol";
import {CommonOptimisticFinalityLogic} from "./CommonOptimisticFinalityLogic.sol";

library HubOptimisticFinalityLogic {
    using SafeERC20 for IERC20;

    // events need to be in both library and contract to be picked up
    // see: https://ethereum.stackexchange.com/questions/11137/watching-events-defined-in-libraries
    event HubCreditCreated(uint16 indexed chainId, bytes32 indexed user, bytes32 indexed asset, uint256 amount, uint256 nonce);
    event HubCreditLost(uint16 indexed chainId, bytes32 indexed user, bytes32 indexed asset, uint256 amount, uint256 nonce);
    event HubCreditFinalized(uint16 indexed chainId, uint256 nonce);
    event HubCreditRefundable(uint16 indexed chainId, bytes32 indexed user, bytes32 indexed asset, uint256 amount, uint256 nonce);
    // end events from HubSpokeEvents

    error CreditAlreadyFinalized();
    error CreditLimitExceeded();
    error FundsAlreadyReleased();
    error InsufficientFunds();
    error InsufficientMsgValue();
    error InsufficientSpokeBalance();
    error InvalidAction();
    error InvalidAmount();
    error InvalidCostForReturnDeliveryLength();
    error InvalidForwardedAmount();
    error InvalidReleaseFundsPayload();
    error TransactionLimitExceeded();
    error UnexpectedTokenReceived();

    function SPOKE_CONFIRM_MESSAGE_GAS_LIMIT() public pure returns (uint256) {
        return 250_000;
    }

    function SPOKE_FINALIZE_MESSAGE_GAS_LIMIT() public pure returns (uint256) {
        return 250_000;
    }

    function SPOKE_RELEASE_FUNDS_GAS_LIMIT() public pure returns (uint256) {
        return 300_000;
    }

    function SPOKE_TOP_UP_GAS_LIMIT() public pure returns (uint256) {
        return 500_000;
    }

    function getInstantActionCosts(
        HubSpokeStructs.HubState storage _state,
        uint16 spokeChainId,
        HubSpokeStructs.Action _action
    ) public view returns (uint256[] memory) {
        uint256[] memory costs;
        if (CommonOptimisticFinalityLogic.getActionDirection(_action) == HubSpokeStructs.ActionDirection.Inbound) {
            costs = new uint256[](2);
            // the cost for sending back the credit confirmation message
            costs[0] = _state.wormholeTunnel.getMessageCost(spokeChainId, SPOKE_CONFIRM_MESSAGE_GAS_LIMIT(), 0, false);
            // the cost for sending back the credit finalization message
            costs[1] = _state.wormholeTunnel.getMessageCost(spokeChainId, SPOKE_FINALIZE_MESSAGE_GAS_LIMIT(), 0, false);
        } else {
            costs = new uint256[](1);
            // the cost for sending the release funds message plus
            // the cost to send the token topUp in a finalized message
            // same gas limit
            costs[0] = _state.wormholeTunnel.getMessageCost(spokeChainId, SPOKE_RELEASE_FUNDS_GAS_LIMIT(), 0, false) + _state.wormholeTunnel.getMessageCost(spokeChainId, SPOKE_TOP_UP_GAS_LIMIT(), 0, true);
        }
        return costs;
    }

    function requireNoTokenSent(IERC20 asset, uint256 amount) public pure {
        if (asset != IERC20(address(0)) || amount > 0) {
            revert UnexpectedTokenReceived();
        }
    }

    function sendInstantActionResponse(
        HubSpokeStructs.HubState storage _state,
        HubSpokeStructs.InstantActionPayload memory iap,
        IWormholeTunnel.MessageSource memory source
    ) public {
        HubSpokeStructs.HubSpokeBalances memory balances = _state.spokeStates[source.chainId].balances[iap.token];

        if (CommonOptimisticFinalityLogic.getActionDirection(iap.action) == HubSpokeStructs.ActionDirection.Inbound) {
            _state.spokeStates[source.chainId].credits[iap.user][iap.nonce] = HubSpokeStructs.Credit({
                user: iap.user,
                token: iap.token,
                creditedAmount: iap.amount,
                forwardedAmount: 0, // this is changed in finalizeCredit and is the amount of tokens over the Spoke custody limit
                nonce: iap.nonce,
                createdAt: block.timestamp,
                updatedAt: block.timestamp,
                status: HubSpokeStructs.CreditStatus.CONFIRMED
            });
            emit HubCreditCreated(source.chainId, iap.user, iap.token, iap.amount, iap.nonce);

            balances.unfinalized += iap.amount;

            setSpokeBalances(
                _state,
                source.chainId,
                iap.token,
                balances
            );

            IWormholeTunnel.TunnelMessage memory message;
            message.source = IWormholeTunnel.MessageSource(_state.wormholeTunnel.chainId(), toWormholeFormat(address(this)), source.refundRecipient);
            message.target = IWormholeTunnel.MessageTarget({
                chainId: source.chainId,
                recipient: _state.spokeStates[source.chainId].spoke,
                selector: ISpoke.confirmCredit.selector,
                payload: abi.encode(HubSpokeStructs.ConfirmCreditPayload({
                    credit: _state.spokeStates[source.chainId].credits[iap.user][iap.nonce]
                }))
            });
            message.finality = IWormholeTunnel.MessageFinality.INSTANT;

            uint256 confirmCreditCost = _state.wormholeTunnel.getMessageCost(source.chainId, SPOKE_CONFIRM_MESSAGE_GAS_LIMIT(), 0, false);
            if (msg.value < confirmCreditCost) {
                revert InsufficientMsgValue();
            }
            // TODO: support non-EVM execution params (gas limit)
            _state.wormholeTunnel.sendEvmMessage{value: confirmCreditCost}(message, SPOKE_CONFIRM_MESSAGE_GAS_LIMIT());
        } else {
            if (balances.finalized < iap.amount) {
                revert InsufficientSpokeBalance();
            }

            // reduce the tracked Spoke balance of the token
            // this prevents authorizing release of non-existent funds in the future
            balances.finalized -= iap.amount;
            setSpokeBalances(
                _state,
                source.chainId,
                iap.token,
                balances
            );

            IWormholeTunnel.TunnelMessage memory message;
            message.source = IWormholeTunnel.MessageSource(_state.wormholeTunnel.chainId(), toWormholeFormat(address(this)), source.refundRecipient);
            message.target = IWormholeTunnel.MessageTarget({
                chainId: source.chainId,
                recipient: _state.spokeStates[source.chainId].spoke,
                selector: ISpoke.releaseFunds.selector,
                payload: abi.encode(HubSpokeStructs.ReleaseFundsPayload({
                    user: iap.user,
                    token: iap.token,
                    amount: iap.amount,
                    nonce: iap.nonce,
                    unwrapWeth: iap.action == HubSpokeStructs.Action.WithdrawNative || iap.action == HubSpokeStructs.Action.BorrowNative
                }))
            });
            message.finality = IWormholeTunnel.MessageFinality.INSTANT;
            uint256 releaseFundsCost = _state.wormholeTunnel.getMessageCost(source.chainId, SPOKE_RELEASE_FUNDS_GAS_LIMIT(), 0, false);
            if (msg.value < releaseFundsCost) {
                revert InsufficientMsgValue();
            }
            // TODO: support non-EVM execution params (gas limit)
            _state.wormholeTunnel.sendEvmMessage{value: releaseFundsCost}(message, SPOKE_RELEASE_FUNDS_GAS_LIMIT());
        }
    }

    function handleFinalizeCreditMessage(
        HubSpokeStructs.HubState storage _state,
        IWormholeTunnel.MessageSource memory source,
        IERC20 token,
        uint256 amount,
        bytes calldata payload
    ) public {
        HubSpokeStructs.FinalizeCreditPayload memory fcp = abi.decode(payload, (HubSpokeStructs.FinalizeCreditPayload));
        HubSpokeStructs.Credit storage storedCredit = _state.spokeStates[source.chainId].credits[fcp.credit.user][fcp.credit.nonce];

        // this shouldn't happen, but check anyway
        if (storedCredit.status == HubSpokeStructs.CreditStatus.FINALIZED) {
            revert CreditAlreadyFinalized();
        }

        if (token != IERC20(address(0)) && amount > 0) {
            if (amount != fcp.credit.forwardedAmount) {
                revert InvalidForwardedAmount();
            }
            storedCredit.forwardedAmount = amount;
            token.safeTransferFrom(address(_state.wormholeTunnel), address(this), amount);
        }

        if (CommonOptimisticFinalityLogic.creditMissingOrConflicting(fcp.credit, storedCredit)) {
            // this scenario is a fraud attempt or a reverted inbound instant.
            // - if the credit is conflicting then there already was a TX from that user with that nonce.
            //   this means it got reorg'd and replaced with a different one.
            //   this couldn't have happened by accident, because the user had to replace the reorg'd TX in the mempool.
            //   because the instant message must have reverted due to user nonce being already used.
            // - if the credit is missing then the reorg'd action might have reverted without malice (ex. deposit / borrow limits exceeded)
            //   or the reorg'd action was a borrow/withdraw
            // in both cases the finalized deposit is added to Spoke reserves and can be refunded manually if need be
            // the finalized deposit is confirmed on the Spoke to unlock the finalized credit amount and add it to reserves

            if (storedCredit.createdAt != 0) {
                // TODO: penalize the user if deposit conflicts?
                // pitfalls:
                //   - should this account for interest accrued since?
                //   - if we reduce the deposit, but leave Spoke's creditGiven sum then
                //     after a credit clearance we'll have more tokens than what Spoke-side state indicates
                //   - if we emit a withdraw or a borrow here we might break the subgraph
                //     with an unforseen underflow somewhere
                storedCredit.status = HubSpokeStructs.CreditStatus.LOST;
                emit HubCreditLost(source.chainId, storedCredit.user, storedCredit.token, storedCredit.creditedAmount, storedCredit.nonce);
            } else {
                // non-malicious revert or non-harming malicious revert
                // mark as refundable for manual resolution
                storedCredit.status = HubSpokeStructs.CreditStatus.REFUNDABLE;
                emit HubCreditRefundable(source.chainId, storedCredit.user, storedCredit.token, storedCredit.creditedAmount, storedCredit.nonce);
            }
        } else {
            storedCredit.status = HubSpokeStructs.CreditStatus.FINALIZED;
            emit HubCreditFinalized(source.chainId, fcp.credit.nonce);

            HubSpokeStructs.HubSpokeBalances memory balances = _state.spokeStates[source.chainId].balances[fcp.credit.token];

            if (fcp.credit.creditedAmount > fcp.credit.forwardedAmount) {
                // if the users deposit/repay caused the Spoke custody limit to be crossed then the overflow is forwarded to the Hub
                // if not all of the users deposit was forwarded then some of the credited amount stayed in the Spoke
                // this amount is now finalized and can be withdrawn or safely given as credit again
                balances.finalized += fcp.credit.creditedAmount  - fcp.credit.forwardedAmount;
            }
            balances.unfinalized -= fcp.credit.creditedAmount;
            setSpokeBalances(
                _state,
                source.chainId,
                fcp.credit.token,
                balances
            );
        }

        // a status update happens in all paths
        storedCredit.updatedAt = block.timestamp;

        {
            uint256 cost = _state.wormholeTunnel.getMessageCost(source.chainId, SPOKE_FINALIZE_MESSAGE_GAS_LIMIT(), 0, false);
            if (msg.value < cost) {
                revert InsufficientMsgValue();
            }
        }

        IWormholeTunnel.TunnelMessage memory message;
        message.source = IWormholeTunnel.MessageSource(_state.wormholeTunnel.chainId(), toWormholeFormat(address(this)), source.refundRecipient);
        message.target = IWormholeTunnel.MessageTarget({
        chainId: source.chainId,
            recipient: source.sender,
            selector: ISpoke.finalizeCredit.selector,
            payload: abi.encode(fcp.credit)
        });
        message.finality = IWormholeTunnel.MessageFinality.INSTANT;

        // sending msg.value instead of cost to return any overpaid amounts
        // TODO: support non-EVM execution params (gas limit)
        _state.wormholeTunnel.sendEvmMessage{value: msg.value}(message, SPOKE_FINALIZE_MESSAGE_GAS_LIMIT());
    }

    function handleSendSpokeTopUp(
        HubSpokeStructs.HubState storage _state,
        uint16 spokeChainId,
        IERC20 token,
        uint256 amount,
        uint256 confirmationCost
    ) public {
        HubAccountingLogic.requireRegisteredToken(_state, address(token));
        uint256 cost = _state.wormholeTunnel.getMessageCost(spokeChainId, SPOKE_TOP_UP_GAS_LIMIT(), confirmationCost, true);
        if (msg.value < cost) {
            revert InsufficientMsgValue();
        }

        // this could be computed more efficiently, but it's going to be executed on Arb
        // clarity > efficiency
        uint256 reserve = HubAccountingLogic.getReserveAmount(_state, address(token));
        if (token.balanceOf(address(this)) < reserve + amount) {
            revert InsufficientFunds();
        }
        token.forceApprove(address(_state.wormholeTunnel), amount);

        bytes32 hubAddrb32 = toWormholeFormat(address(this));

        IWormholeTunnel.TunnelMessage memory message;
        message.source = IWormholeTunnel.MessageSource(_state.wormholeTunnel.chainId(), hubAddrb32, hubAddrb32);
        message.target = IWormholeTunnel.MessageTarget({
            chainId: spokeChainId,
            recipient: _state.spokeStates[spokeChainId].spoke,
            selector: ISpoke.topUp.selector,
            payload: bytes("")
        });
        message.token = toWormholeFormat(address(token));
        message.amount = amount;
        message.receiverValue = confirmationCost;
        // TODO: support non-EVM execution params (gas limit)
        // sending the remainder of msg.value instead of cost to return any overpaid amounts
        _state.wormholeTunnel.sendEvmMessage{value: cost}(message, SPOKE_TOP_UP_GAS_LIMIT());
    }

    function handleConfirmTopUpMessage(
        HubSpokeStructs.HubState storage _state,
        IWormholeTunnel.MessageSource calldata source,
        IERC20 token,
        uint256 amount,
        bytes calldata payload
    ) public {
        requireNoTokenSent(token, amount);
        HubSpokeStructs.ConfirmTopUpPayload memory ctp = abi.decode(payload, (HubSpokeStructs.ConfirmTopUpPayload));
        HubSpokeStructs.HubSpokeBalances memory balances = _state.spokeStates[source.chainId].balances[ctp.token];
        balances.finalized += ctp.amount;
        setSpokeBalances(
            _state,
            source.chainId,
            ctp.token,
            balances
        );
    }

    function handleConfirmFixLostCreditMessage(
        HubSpokeStructs.HubState storage _state,
        IWormholeTunnel.MessageSource calldata source,
        IERC20 token,
        uint256 amount,
        bytes calldata payload
    ) public {
        requireNoTokenSent(token, amount);
        HubSpokeStructs.ConfirmFixLostCreditPayload memory cflcp = abi.decode(payload, (HubSpokeStructs.ConfirmFixLostCreditPayload));
        HubSpokeStructs.HubSpokeBalances memory balances = _state.spokeStates[source.chainId].balances[cflcp.token];
        balances.finalized += cflcp.amount;
        balances.unfinalized -= cflcp.amount;
        setSpokeBalances(
            _state,
            source.chainId,
            cflcp.token,
            balances
        );
    }

    function setSpokeBalances(
        HubSpokeStructs.HubState storage _state,
        uint16 chainId,
        bytes32 tokenAddressOnSpoke,
        HubSpokeStructs.HubSpokeBalances memory newBalances
    ) public {
        _state.spokeStates[chainId].balances[tokenAddressOnSpoke] = newBalances;
        // also set the mirrored wrapped address balance
        _state.wrappedTokenSpokeBalances[_state.wormholeTunnel.getTokenAddressOnThisChain(chainId, tokenAddressOnSpoke)] = newBalances;
    }
}
