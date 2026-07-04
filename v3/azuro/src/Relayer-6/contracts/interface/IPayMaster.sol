// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;
import "./IOrder.sol";

interface IPayMaster is IOrder {
    struct FreeBet {
        address affiliate;
        address owner;
        address core;
        uint256 azuroBetId;
        uint128 amount;
        bool isReturnableBetAmount; // true - won bet returns freebet amount, false - all won amount goes bettor
    }

    event BettorWin(
        address indexed core,
        address indexed bettor,
        uint256 indexed freeBetId,
        uint256 amount
    );

    event FreeBetReturned(
        address indexed core,
        address indexed bettor,
        uint256 indexed betId,
        uint256 freeBetId,
        uint256 amount
    );

    event RelayerChanged(address indexed relayer);
    event RelayerRewarded(
        address indexed relayer,
        address indexed affiliate,
        address indexed bettor,
        uint256 amount
    );
    event DepositedFunds(
        address indexed affiliate,
        uint256 freebetAmount,
        uint256 feeAmount
    );
    event WithdrawnFunds(
        address indexed affiliate,
        uint256 freebetAmount,
        uint256 feeAmount
    );

    event NewFreeBet(uint256 indexed freeBetId, FreeBet freeBet);

    error AlreadyPaid();
    error BetDoesNotExist();
    error InsufficientFeeFund();
    error InsufficientFreeBetFund();
    error IncorrectRelayer();
    error LpNotMatch();
    error NothingChanged();

    function pay(
        address relayExecutor,
        IOrder.OrderData memory order,
        IOrder.ClientData memory data,
        uint128 betAmount,
        uint128[] memory amounts,
        bytes memory hashes
    ) external returns (uint128 amountPaidByBettor, uint256 feePaidByBettor);
}
