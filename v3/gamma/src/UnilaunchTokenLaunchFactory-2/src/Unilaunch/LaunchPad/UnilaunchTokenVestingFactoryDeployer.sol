// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {UnilaunchTokenVestingFactory} from "./UnilaunchTokenVestingFactory.sol";

/// @title UnilaunchTokenVestingFactoryDeployer
/// @notice Deploys UnilaunchTokenVestingFactory contracts for UnilaunchTokenLaunchFactory
contract UnilaunchTokenVestingFactoryDeployer {
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

    function deploy(address token, address creator) external returns (address vestingFactory) {
        if (msg.sender != authorizedFactory) revert UnauthorizedCaller();
        vestingFactory = address(new UnilaunchTokenVestingFactory(token, creator));
    }
}
