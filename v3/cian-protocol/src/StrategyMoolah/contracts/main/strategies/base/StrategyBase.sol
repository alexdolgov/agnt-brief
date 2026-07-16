// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../../../interfaces/IStrategy.sol";
import {Errors as CustomErrors} from "../../libraries/Errors.sol";
import "../../common/Constants.sol";

abstract contract StrategyBase is IStrategy, Constants, OwnableUpgradeable {
    using SafeERC20 for IERC20;

    address public vault;

    address public rebalancer;

    event UpdateRebalancer(address oldRebalancer, address newRebalancer);
    event OnTransferIn(address token, uint256 amount);
    event TransferToVault(address token, uint256 amount);

    /**
     * @dev Ensure that this method is only called by the Vault contract.
     */
    modifier onlyVault() {
        if (msg.sender != vault) revert CustomErrors.CallerNotVault();
        _;
    }

    /**
     * @dev  Ensure that this method is only called by authorized portfolio managers.
     */
    modifier onlyRebalancer() {
        if (msg.sender != rebalancer) revert CustomErrors.CallerNotRebalancer();
        _;
    }

    /**
     * @dev Add a new address to the position adjustment whitelist.
     * @param _newRebalancer The new address to be added.
     */
    function updateRebalancer(address _newRebalancer) external onlyOwner {
        if (_newRebalancer == address(0)) revert CustomErrors.InvalidRebalancer();
        emit UpdateRebalancer(rebalancer, _newRebalancer);
        rebalancer = _newRebalancer;
    }

    /**
     * @dev Transfer tokens to the Vault.
     * @param _token The address of the token to transfer.
     * @param _amount The amount of tokens to transfer.
     */
    function transferToVault(address _token, uint256 _amount) external onlyRebalancer {
        IERC20(_token).safeTransfer(vault, _amount);
        emit TransferToVault(_token, _amount);
    }

    receive() external payable {}
}
