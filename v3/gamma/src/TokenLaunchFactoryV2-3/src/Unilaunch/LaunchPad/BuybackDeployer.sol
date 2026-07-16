// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {Buyback} from "./Buyback.sol";

/// @title BuybackDeployer
/// @notice Deploys Buyback contracts for TokenLaunchFactory
contract BuybackDeployer {
    address public authorizedFactory;
    address public immutable admin;

    error UnauthorizedCaller();

    constructor(address _admin) {
        if (_admin == address(0)) revert UnauthorizedCaller();
        admin = _admin;
    }

    function setAuthorizedFactory(address factory) external {
        if (msg.sender != admin) revert UnauthorizedCaller();
        if (authorizedFactory != address(0)) revert UnauthorizedCaller();
        authorizedFactory = factory;
    }

    function deploy(
        address treasury,
        address token,
        address buybackRouter
    ) external returns (address buyback) {
        if (msg.sender != authorizedFactory) revert UnauthorizedCaller();
        buyback = address(new Buyback(treasury, token, buybackRouter, authorizedFactory));
    }
}
