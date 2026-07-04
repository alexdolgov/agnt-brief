// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Enum } from "@safe-global/safe-contracts/contracts/common/Enum.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IPausableModule } from "./interfaces/IPausableModule.sol";
import { ITruStakePOL } from "./interfaces/external/ITruStakePOL.sol";
import { ISafe } from "./interfaces/external/ISafe.sol";

/// @title Pausable Safe Module
/// @author TruFin Labs
/// @notice A Safe Module to pause a contract.
contract PausableModule is IPausableModule, Ownable {
    /// @notice The Safe that this module is added to.
    ISafe public safe;

    /// @notice The address of the keeper.
    address public keeper;

    /// @notice The address of the contract to be paused.
    address public stakerAddress;

    /// @notice Ensures the caller is the keeper.
    modifier onlyKeeper() {
        address sender = _msgSender();
        if (sender != keeper) revert OnlyKeeper(sender);
        _;
    }

    /// @notice Ensures the caller is the owner or the keeper.
    modifier onlyOwnerOrKeeper() {
        address sender = _msgSender();
        if (sender != owner() && sender != keeper) revert OnlyOwnerOrKeeper(sender);
        _;
    }

    /// @notice Sets the staker address, the Safe address, and the keeper address.
    /// @param _safeAddress The address of the Safe that this module is added to.
    /// @param _keeper The address of the keeper.
    /// @param _stakerAddress The address of the contract to be paused.
    /// @dev The deployer is set as the owner.
    constructor(address _safeAddress, address _keeper, address _stakerAddress) Ownable(msg.sender) {
        if (_safeAddress == address(0) || _keeper == address(0) || _stakerAddress == address(0)) {
            revert ZeroAddress();
        }

        safe = ISafe(_safeAddress);
        keeper = _keeper;
        stakerAddress = _stakerAddress;
    }

    /// @inheritdoc IPausableModule
    function pause() external onlyOwnerOrKeeper {
        bool success = safe.execTransactionFromModule({
            to: stakerAddress,
            value: 0,
            data: abi.encodeWithSelector(ITruStakePOL.pause.selector),
            operation: Enum.Operation.Call
        });

        if (!success) revert PauseFailed();

        emit Paused(stakerAddress);
    }

    /// @inheritdoc IPausableModule
    function disable() external onlyKeeper {
        delete stakerAddress;
        delete safe;
        delete keeper;

        emit Disabled();
    }
}
