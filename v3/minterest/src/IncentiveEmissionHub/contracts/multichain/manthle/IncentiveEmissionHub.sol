// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./interfaces/IIncentiveEmissionHub.sol";
import "../../libraries/PauseControl.sol";
import "../../libraries/ErrorCodes.sol";

contract IncentiveEmissionHub is IIncentiveEmissionHub, Initializable, ReentrancyGuard, AccessControl, PauseControl {
    using SafeCast for uint256;
    using SafeERC20 for IERC20;

    /// @dev The right part is the keccak-256 hash of "GATEKEEPER"
    bytes32 public constant GATEKEEPER = bytes32(0x20162831d2f54c3e11eebafebfeda495d4c52c67b1708251179ec91fb76dd3b2);

    // // // // Pause control
    bytes32 internal constant WITHDRAW_OP = "Withdraw";

    uint256 internal constant EXP_SCALE = 1e18;

    /// @dev The rate at which MANTLE token is distributed to the corresponding supply market (MANTLE / MINTY rate)
    mapping(IMToken => uint256) public rewardSupplyCoefficient;
    /// @dev The rate at which MANTLE token is distributed to the corresponding supply market (MANTLE / MINTY rate)
    mapping(IMToken => uint256) public rewardBorrowCoefficient;

    IRewardsHubLight public rewardsHub;
    IERC20 public token;

    /// @dev Contains amounts of incentive rewards for individual accounts.
    mapping(address => uint256) public balances;

    function initialize(
        address admin_,
        IRewardsHubLight _rewardsHub,
        IERC20 _token
    ) public initializer {
        _grantRole(DEFAULT_ADMIN_ROLE, admin_);
        _grantRole(GATEKEEPER, admin_);

        rewardsHub = _rewardsHub;
        token = _token;
    }

    /// @inheritdoc IIncentiveEmissionHub
    function calculateIncentiveRewards(
        IMToken market,
        uint256 accruedBaseReward,
        bool isSupply
    ) external view returns (uint256) {
        uint256 convertCoefficient = isSupply ? rewardSupplyCoefficient[market] : rewardBorrowCoefficient[market];

        return (accruedBaseReward * convertCoefficient) / EXP_SCALE;
    }

    /// @inheritdoc IIncentiveEmissionHub
    function assignRewards(address account, uint256 rewardsAmount) external {
        require(msg.sender == address(rewardsHub), ErrorCodes.UNAUTHORIZED);

        balances[account] += rewardsAmount;
        emit RewardAssigned(account, rewardsAmount);
    }

    /// @inheritdoc IIncentiveEmissionHub
    function setRewardSupplyCoefficient(IMToken market, uint256 newSupplyCoefficient)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        rewardSupplyCoefficient[market] = newSupplyCoefficient;

        emit SupplyCoefficientUpdated(market, newSupplyCoefficient);
    }

    /// @inheritdoc IIncentiveEmissionHub
    function setRewardBorrowCoefficient(IMToken market, uint256 newBorrowCoefficient)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        rewardBorrowCoefficient[market] = newBorrowCoefficient;

        emit BorrowCoefficientUpdated(market, newBorrowCoefficient);
    }

    /// @inheritdoc IIncentiveEmissionHub
    function withdraw(uint256 amount) external checkPaused(WITHDRAW_OP) {
        uint256 balance = balances[msg.sender];
        if (amount == type(uint256).max) amount = balance;

        require(amount <= balance, ErrorCodes.INCORRECT_AMOUNT);
        balances[msg.sender] = balance - amount;

        emit RewardWithdraw(msg.sender, amount);

        token.safeTransfer(msg.sender, amount);
    }

    /// @inheritdoc IIncentiveEmissionHub
    function grant(address recipient, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(amount > 0, ErrorCodes.INCORRECT_AMOUNT);

        uint256 balance = token.balanceOf(address(this));
        require(balance >= amount, ErrorCodes.INCORRECT_AMOUNT);

        emit RewardGranted(recipient, amount);

        token.safeTransfer(recipient, amount);
    }

    function validatePause(address) internal view override {
        require(hasRole(GATEKEEPER, msg.sender), ErrorCodes.UNAUTHORIZED);
    }

    function validateUnpause(address) internal view override {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), ErrorCodes.UNAUTHORIZED);
    }
}
