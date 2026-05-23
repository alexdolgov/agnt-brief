// SPDX-License-Identifier: MIT
pragma solidity =0.8.19;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Enum} from "@gnosis.pm/safe-contracts/contracts/common/Enum.sol";
import {IPausableModule} from "./IPausableModule.sol";

interface ISafe {
    function execTransactionFromModule(
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation
    ) external returns (bool success);
}

interface IMaticStaker {
    function pause() external;
}

/// @title Pausable Safe Module
/// @notice A Safe Module to pause a contract.
contract PausableModule is IPausableModule, Ownable {
    address public protectedContractAddress;
    address public updater;
    ISafe public safe;

    /// @notice Requires that the caller is the updater.
    modifier onlyUpdater() {
        require(msg.sender == updater, "PausableModule: Only Updater");
        _;
    }

    /// @notice Requires that the caller is the owner or the updater.
    modifier onlyOwnerOrUpdater() {
        require(msg.sender == updater || msg.sender == owner(), "PausableModule: Only Updater or Owner");
        _;
    }

    constructor(address _multisig, address _updater, address _protectedContractAddress) Ownable() {
        safe = ISafe(_multisig);
        updater = _updater;
        protectedContractAddress = _protectedContractAddress;
    }

    /// @notice Pause the protected contract.
    function pause() external onlyOwnerOrUpdater {
        safe.execTransactionFromModule(
            protectedContractAddress,
            0,
            abi.encodeWithSelector(IMaticStaker.pause.selector),
            Enum.Operation.Call
        );

        emit ContractPaused(protectedContractAddress);
    }

    /// @notice Disable the module.
    function disable() external onlyUpdater {
        delete protectedContractAddress;
        delete updater;
        delete safe;

        emit Disabled();
    }
}
