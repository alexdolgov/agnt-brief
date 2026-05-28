// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {UnilaunchSuperchainLBPStrategy} from "./UnilaunchSuperchainLBPStrategy.sol";

/// @title UnilaunchSuperchainLBPStrategyDeployer
/// @notice Deploys UnilaunchSuperchainLBPStrategy contracts with CREATE2
contract UnilaunchSuperchainLBPStrategyDeployer {
    address public immutable authorizedFactory;

    error UnauthorizedCaller();

    constructor(address _authorizedFactory) {
        authorizedFactory = _authorizedFactory;
    }

    function deploy(
        bytes32 salt,
        UnilaunchSuperchainLBPStrategy.StrategyInitParams memory init
    ) external returns (address) {
        if (msg.sender != authorizedFactory) revert UnauthorizedCaller();

        return address(
            new UnilaunchSuperchainLBPStrategy{salt: salt}(init)
        );
    }

    function computeAddress(
        bytes32 salt,
        UnilaunchSuperchainLBPStrategy.StrategyInitParams memory init
    ) external view returns (address predicted) {
        bytes32 hash = keccak256(
            abi.encodePacked(
                type(UnilaunchSuperchainLBPStrategy).creationCode,
                abi.encode(init)
            )
        );

        predicted = address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xff), address(this), salt, hash)))));
    }
}
