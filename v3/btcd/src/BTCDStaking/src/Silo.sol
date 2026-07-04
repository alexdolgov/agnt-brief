// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

/* solhint-disable var-name-mixedcase  */

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../src/interfaces/ISilo.sol";

/**
 * @title Silo
 * @notice The Silo allows storage of any ERC20 asset during the stake cooldown process.
 */
contract Silo is ISilo {
    using SafeERC20 for IERC20;

    error InvalidAddress();

    address public immutable _STAKING_VAULT;
    IERC20 public immutable _asset;

    constructor(address stakingVault, address asset) {
        if (stakingVault == address(0) || asset == address(0)) {
            revert InvalidAddress();
        }
        _STAKING_VAULT = stakingVault;
        _asset = IERC20(asset);
    }

    modifier onlyStakingVault() {
        if (msg.sender != _STAKING_VAULT) revert OnlyStakingVault();
        _;
    }

    function withdraw(address to, uint256 amount) external onlyStakingVault {
        _asset.safeTransfer(to, amount);
    }
}
