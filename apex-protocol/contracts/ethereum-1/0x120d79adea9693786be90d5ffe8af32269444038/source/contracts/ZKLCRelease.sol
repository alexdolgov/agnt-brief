// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

contract ZKLCRelease is
    Initializable,
    UUPSUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;
    IERC20 public ZKL;
    IERC20 public ZKLC;
    uint256 public RELEASE_START_TIME;
    uint256 public RELEASE_DURATION;

    struct Info {
        uint256 zklcAmount;
        uint256 claimedZKL;
    }
    mapping(address => Info) public userInfo;

    uint256 public totalZKLC;
    uint256 public totalClaimedZKL;

    error ZeroAmount();

    event DepositZKLC(address indexed user, uint256 amount);
    event ClaimZKL(address indexed user, uint256 amount);

    function initialize(IERC20 _zkl, IERC20 _zklc, uint256 _startTime, uint256 _duration) public initializer {
        if (_duration == 0) revert ZeroAmount();

        __Ownable_init_unchained(msg.sender);
        __UUPSUpgradeable_init_unchained();
        __ReentrancyGuard_init_unchained();

        ZKL = _zkl;
        ZKLC = _zklc;
        RELEASE_START_TIME = _startTime;
        RELEASE_DURATION = _duration;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {
        // can only call by owner
    }

    function getPendingZKL(address user) public view returns (uint256) {
        Info memory u = userInfo[user];
        uint256 released = _releasedAmount(u.zklcAmount, block.timestamp);
        return released > u.claimedZKL ? released - u.claimedZKL : 0;
    }

    function depositZKLC(uint256 amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();

        ZKLC.safeTransferFrom(msg.sender, address(this), amount);

        Info storage u = userInfo[msg.sender];
        u.zklcAmount += amount;
        totalZKLC    += amount;
        emit DepositZKLC(msg.sender, amount);
    }

    function claimZKL() external nonReentrant {
        uint256 claimable = getPendingZKL(msg.sender);
        if (claimable == 0) revert ZeroAmount();

        Info storage u = userInfo[msg.sender];
        u.claimedZKL     += claimable;
        totalClaimedZKL  += claimable;

        ZKL.safeTransfer(msg.sender, claimable);
        emit ClaimZKL(msg.sender, claimable);
    }

    function depositZKL(uint256 amount) external onlyOwner {
        if (amount == 0) {
            revert ZeroAmount();
        }
        ZKL.safeTransferFrom(msg.sender, address(this), amount);
    }

    function withdrawZKL(uint256 amount) external onlyOwner {
        if (amount == 0) {
            revert ZeroAmount();
        }
        ZKL.safeTransfer(msg.sender, amount);
    }

    function _releasedAmount(uint256 total, uint256 time) internal view returns (uint256) {
        if (time <= RELEASE_START_TIME) return 0;
        uint256 elapsed   = Math.min(time - RELEASE_START_TIME, RELEASE_DURATION);
        return total * elapsed / RELEASE_DURATION;
    }
}
