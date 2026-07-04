// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./VaultRewardsChef.sol";

contract VaultRewardsChefEgg is VaultRewardsChef {

    constructor() public VaultRewardsChef(
        IERC20(0xF952Fc3ca7325Cc27D15885d37117676d25BfdA6),
        IERC20(busdAddress)
    ) {

    }

}
