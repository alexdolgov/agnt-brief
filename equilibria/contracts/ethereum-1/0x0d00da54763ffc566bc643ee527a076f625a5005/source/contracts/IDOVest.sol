// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "./Utils/LRTConstants.sol";

contract IDOVest is AccessControlUpgradeable {
    using SafeERC20 for IERC20;

    uint256 public constant PRECISION = 1e4;

    address ecl;
    address mirrorEcl;

    uint256 public totalEclAmount;
    uint256 public startTime;
    uint256 public unlockPercent;
    // linear release duration in second
    uint256 public releaseDuration;

    uint256 public totalDepositedAmount;
    mapping(address => uint256) public depositedAmounts;
    mapping(address => uint256) public claimedAmounts;

    event Funded(
        uint256 _amount,
        uint256 _unlockPercent,
        uint256 _releaseDuration
    );

    event Deposited(address indexed _user, uint256 _amount);
    event Claimed(address indexed _user, uint256 _amount);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _ecl, address _mirrorEcl) public initializer {
        __AccessControl_init();

        ecl = _ecl;
        mirrorEcl = _mirrorEcl;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(LRTConstants.ADMIN_ROLE, msg.sender);
    }

    function fund(
        uint256 _amount,
        uint256 _unlockPercent,
        uint256 _releaseDuration
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        require(_amount > 0, "invalid _amount!");
        require(totalEclAmount == 0, "already funded!");
        require(_unlockPercent <= PRECISION, "invalid _unlockPercent!");
        require(_releaseDuration > 0, "invalid _releaseDuration!");

        IERC20(ecl).safeTransferFrom(msg.sender, address(this), _amount);

        totalEclAmount = _amount;
        startTime = block.timestamp;
        unlockPercent = _unlockPercent;
        releaseDuration = _releaseDuration;

        emit Funded(_amount, _unlockPercent, _releaseDuration);
    }

    function getClaimableAmount(address _user) public view returns (uint256) {
        if (totalEclAmount == 0) {
            // not funded yet
            return 0;
        }

        uint256 depositAmount = depositedAmounts[_user];
        if (depositAmount == 0) {
            return 0;
        }

        uint256 unlockedAmount = (depositAmount * unlockPercent) / PRECISION;
        uint256 releasedAmount = ((depositAmount - unlockedAmount) *
            Math.min(releaseDuration, block.timestamp - startTime)) /
            releaseDuration;

        return unlockedAmount + releasedAmount - claimedAmounts[_user];
    }

    function claim(uint256 _amount) external {
        require(totalEclAmount > 0, "not funded yet!");
        if (_amount > 0) {
            require(
                totalDepositedAmount + _amount <= totalEclAmount,
                "exceeds totalEclAmount!"
            );
            IERC20(mirrorEcl).safeTransferFrom(
                msg.sender,
                address(this),
                _amount
            );
            totalDepositedAmount += _amount;
            depositedAmounts[msg.sender] += _amount;
            emit Deposited(msg.sender, _amount);
        }

        uint256 claimableAmount = getClaimableAmount(msg.sender);
        if (claimableAmount > 0) {
            claimedAmounts[msg.sender] += claimableAmount;
            IERC20(ecl).safeTransfer(msg.sender, claimableAmount);
            emit Claimed(msg.sender, claimableAmount);
        }
    }
}
