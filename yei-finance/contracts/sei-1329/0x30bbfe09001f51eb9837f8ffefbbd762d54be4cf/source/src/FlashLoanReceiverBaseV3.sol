// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.20;

import { IFlashLoanReceiver, IPoolAddressesProvider, IPool } from "./InterfacesV3.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

abstract contract FlashLoanReceiverBaseV3 is IFlashLoanReceiver {
    using SafeERC20 for IERC20;

    IPoolAddressesProvider internal _addressesProvider;
    IPool internal _pool;

    constructor(IPoolAddressesProvider provider) {
        _addressesProvider = provider;
        _pool = IPool(provider.getPool());
    }

    receive() external payable {}
}