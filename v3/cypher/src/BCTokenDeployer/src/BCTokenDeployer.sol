// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IBCTokenDeployer} from "src/interfaces/IBCTokenDeployer.sol";
import {IBCToken} from "src/interfaces/IBCToken.sol";
import {ICREATE3Factory} from "src/interfaces/ICREATE3Factory.sol";
import {BCToken} from "src/BCToken.sol";

/**
 * @title BCTokenDeployer
 * @author Camelot
 * @notice Handles BCToken deployment via CREATE3, separated from factory to reduce factory bytecode size.
 */
contract BCTokenDeployer is IBCTokenDeployer {
    /// @notice The CREATE3 factory used for deterministic deployments.
    address public immutable CREATE_DEPLOYER;

    /// @notice The BCTokenFactory that is authorized to call deploy.
    address public immutable FACTORY;

    /**
     * @notice Thrown when the caller is not the factory.
     */
    error Unauthorized();

    /**
     * @notice Thrown when the CREATE3 salt has already been used.
     */
    error SaltAlreadyUsed();

    /**
     * @notice Initialises the deployer with the CREATE3 factory and authorised BCTokenFactory.
     * @param _createDeployer The address of the CREATE3 deployment factory.
     * @param _factory The address of the BCTokenFactory.
     */
    constructor(address _createDeployer, address _factory) {
        CREATE_DEPLOYER = _createDeployer;
        FACTORY = _factory;
    }

    /**
     * @inheritdoc IBCTokenDeployer
     */
    function deploy(bytes32 salt, IBCToken.InitParams calldata params) external returns (address token) {
        if (msg.sender != FACTORY) revert Unauthorized();

        token = ICREATE3Factory(CREATE_DEPLOYER).getDeployed(address(this), salt);
        if (token.code.length > 0) revert SaltAlreadyUsed();

        bytes memory bytecode = abi.encodePacked(type(BCToken).creationCode, abi.encode(params));

        ICREATE3Factory(CREATE_DEPLOYER).deploy(salt, bytecode);
    }

    /**
     * @inheritdoc IBCTokenDeployer
     */
    function getDeployed(bytes32 salt) external view returns (address) {
        return ICREATE3Factory(CREATE_DEPLOYER).getDeployed(address(this), salt);
    }
}
