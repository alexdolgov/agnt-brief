// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Strategy.sol";
import "../ChefBifkn/IBIFKNChefV2.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract BIFKNChefStrategy is Strategy, AccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 public constant VAULT_MANAGER_ROLE =
        keccak256("VAULT_MANAGER_ROLE");

    IERC20 public immutable underlying;
    IBIFKNChefV2 public immutable bifknChef;
    uint256 public immutable poolId;
    address public immutable vault;

    event Deposited(
        address indexed caller,
        uint256 amount,
        uint256 totalStaked,
        uint256 timestamp
    );
    event Withdrawn(
        address indexed caller,
        uint256 amount,
        uint256 totalStaked,
        uint256 timestamp
    );
    event Harvested(
        address indexed caller,
        uint256 rewards,
        uint256 totalStaked,
        uint256 timestamp
    );

    event ApprovalSet(
        address indexed caller,
        uint256 amount,
        uint256 timestamp
    );
    event WithdrawnAll(
        address indexed caller,
        uint256 amount,
        uint256 timestamp
    );
    event EmergencyWithdrawn(
        address indexed caller,
        uint256 amount,
        uint256 timestamp
    );

    error InvalidAddress();
    error UnauthorizedCaller();

    modifier onlyVaultOrRole(bytes32 role) {
        if (msg.sender != vault && !hasRole(role, msg.sender)) {
            revert UnauthorizedCaller();
        }
        _;
    }

    constructor(address _vault, IERC20 _underlying, IBIFKNChefV2 _bifknChef) {
        if (
            _vault == address(0) ||
            _vault == msg.sender ||
            _vault == address(_underlying) ||
            _vault == address(_bifknChef)
        ) {
            revert InvalidAddress();
        }

        underlying = _underlying;
        bifknChef = _bifknChef;
        poolId = 0;
        vault = _vault;

        // Make the deployer the admin for role management
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        // Grant roles to specified addresses
        _grantRole(VAULT_MANAGER_ROLE, msg.sender);
    }

    /**
     * @notice Deposits the underlying asset into the BIFKNChef contract.
     * @dev This function can only be called by the vault or an entity with the VAULT_MANAGER_ROLE.
     * It first harvests any pending rewards, then deposits the underlying asset into the BIFKNChef contract.
     */
    function deposit()
        external
        override
        nonReentrant
        onlyVaultOrRole(VAULT_MANAGER_ROLE)
    {
        _harvest();
        _deposit();
    }

    /**
     * @notice Withdraws a specified amount of tokens from the BIFKNChef contract.
     * @dev This function can only be called by the vault or an entity with the VAULT_MANAGER_ROLE.
     * It first harvests any pending rewards, then unstakes the specified amount from the BIFKNChef contract,
     * and finally transfers the unstaked tokens to the vault.
     * @param amount The amount of tokens to withdraw.
     */
    function withdraw(
        uint256 amount
    ) external override nonReentrant onlyVaultOrRole(VAULT_MANAGER_ROLE) {
        // Harvest pending rewards
        _harvest();

        bifknChef.unstake(poolId, amount);

        // Transfer the requested amount to the vault
        underlying.safeTransfer(vault, amount);

        uint256 totalStaked = stakedAmount();

        emit Withdrawn(msg.sender, amount, totalStaked, block.timestamp);
    }

    /**
     * @notice Withdraws all funds from the BIFKNChef contract and transfers them to the caller.
     * @dev This function can only be called by the vault or an account with the VAULT_MANAGER_ROLE.
     * It first harvests any pending rewards, then unstakes the entire balance from the BIFKNChef contract,
     * and finally transfers the underlying tokens to the vault.
     */
    function withdrawAll()
        external
        override
        nonReentrant
        onlyVaultOrRole(VAULT_MANAGER_ROLE)
    {
        uint256 stakedBalance = stakedAmount();
        bifknChef.unstake(poolId, stakedBalance);

        uint256 totalBalance = underlying.balanceOf(address(this));

        underlying.safeTransfer(vault, totalBalance);

        emit WithdrawnAll(msg.sender, totalBalance, block.timestamp);
    }

    /**
     * @notice Allows the vault manager or an authorized role to perform an emergency withdrawal.
     * @dev This function can only be called by the vault manager or an entity with the VAULT_MANAGER_ROLE.
     * It triggers the emergency withdrawal process in the bifknChef contract for the specified poolId.
     * This function is intended to be used in emergency situations where funds need to be withdrawn immediately.
     */
    function emergencyWithdraw()
        external
        override
        nonReentrant
        onlyRole(VAULT_MANAGER_ROLE)
    {
        bifknChef.emergencyWithdraw(poolId);

        uint256 totalBalance = underlying.balanceOf(address(this));

        underlying.safeTransfer(vault, totalBalance);

        emit EmergencyWithdrawn(msg.sender, totalBalance, block.timestamp);
    }

    /**
     * @notice Migrates the entire balance of the underlying asset to the vault.
     * @dev This function can only be called by an account with the VAULT_MANAGER_ROLE.
     * It uses the nonReentrant modifier to prevent reentrancy attacks.
     * Emits a WithdrawnAll event upon successful transfer.
     */
    function migrateToVault()
        external
        nonReentrant
        onlyRole(VAULT_MANAGER_ROLE)
    {
        uint256 totalBalance = underlying.balanceOf(address(this));

        underlying.safeTransfer(vault, totalBalance);

        emit WithdrawnAll(msg.sender, totalBalance, block.timestamp);
    }

    /**
     * @dev Function to perform the harvest operation.
     * If the bifknChef contract address is not set, the function returns immediately.
     * Otherwise, it calls the autoCompound function on the bifknChef contract.
     * Emits a {Harvested} event indicating the address of the contract and the current block timestamp.
     */
    function harvest() external override nonReentrant {
        _harvest();
    }

    /**
     * @notice Returns the total assets managed by this strategy.
     * @dev This function calculates the total assets by summing up the user's staked amount,
     *      pending rewards, and the balance of the underlying asset held by this contract.
     * @return The total amount of assets managed by this strategy.
     */
    function totalAssets() external view override returns (uint256) {
        uint256 totalStaked = stakedAmount();
        uint256 accumulatedRewards = pendingRewards();

        uint256 total = totalStaked +
            accumulatedRewards +
            underlying.balanceOf(address(this));
        return total;
    }

    /**
     * @notice Returns the amount of pending rewards for this contract.
     * @dev This function calls the `pendingReward` function of the `bifknChef` contract.
     * If the call to `bifknChef.pendingReward` fails, it defaults the accumulated rewards to 0.
     * @return accumulatedRewards The amount of pending rewards.
     */
    function pendingRewards() public view override returns (uint256) {
        uint256 accumulatedRewards = 0;
        try bifknChef.pendingReward(poolId, address(this)) returns (
            uint256 pendingApex,
            address /*bonusTokenAddress*/,
            string memory /*bonusTokenSymbol */,
            uint256 /*pendingBonusToken */
        ) {
            accumulatedRewards = pendingApex;
        } catch {
            accumulatedRewards = 0; // Default to 0 if bifknChef fails
        }

        return accumulatedRewards;
    }

    /**
     * @dev Internal function to get the amount of tokens staked by this contract in the BIFKNChef contract.
     * @return uint256 The amount of tokens staked.
     */
    function stakedAmount() public view override returns (uint256) {
        uint256 totalStaked = 0;

        try bifknChef.userInfo(poolId, address(this)) returns (
            IBIFKNChefV2.UserInfo memory userInfo
        ) {
            totalStaked = userInfo.amount;
        } catch {
            totalStaked = 0; // Default to 0 if bifknChef fails
        }

        return totalStaked;
    }

    /**
     * @dev Internal function to harvest rewards and compound them.
     * This function calls the `autoCompound` method on the `bifknChef` contract
     * to compound the rewards. It then emits a `Harvested` event with the
     * address of the caller and the current block timestamp.
     *
     * Emits a {Harvested} event.
     */
    function _harvest() internal {
        uint256 rewards = pendingRewards();
        if (rewards > 0) {
            // compound the rewards
            bifknChef.autoCompound();
            uint256 totalStaked = stakedAmount();

            emit Harvested(msg.sender, rewards, totalStaked, block.timestamp);
        }
    }

    /**
     * @dev Internal function to handle the deposit of underlying tokens into the BIFKN Chef contract.
     * It checks the balance of the underlying tokens held by the contract, ensures sufficient approval
     * for the BIFKN Chef contract to transfer the tokens, and then stakes the tokens in the BIFKN Chef contract.
     * Emits an {ApprovalSet} event if approval is set, and a {Deposited} event upon successful deposit.
     *
     * Emits:
     * - {ApprovalSet} event if the approval for the BIFKN Chef contract is set.
     * - {Deposited} event upon successful deposit of tokens.
     */
    function _deposit() internal {
        uint256 balance = underlying.balanceOf(address(this));

        if (balance > 0) {
            // Ensure approval is sufficient
            if (
                underlying.allowance(address(this), address(bifknChef)) <
                balance
            ) {
                underlying.approve(address(bifknChef), type(uint256).max);
                emit ApprovalSet(msg.sender, balance, block.timestamp);
            }

            bifknChef.stake(poolId, balance);
            uint256 totalStaked = stakedAmount();
            emit Deposited(msg.sender, balance, totalStaked, block.timestamp);
        }
    }
}
