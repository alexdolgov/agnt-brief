// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {UnilaunchCallOptionFactory} from "./UnilaunchCallOptionFactory.sol";

/// @title UnilaunchCallOptionFactoryDeployer
/// @notice Deploys UnilaunchCallOptionFactory contracts for UnilaunchTokenLaunchFactory
contract UnilaunchCallOptionFactoryDeployer {
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
        address token,
        address treasury,
        address buyback,
        address creator
    ) external returns (address callOptionFactory) {
        if (msg.sender != authorizedFactory) revert UnauthorizedCaller();
        callOptionFactory = address(new UnilaunchCallOptionFactory(token, treasury, buyback, authorizedFactory, creator));
    }
}
