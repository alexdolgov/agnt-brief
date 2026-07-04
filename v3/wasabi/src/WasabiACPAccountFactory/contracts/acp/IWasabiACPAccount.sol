// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "../IWasabiPerps.sol";
import "../vaults/IWasabiVault.sol";

interface IWasabiACPAccount {
    error CallerNotOwnerOrAgent();
}