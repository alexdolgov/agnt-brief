// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IVault} from "./interfaces/IVault.sol";
import {ICoreRef} from "./core/ICoreRef.sol";

contract FixedRate is ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* Immutables */
    // solhint-disable var-name-mixedcase
    address public TOKEN;
    address public VAULT;
    address public OWNER;

    /* Variables */
    bool public initialized;
    uint256 public id;
    uint256 public principal;
    uint256 public yield;
    uint256 public maturityTimestamp;

    function initialize(address token, address vault, address owner) external nonReentrant {
        require(!initialized, "FixedRate: already initialized");
        initialized = true;
        TOKEN = token;
        VAULT = vault;
        OWNER = owner;
    }

    function mint(
        uint256 _id,
        uint256 _principal,
        uint256 _yield,
        uint256 _maturityTimestamp
    ) external nonReentrant onlyVault {
        require(IERC20(TOKEN).balanceOf(address(this)) == _principal + _yield, "FixedRate: insufficient fund");
        id = _id;
        principal = _principal;
        yield = _yield;
        maturityTimestamp = _maturityTimestamp;
    }

    function burn(
        uint256 amount
    ) external nonReentrant onlyOwner returns (uint256 yieldToUnlock, uint256 yieldToRelease) {
        require(amount <= principal, "FixedRate: overspend");
        (yieldToUnlock, yieldToRelease) = IVault(VAULT).burnFixedRate(id, amount);
        uint256 yieldBurned = yieldToUnlock - yieldToRelease;
        require(
            IERC20(TOKEN).balanceOf(address(this)) >= principal + yield - yieldBurned,
            "FixedRate: insufficient fund" // contract should now contain principal and remaining yield
        );
        principal -= amount;
        yield -= yieldToUnlock; // arithmetic check guarantees yieldToUnlock <= yield
        IERC20(TOKEN).safeTransfer(OWNER, amount + yieldToRelease);
    }

    function withdraw(uint256 amount) external nonReentrant onlyOwner onlyEmergency {
        require(amount <= principal, "FixedRate: overspend");
        principal -= amount;
        IERC20(TOKEN).safeTransfer(OWNER, amount);
    }

    modifier onlyOwner() {
        require(msg.sender == OWNER, "FixedRate: not owner");
        _;
    }

    modifier onlyVault() {
        require(msg.sender == VAULT, "FixedRate: not vault");
        _;
    }

    modifier onlyEmergency() {
        require(ICoreRef(VAULT).emergency(), "FixedRate: not emergency");
        _;
    }
}
