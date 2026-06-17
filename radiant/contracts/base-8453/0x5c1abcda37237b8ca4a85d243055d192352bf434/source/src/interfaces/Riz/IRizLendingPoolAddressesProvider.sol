// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.12;

import { ILendingPoolAddressesProvider } from "@radiant-v2-core/interfaces/ILendingPoolAddressesProvider.sol";

interface IRizLendingPoolAddressesProvider is ILendingPoolAddressesProvider {
    function getLeverager() external view returns (address);
    function getBadDebtManager() external view returns (address);
    function getRizRegistry() external view returns (address);
}
