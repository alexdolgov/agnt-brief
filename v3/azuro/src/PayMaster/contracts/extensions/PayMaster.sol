// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../interface/IPayMaster.sol";
import "../interface/ILP.sol";
import "../interface/IOrder.sol";

interface IRelayer is IOrder {
    function lp() external view returns (address);
    function betOrder(
        address relayExecutor,
        IOrder.ClientData memory data,
        OrderData calldata order,
        address betOwner,
        bytes calldata hashes
    ) external returns (uint256[] memory);
}

/// @title  Azuro relayer helper for processing bets behalf of bettor
contract PayMaster is OwnableUpgradeable, IPayMaster {
    // fees provided
    mapping(address => uint256) public feeFund;

    // freeBets provided
    mapping(address => uint256) public freeBetsFund;

    // freeBets
    mapping(uint256 => FreeBet) public freeBets;

    // is azurobet token have locked sign
    mapping(uint256 => bool) public isLocked;

    // last used freebet id (started from 1)
    uint256 public lastUsedFreeBetId;

    // Liquidity pool address
    ILP public lp;

    address public token;

    // Relayer contract
    address public relayer;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address lpAddress) external initializer {
        __Ownable_init_unchained(msg.sender);
        ILP lp_ = ILP(lpAddress);
        lp = lp_;
        token = lp_.token();
    }

    /**
     * @notice Change relayer
     * @param relayer_ the address of relayer
     */
    function changeRelayer(address relayer_) external onlyOwner {
        if (relayer == relayer_) revert NothingChanged();
        if (address(lp) != IRelayer(relayer_).lp()) revert LpNotMatch();

        relayer = relayer_;

        emit RelayerChanged(relayer);
    }

    /**
     * @notice Deposit affiliate account funds
     * @param account affiliate account - funds owner
     * @param freeBetAmount increase value of freebet funds
     * @param feeAmount increase value of fee funds
     */
    function depositFor(
        address account,
        uint256 freeBetAmount,
        uint256 feeAmount
    ) external {
        TransferHelper.safeTransferFrom(
            token,
            msg.sender,
            address(this),
            freeBetAmount + feeAmount
        );
        feeFund[account] += feeAmount;
        freeBetsFund[account] += freeBetAmount;

        emit DepositedFunds(account, freeBetAmount, feeAmount);
    }

    /**
     * @notice Pay bettor's fee and bet to relayer from affiliate fund
     * @param relayExecutor relay executor address to be rewarded
     * @param order from passed order IOrder.OrderData
     * @param data from passed order IOrder.ClientData
     * @param betAmount requested value to provide free bet amount
     * @param amounts requested array detailed by bets in batch value to provide free bet amount
     * @param hashes to check signatures
     * @return amountPaidByBettor value to pay by bettor if not sponsored
     * @return feePaidByBettor fee value to pay by bettor if not fee sponsored
     */
    function pay(
        address relayExecutor,
        IOrder.OrderData memory order,
        IOrder.ClientData memory data,
        uint128 betAmount,
        uint128[] memory amounts,
        bytes memory hashes
    )
        external
        override
        returns (uint128 amountPaidByBettor, uint256 feePaidByBettor)
    {
        if (relayer != msg.sender) revert IncorrectRelayer();

        // sponsored fee
        if (data.isFeeSponsored && data.relayerFeeAmount > 0) {
            if (feeFund[data.affiliate] < data.relayerFeeAmount)
                revert InsufficientFeeFund();
            feeFund[data.affiliate] -= data.relayerFeeAmount;
            // pay transaction fee to relayer executor
            TransferHelper.safeTransfer(
                token,
                relayExecutor,
                data.relayerFeeAmount
            );
        } else {
            feePaidByBettor = data.relayerFeeAmount;
        }

        // sponsored bet
        if (data.isBetSponsored) {
            if (freeBetsFund[data.affiliate] < betAmount)
                revert InsufficientFreeBetFund();
            freeBetsFund[data.affiliate] -= betAmount;

            // send amount for bet to relayer
            TransferHelper.safeTransfer(token, msg.sender, betAmount);

            uint256[] memory tokenIds = IRelayer(msg.sender).betOrder(
                relayExecutor,
                data,
                order,
                address(this),
                hashes
            );

            FreeBet memory freeBet;
            uint256 freebetId;

            // sponsored amount is need to lock and needed to unlock after bet resolve
            for (uint256 i = 0; i < tokenIds.length; ++i) {
                freebetId = ++lastUsedFreeBetId;

                freeBet.affiliate = data.affiliate;
                freeBet.owner = order.betOwner;
                freeBet.core = data.core;
                freeBet.azuroBetId = tokenIds[i];
                freeBet.amount = amounts[i];
                freeBet.isReturnableBetAmount = data.isSponsoredBetReturnable;

                freeBets[freebetId] = freeBet;
                isLocked[tokenIds[i]] = true;

                emit NewFreeBet(freebetId, freeBet);
            }
        } else {
            amountPaidByBettor = betAmount;
        }
    }

    /**
     * @notice Affiliate withdraw available funds
     * @param freeBetAmount value to be withdraw from freebet funds
     * @param feeAmount value to be withdraw from fee funds
     */
    function withdraw(uint256 freeBetAmount, uint256 feeAmount) external {
        if (freeBetsFund[msg.sender] < freeBetAmount)
            revert InsufficientFreeBetFund();
        if (feeFund[msg.sender] < feeAmount) revert InsufficientFeeFund();

        freeBetsFund[msg.sender] -= freeBetAmount;
        feeFund[msg.sender] -= feeAmount;

        TransferHelper.safeTransfer(
            token,
            msg.sender,
            feeAmount + freeBetAmount
        );

        emit WithdrawnFunds(msg.sender, freeBetAmount, feeAmount);
    }

    /**
     * @notice Withdraw the payout for already redeemed free bet with ID `freeBetId`.
     */
    function withdrawPayouts(uint256[] calldata freeBetIds) external {
        FreeBet storage freeBet;
        uint256 freeBetId;
        uint256 payout;
        address bettor;
        uint256 betAmount;
        uint256 fullPayout;
        uint256 azuroBetId;
        address core;
        address affiliate;

        for (uint256 i = 0; i < freeBetIds.length; ++i) {
            freeBetId = freeBetIds[i];
            freeBet = freeBets[freeBetId];
            bettor = freeBet.owner;
            azuroBetId = freeBet.azuroBetId;
            core = freeBet.core;
            affiliate = freeBet.affiliate;

            if (bettor == address(0)) revert BetDoesNotExist();

            betAmount = freeBet.amount;
            if (betAmount == 0) revert AlreadyPaid();
            freeBet.amount = 0;

            // unlock azurobet token
            isLocked[azuroBetId] = false;

            // getting payout
            fullPayout = lp.withdrawPayout(core, azuroBetId);

            // If the bet cancelled, the freebet amount is returned back
            if (fullPayout == betAmount) {
                freeBetsFund[affiliate] += betAmount;
                emit FreeBetReturned(
                    core,
                    bettor,
                    azuroBetId,
                    freeBetId,
                    betAmount
                );
                continue;
            }

            // If the bet wins
            if (fullPayout > betAmount) {
                if (freeBet.isReturnableBetAmount) {
                    payout = fullPayout - betAmount;
                    freeBetsFund[affiliate] += betAmount;
                } else {
                    payout = fullPayout;
                }

                TransferHelper.safeTransfer(token, bettor, payout);
                emit BettorWin(core, bettor, freeBetId, payout);
            }
        }
    }
}
