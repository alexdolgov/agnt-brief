// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";
import {OracleChainlink} from "./oracle/OracleChainlink.sol";

interface IController {
    function addController(address controller) external;
}

/**
 * @title StoutTimelock
 * @notice Timelock controller for managing vault and oracle operations
 * @dev Inherits OpenZeppelin's TimelockController for secure time-delayed operations
 */
contract StoutTimelock is TimelockController {
    /// @notice Fixed delay for all operations
    uint256 public constant DELAY = 48 hours;
    /// @notice The vault contract that will receive controller management calls
    address public immutable stoutVault;
    /// @notice The oracle contract that will receive configuration calls
    address public immutable oracleChainlink;
    /// @notice Thrown when a vault or oracle address is zero
    error InvalidAddress();
    // Custom errors
    error SchedulingFailed();

    /**
     * @notice Initialize the timelock with the vault and oracle addresses
     * @param vault_ The StoutVault contract address
     * @param oracle_ The Chainlink oracle contract address
     * @param proposers List of addresses that can propose operations
     * @param executors List of addresses that can execute operations
     * @param admin Optional admin address
     */
    constructor(
        address vault_,
        address oracle_,
        address[] memory proposers,
        address[] memory executors,
        address admin
    ) TimelockController(DELAY, proposers, executors, admin) {
        if (vault_ == address(0) || oracle_ == address(0)) {
            revert InvalidAddress();
        }
        stoutVault = vault_;
        oracleChainlink = oracle_;
    }

    /**
     * @notice Schedule adding a controller to the vault
     * @param controller The controller address to add
     */
    function scheduleAddController(
        address controller
    ) external onlyRole(PROPOSER_ROLE) {
        bytes memory data = abi.encodeWithSelector(
            IController.addController.selector,
            controller
        );
        _scheduleOperation(stoutVault, data, keccak256(abi.encode(controller)));
    }

    /**
     * @notice Schedule setting a token configuration in the oracle
     * @param asset The token address to configure
     * @param feed The price feed address for the token
     */
    function scheduleSetTokenConfig(
        address asset,
        address feed
    ) external onlyRole(PROPOSER_ROLE) {
        if (asset == address(0) || feed == address(0)) {
            revert InvalidAddress();
        }
        OracleChainlink.TokenConfig memory config = OracleChainlink
            .TokenConfig({asset: asset, feed: feed});
        bytes memory data = abi.encodeWithSelector(
            OracleChainlink.setTokenConfig.selector,
            config
        );
        _scheduleOperation(
            oracleChainlink,
            data,
            keccak256(abi.encode(asset, feed))
        );
    }

    /**
     * @notice Helper function to schedule a single operation using delegatecall
     */
    function _scheduleOperation(
        address target,
        bytes memory data,
        bytes32 salt
    ) private {
        // Create a separate contract call to handle the scheduling
        (bool success, ) = address(this).delegatecall(
            abi.encodeWithSelector(
                TimelockController.schedule.selector,
                target,
                0, // value
                data,
                bytes32(0), // predecessor
                salt,
                DELAY
            )
        );
        if (!success) revert SchedulingFailed();
    }
}
