// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

import {ISisuVault} from "../interfaces/ISisuVault.sol";
import {ISisuVaultFactory} from "../interfaces/ISisuVaultFactory.sol";

import {ErrorsLib} from "../libraries/ErrorsLib.sol";
import {EventsLib} from "../libraries/EventsLib.sol";

import {SisuVault} from "./SisuVault.sol";

/// @title SisuVaultFactory
/// @author Fira Labs
/// @notice This contract allows to create Sisu vaults, and to index them easily.
contract SisuVaultFactory is ISisuVaultFactory {
    /* IMMUTABLES */

    /// @inheritdoc ISisuVaultFactory
    address public immutable LENDING_MARKET;

    /* STORAGE */

    /// @inheritdoc ISisuVaultFactory
    mapping(address => bool) public isSisuVault;

    /* CONSTRUCTOR */

    /// @dev Initializes the contract.
    /// @param lendingMarket The address of the LM contract.
    constructor(address lendingMarket) {
        if (lendingMarket == address(0)) revert ErrorsLib.ZeroAddress();

        LENDING_MARKET = lendingMarket;
    }

    /* EXTERNAL */

    /// @inheritdoc ISisuVaultFactory
    function createSisuVault(
        address initialOwner,
        uint256 initialTimelock,
        address asset,
        string memory name,
        string memory symbol,
        bytes32 salt
    ) external returns (ISisuVault sisuVault) {
        sisuVault = ISisuVault(
            address(new SisuVault{salt: salt}(initialOwner, LENDING_MARKET, initialTimelock, asset, name, symbol))
        );

        isSisuVault[address(sisuVault)] = true;

        emit EventsLib.CreateSisuVault(
            address(sisuVault), msg.sender, initialOwner, initialTimelock, asset, name, symbol, salt
        );
    }
}
