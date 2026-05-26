// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.12;

import { UserConfiguration } from "@radiant-v2-core/lending/libraries/configuration/UserConfiguration.sol";
import { ReserveConfiguration } from "@radiant-v2-core/lending/libraries/configuration/ReserveConfiguration.sol";
import { ReserveLogic } from "@radiant-v2-core/lending/libraries/logic/ReserveLogic.sol";
import { IRizLendingPoolAddressesProvider } from "../interfaces/Riz/IRizLendingPoolAddressesProvider.sol";
import { DataTypes } from "@radiant-v2-core/lending/libraries/types/DataTypes.sol";

contract RizLendingPoolStorage {
    using ReserveLogic for DataTypes.ReserveData;
    using ReserveConfiguration for DataTypes.ReserveConfigurationMap;
    using UserConfiguration for DataTypes.UserConfigurationMap;

    IRizLendingPoolAddressesProvider internal _addressesProvider;

    mapping(address => DataTypes.ReserveData) internal _reserves;
    mapping(address => DataTypes.UserConfigurationMap) internal _usersConfig;

    // the list of the available reserves, structured as a mapping for gas savings reasons
    mapping(uint256 => address) internal _reservesList;

    uint256 internal _reservesCount;

    bool internal _paused;

    bool internal _shutdown;

    uint256 internal _maxStableRateBorrowSizePercent;

    uint256 internal _flashLoanPremiumTotal;

    uint256 internal _maxNumberOfReserves;
}
