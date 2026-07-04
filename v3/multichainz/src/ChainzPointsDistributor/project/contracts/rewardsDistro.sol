// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {
    SafeERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {
    PausableUpgradeable
} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {
    ReentrancyGuardUpgradeable
} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {
    AccessControlUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {
    Initializable
} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {
    UUPSUpgradeable
} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract ChainzPointsDistributor is
    Initializable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    PausableUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;

    error ZeroAddress();
    error NotAuthorized();
    error NothingToClaim();
    error InsufficientFunding();

    IERC20 public rewardToken;

    // Number of CHAINZ per point, scaled by 1e18
    uint256 public rewardPerPoint = 0;

    mapping(address => uint256) public points;
    mapping(address => uint256) public claimedAmount;
    mapping(address => bool) public pointOperator;

    event PointOperatorSet(address indexed operator, bool allowed);
    event RewardPerPointUpdated(uint256 oldValue, uint256 newValue);
    event PointsAdded(address indexed user, uint256 amount);
    event PointsRemoved(address indexed user, uint256 amount);
    event Claimed(address indexed user, uint256 amount);
    event Recovered(address indexed token, address indexed to, uint256 amount);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // ----------------------------
    // Initialize (UUPS)
    // ----------------------------
    function initialize(
        address admin_,
        address rewardToken_
    ) external initializer {
        if (admin_ == address(0) || rewardToken_ == address(0))
            revert ZeroAddress();

        __Ownable_init(admin_);
        __Pausable_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
        __AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin_);

        rewardToken = IERC20(rewardToken_);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyOwner {}

    function setRewardPerPoint(
        uint256 newValue
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 old = rewardPerPoint;
        rewardPerPoint = newValue;
        emit RewardPerPointUpdated(old, newValue);
    }

    function addPoints(
        address user,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) whenNotPaused {
        if (user == address(0)) revert ZeroAddress();
        points[user] += amount;
        emit PointsAdded(user, amount);
    }

    function removePoints(
        address user,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) whenNotPaused {
        if (user == address(0)) revert ZeroAddress();
        points[user] -= amount;
        emit PointsRemoved(user, amount);
    }

    function totalEarned(address user) public view returns (uint256) {
        return (points[user] * rewardPerPoint) / 1e18;
    }

    function claimable(address user) public view returns (uint256) {
        uint256 earned = totalEarned(user);
        if (earned <= claimedAmount[user]) return 0;
        return earned - claimedAmount[user];
    }

    function claim() external whenNotPaused nonReentrant {
        address user = msg.sender;
        uint256 amount = claimable(user);
        if (amount == 0) revert NothingToClaim();
        if (rewardToken.balanceOf(address(this)) < amount)
            revert InsufficientFunding();

        claimedAmount[user] += amount;
        rewardToken.safeTransfer(user, amount);

        emit Claimed(user, amount);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function recoverToken(
        address token,
        address to,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (token == address(0) || to == address(0)) revert ZeroAddress();
        IERC20(token).safeTransfer(to, amount);
        emit Recovered(token, to, amount);
    }

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}
}
