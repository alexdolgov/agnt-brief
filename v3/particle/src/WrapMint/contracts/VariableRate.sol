// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IVault} from "./interfaces/IVault.sol";
import {ICoreRef} from "./core/ICoreRef.sol";

contract VariableRate is ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* Immutables */
    // solhint-disable var-name-mixedcase
    address public TOKEN;
    address public VAULT;
    address public OWNER;

    /* Variables */
    bool public initialized;
    uint256 public principal;

    function initialize(address token, address vault, address owner) external nonReentrant {
        require(!initialized, "VariableRate: already initialized");
        initialized = true;
        TOKEN = token;
        VAULT = vault;
        OWNER = owner;
    }

    function mint(uint256 amount) external nonReentrant onlyVault {
        require(IERC20(TOKEN).balanceOf(address(this)) >= principal + amount, "VariableRate: insufficient fund");
        principal += amount;
    }

    function burn(
        uint256 amount,
        uint256 minYield
    ) external nonReentrant onlyOwner returns (uint256 yield, uint256 fee) {
        require(amount <= principal, "VariableRate: overspend");
        (yield, fee) = IVault(VAULT).burnVariableRate(amount, minYield);
        require(IERC20(TOKEN).balanceOf(address(this)) >= principal + yield + fee, "VariableRate: insufficient fund");
        principal -= amount;
        IERC20(TOKEN).safeTransfer(OWNER, amount + yield + fee);
    }

    function withdraw(uint256 amount) external nonReentrant onlyOwner onlyEmergency {
        require(amount <= principal, "VariableRate: overspend");
        principal -= amount;
        IERC20(TOKEN).safeTransfer(OWNER, amount);
    }

    modifier onlyOwner() {
        require(msg.sender == OWNER, "VariableRate: not owner");
        _;
    }

    modifier onlyVault() {
        require(msg.sender == VAULT, "VariableRate: not vault");
        _;
    }

    modifier onlyEmergency() {
        require(ICoreRef(VAULT).emergency(), "VariableRate: not emergency");
        _;
    }
}
