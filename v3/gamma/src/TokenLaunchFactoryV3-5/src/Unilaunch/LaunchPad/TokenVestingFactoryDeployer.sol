// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {TokenVestingFactory} from "./TokenVestingFactory.sol";

/// @title TokenVestingFactoryDeployer
/// @notice Deploys TokenVestingFactory contracts for TokenLaunchFactory
contract TokenVestingFactoryDeployer {
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
        vestingFactory = address(new TokenVestingFactory(token, creator));
    }
}
