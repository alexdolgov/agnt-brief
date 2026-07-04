// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract PredepositClaim is Ownable, Pausable {
    using SafeERC20 for IERC20;

    address public immutable thusd;
    mapping(address vault => bool supported) public supportedVaults;
    // scaled by 1e18
    mapping(address vault => uint256 exchangeRateScaled) public vaultExchangeRates;

    event Claimed(address indexed user, address vaultShare, uint256 amountShares, uint256 amountThusd);
    event VaultAdded(address vault, uint256 exchangeRateScaled);
    event VaultRemoved(address vault);

    error VaultNotSupported();
    error ZeroAddress();
    error ZeroAmount();

    constructor(address _owner, address _thusd) Ownable(_owner) {
        if (_thusd == address(0)) revert ZeroAddress();
        thusd = _thusd;
    }

    function claim(address vault, uint256 amount) external whenNotPaused{
        if (!supportedVaults[vault]) revert VaultNotSupported();
        if (amount == 0) revert ZeroAmount();

        // check balance for fee-on-transfer tokens
        uint256 balanceBefore = IERC20(vault).balanceOf(address(this));
        IERC20(vault).safeTransferFrom(msg.sender, address(this), amount);
        uint256 balanceAfter = IERC20(vault).balanceOf(address(this));
        uint256 actualAmount = balanceAfter - balanceBefore;

        uint256 thusdAmount = (actualAmount * vaultExchangeRates[vault]) / 1e18;
        if (thusdAmount == 0) revert ZeroAmount();

        // transfer from this contract to user
        IERC20(thusd).safeTransfer(msg.sender, thusdAmount);

        emit Claimed(msg.sender, vault, actualAmount, thusdAmount);
    }

    function addVault(address _vault, uint256 _exchangeRateScaled) external onlyOwner {
        if (_vault == address(0)) revert ZeroAddress();
        if (_exchangeRateScaled == 0) revert ZeroAmount();

        supportedVaults[_vault] = true;
        vaultExchangeRates[_vault] = _exchangeRateScaled;

        emit VaultAdded(_vault, _exchangeRateScaled);
    }

    function removeVault(address vault) external onlyOwner {
        supportedVaults[vault] = false;
        vaultExchangeRates[vault] = 0;
        emit VaultRemoved(vault);
    }

    function sweep(address token, address to, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(to, amount);
    }

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() external onlyOwner whenPaused {
        _unpause();
    }
}
