// SPDX-License-Identifier: Apache-2.0
// Copyright 2017 Loopring Technology Limited.
pragma solidity ^0.7.6;
pragma experimental ABIEncoderV2;

import "../../core/iface/IExchangeV3.sol";

contract DepositAgent {
    address public immutable exchange;

    event Deposited(
        address from,
        address to,
        address token,
        uint96 amount,
        uint256 duration
    );

    modifier onlyFromUser(address owner) {
        require(owner == msg.sender, "UNAUTHORIZED");
        _;
    }

    constructor(address _exchange) {
        exchange = _exchange;
    }

    function deposit(
        address from,
        address to,
        address tokenAddress,
        uint96 amount, // can be zero
        uint256 duration,
        bytes memory extraData // inline call
    ) external payable onlyFromUser(from) {
        IExchangeV3(exchange).deposit(
            from,
            to,
            tokenAddress,
            amount,
            extraData
        );

        emit Deposited(from, to, tokenAddress, amount, duration);
    }
}
