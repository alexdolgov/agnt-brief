// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ILock} from "./interfaces/ILock.sol";
import {ICumulativeMerkleDrop} from "./interfaces/ICumulativeMerkleDrop.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IVault {
    function deposit(uint256 assets, address receiver) external;
}

/// Implementation of ILock that deposits tokens into a vault.
contract VaultAdapter is ILock {
    using SafeERC20 for IERC20;

    IERC20 public token;
    IVault public vault;
    
    constructor(address _token, address _vault) {
        token = IERC20(_token);
        vault = IVault(_vault);

        IERC20(_token).approve(_vault, type(uint256).max);
    }
    
    function lock(address _account, uint256 _amount) external override {
        token.safeTransferFrom(msg.sender, address(this), _amount);
        IVault(address(vault)).deposit(_amount, _account);
    }
}
