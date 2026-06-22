// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./VaultRewardsChef.sol";

contract VaultRewardsChefBonds is VaultRewardsChef {

    constructor(IERC20 bondAddress) public VaultRewardsChef(
        bondAddress,
        IERC20(busdAddress)
    ) {

    }

}
