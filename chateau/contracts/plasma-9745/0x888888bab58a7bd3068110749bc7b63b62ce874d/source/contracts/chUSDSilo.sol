// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/* solhint-disable var-name-mixedcase  */

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../contracts/interfaces/IchUSDSiloDefinitions.sol";

/**
 * @title chUSDSilo
 * @notice The Silo allows to store chUSD during the stake cooldown process.
 */
contract chUSDSilo is IchUSDSiloDefinitions {
    address immutable _STAKING_VAULT;
    IERC20 immutable _CHUSD;

    constructor(address stakingVault, address chUSD) {
        _STAKING_VAULT = stakingVault;
        _CHUSD = IERC20(chUSD);
    }

    modifier onlyStakingVault() {
        if (msg.sender != _STAKING_VAULT) revert OnlyStakingVault();
        _;
    }

    function withdraw(address to, uint256 amount) external onlyStakingVault {
        _CHUSD.transfer(to, amount);
    }
}
