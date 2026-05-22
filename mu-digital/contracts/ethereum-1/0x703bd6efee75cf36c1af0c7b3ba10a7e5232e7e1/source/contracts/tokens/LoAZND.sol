// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ContractBaseUpgradeable} from "../commons/ContractBaseUpgradeable.sol";
import {IAccessManager} from "../interfaces/IAccessManager.sol";
import {ILoAZND} from "../interfaces/ILoAZND.sol";
import {Errors} from "../commons/Errors.sol";

/**
 * @title LoAZND
 * @author Mu Digital
 * @notice Locked AZND token with ERC4626 vault functionality and reward distribution
 */
contract LoAZND is ERC4626Upgradeable, ContractBaseUpgradeable, OwnableUpgradeable, ILoAZND {
    using SafeERC20 for IERC20;

    /**
     * @notice Total amount of assets deposited excluding rewards
     */
    uint256 public totalDepositedAssets;

    /**
     * @notice Initialize the contract
     * @param manager The address of the access manager
     * @param asset The address of the underlying asset
     * @param name The name of the token
     * @param symbol The symbol of the token
     */
    function initialize(
        address manager,
        address asset,
        string calldata name,
        string calldata symbol
    ) external initializer {
        if (manager == address(0) || asset == address(0)) revert Errors.ZeroAddress();
        __ERC20_init(name, symbol);
        __ERC4626_init(IERC20(asset));
        _initContractBaseUpgradeable();
        __Ownable_init(_msgSender());
        accessManager = manager;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the admin(MANAGER_LOAZND) role.
     **/
    modifier onlyAdmin() override {
        if (!IAccessManager(accessManager).hasRole(keccak256("MANAGER_LOAZND"), _msgSender()))
            revert Errors.NotAuthorized();
        _;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the minter role.
     **/
    modifier onlyMinter() {
        if (!IAccessManager(accessManager).hasRole(keccak256("TOKEN_VAULT_MINTER_ROLE"), _msgSender()))
            revert Errors.NotMinter();
        _;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the burner role.
     **/
    modifier onlyBurner() {
        if (!IAccessManager(accessManager).hasRole(keccak256("TOKEN_VAULT_BURNER_ROLE"), _msgSender()))
            revert Errors.NotBurner();
        _;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the reward depositor role.
     **/
    modifier onlyRewardDepositor() {
        if (!IAccessManager(accessManager).hasRole(keccak256("REWARD_DEPOSITOR_ROLE"), _msgSender()))
            revert Errors.NotRewardDepositor();
        _;
    }

    /**
     * @notice Deposit function restricted to onlyMinter role
     * @param assets Amount of assets to deposit
     * @param receiver Address to receive the deposited assets
     * @return Amount of shares minted
     */
    function deposit(
        uint256 assets,
        address receiver
    ) public override(ERC4626Upgradeable, ILoAZND) onlyMinter returns (uint256) {
        if (assets == 0) revert Errors.InvalidAmount();
        if (receiver == address(0)) revert Errors.ZeroAddress();
        uint256 shares = super.deposit(assets, receiver);
        totalDepositedAssets += assets;
        return shares;
    }

    /**
     * @notice Mint function restricted to onlyMinter role
     * @param shares Amount of shares to mint
     * @param receiver Address to receive the minted shares
     * @return Amount of assets deposited
     */
    function mint(
        uint256 shares,
        address receiver
    ) public override(ERC4626Upgradeable, ILoAZND) onlyMinter returns (uint256) {
        if (shares == 0) revert Errors.InvalidAmount();
        if (receiver == address(0)) revert Errors.ZeroAddress();
        uint256 assets = super.mint(shares, receiver);
        totalDepositedAssets += assets;
        return assets;
    }

    /**
     * @notice Withdraw function restricted to onlyBurner role
     * @param assets Amount of assets to withdraw
     * @param receiver Address to receive the withdrawn assets
     * @param owner Address from which assets will be withdrawn
     * @return Amount of shares burned
     */
    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    ) public override(ERC4626Upgradeable, ILoAZND) onlyBurner returns (uint256) {
        if (assets == 0) revert Errors.InvalidAmount();
        if (receiver == address(0)) revert Errors.ZeroAddress();
        if (owner == address(0)) revert Errors.ZeroAddress();
        uint256 shares = super.withdraw(assets, receiver, owner);
        totalDepositedAssets -= assets;
        return shares;
    }

    /**
     * @notice Redeem function restricted to onlyBurner role
     * @param shares Amount of shares to redeem
     * @param receiver Address to receive the redeemed assets
     * @param owner Address from which shares will be redeemed
     * @return Amount of assets withdrawn
     */
    function redeem(
        uint256 shares,
        address receiver,
        address owner
    ) public override(ERC4626Upgradeable, ILoAZND) onlyBurner returns (uint256) {
        if (shares == 0) revert Errors.InvalidAmount();
        if (receiver == address(0)) revert Errors.ZeroAddress();
        if (owner == address(0)) revert Errors.ZeroAddress();
        uint256 assets = super.redeem(shares, receiver, owner);
        totalDepositedAssets -= assets;
        return assets;
    }

    /**
     * @notice Deposit rewards into the contract. Only callable by reward depositor
     * @param assets Amount of assets to deposit as rewards
     */
    function depositRewards(uint256 assets) external onlyRewardDepositor {
        if (assets == 0) revert Errors.InvalidAmount();
        address depositor = _msgSender();
        IERC20(asset()).safeTransferFrom(depositor, address(this), assets);
        totalDepositedAssets += assets;

        emit RewardDeposited(depositor, assets);
    }

    /**
     * @notice Rescue locked assets that are in excess of totalDepositedAssets.
     */
    function rescueLockedAssets() external onlyAdmin {
        uint256 balance = IERC20(asset()).balanceOf(address(this));
        address receiver = owner();
        uint256 lockedAmount = balance > totalDepositedAssets ? balance - totalDepositedAssets : 0;
        if (lockedAmount == 0) revert Errors.InvalidAmount();
        IERC20(asset()).safeTransfer(receiver, lockedAmount);

        emit LockedAssetsRescued(receiver, lockedAmount);
    }

    /**
     * @notice Returns the total assets managed by the contract
     * @return The total amount of assets
     */
    function totalAssets() public view override returns (uint256) {
        return totalDepositedAssets;
    }
}
