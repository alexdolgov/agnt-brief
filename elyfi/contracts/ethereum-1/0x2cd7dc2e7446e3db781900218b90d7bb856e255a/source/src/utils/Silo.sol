// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

///@title ELUSD Silo
///@notice The Silo allows to store ELUSD during the stake cooldown process.
contract Silo {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error OnlyStakingVault();

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    address public immutable STAKING_VAULT;
    IERC20 public immutable ELUSD;

    /*//////////////////////////////////////////////////////////////
                             INITIALIZATION
    //////////////////////////////////////////////////////////////*/

    constructor(address stakingVault, address _ELUSD) {
        STAKING_VAULT = stakingVault;
        ELUSD = IERC20(_ELUSD);
    }

    modifier onlyStakingVault() {
        if (msg.sender != STAKING_VAULT) revert OnlyStakingVault();
        _;
    }

    function withdraw(address to, uint256 amount) external onlyStakingVault {
        ELUSD.safeTransfer(to, amount);
    }
}
