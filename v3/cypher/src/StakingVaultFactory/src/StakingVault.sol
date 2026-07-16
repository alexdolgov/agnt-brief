// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {CooldownHolder} from "src/CooldownHolder.sol";
import {IStakingVault} from "src/interfaces/IStakingVault.sol";

/**
 * @title StakingVault
 * @author Cypher Industries
 * @notice Staking vault with cooldown withdrawals and fee distribution.
 * @dev Implements cooldown-based withdrawals.
 */
contract StakingVault is IStakingVault, ERC4626, Ownable {
    using SafeERC20 for IERC20;

    /// @notice Cooldown holder contract for holding assets during cooldown.
    CooldownHolder public immutable cooldownHolder;

    /// @notice Maximum cooldown duration (90 days).
    uint24 public constant MAX_COOLDOWN_DURATION = 90 days;
    
    /// @notice Current cooldown duration.
    uint24 public cooldownDuration;

    /// @notice User cooldown information.
    mapping(address => UserCooldown) public cooldowns;

    // ============ Constructor ============

    /**
     * @notice Constructor for the staking vault.
     * @param _asset The token address to be staked.
     * @param _cooldownDuration Duration for the cooldown period in seconds.
     */
    constructor(
        IERC20 _asset,
        uint24 _cooldownDuration
    ) ERC4626(_asset) ERC20("", "") Ownable(msg.sender) {
        if (address(_asset) == address(0)) revert AddressZero();
        if (_cooldownDuration == 0 || _cooldownDuration > MAX_COOLDOWN_DURATION) {
            revert InvalidCooldown();
        }

        cooldownHolder = new CooldownHolder(address(this), address(_asset));

        cooldownDuration = _cooldownDuration;
    }

    /**
     * @inheritdoc ERC20
     */
    function name() public view override(ERC20, IERC20Metadata) returns (string memory) {
        return string.concat("Staked ", IERC20Metadata(asset()).name());
    }

    /**
     * @inheritdoc ERC20
     */
    function symbol() public view override(ERC20, IERC20Metadata) returns (string memory) {
        return string.concat("st", IERC20Metadata(asset()).symbol());
    }

    /**
     * @inheritdoc IStakingVault
     */
    function requestWithdraw(uint256 assets) external returns (uint256 shares) {
        if (assets == 0) revert AmountZero();
        if (assets > maxWithdraw(msg.sender)) revert ExcessiveWithdrawAmount();

        shares = previewWithdraw(assets);
        uint256 assetsBeforeWithdraw = convertToAssets(balanceOf(msg.sender));

        cooldowns[msg.sender].cooldownEnd = block.timestamp + cooldownDuration;
        cooldowns[msg.sender].underlyingAmount += assets;

        _withdraw(msg.sender, address(cooldownHolder), msg.sender, assets, shares);

        emit WithdrawRequested(msg.sender, assets, shares, assetsBeforeWithdraw);
    }

    /**
     * @inheritdoc IStakingVault
     */
    function requestRedeem(uint256 shares) external returns (uint256 assets) {
        if (shares == 0) revert AmountZero();
        if (shares > maxRedeem(msg.sender)) revert ExcessiveRedeemAmount();

        assets = previewRedeem(shares);
        uint256 assetsBeforeWithdraw = convertToAssets(balanceOf(msg.sender));

        cooldowns[msg.sender].cooldownEnd = block.timestamp + cooldownDuration;
        cooldowns[msg.sender].underlyingAmount += assets;

        _withdraw(msg.sender, address(cooldownHolder), msg.sender, assets, shares);

        emit RedemptionRequested(msg.sender, shares, assets, assetsBeforeWithdraw);
    }

    /**
     * @inheritdoc IStakingVault
     */
    function unstake(address receiver) external {
        if (receiver == address(0)) revert AddressZero();

        UserCooldown storage userCooldown = cooldowns[msg.sender];
        uint256 assets = userCooldown.underlyingAmount;

        if (assets == 0) revert NothingToClaim();

        if (block.timestamp >= userCooldown.cooldownEnd) {
            userCooldown.cooldownEnd = 0;
            userCooldown.underlyingAmount = 0;

            cooldownHolder.withdraw(receiver, assets);

            emit WithdrawalClaimed(msg.sender, receiver, assets);
        } else {
            revert CooldownNotComplete();
        }
    }

    /**
     * @notice Calculates total assets managed by the vault.
     * @return Total assets available to shareholders.
     */
    function totalAssets() public view override(ERC4626, IERC4626) returns (uint256) {
        return IERC20(asset()).balanceOf(address(this));
    }

    /**
     * @inheritdoc IStakingVault
     */
    function getCooldownStatus(address user)
        external
        view
        returns (uint256 amount, uint256 cooldownEnd, bool isReady)
    {
        UserCooldown memory cooldown = cooldowns[user];
        return (
            cooldown.underlyingAmount, cooldown.cooldownEnd, block.timestamp >= cooldown.cooldownEnd
        );
    }

    /**
     * @inheritdoc IStakingVault
     */
    function setCooldownDuration(uint24 duration) external onlyOwner {
        if (duration == 0 || duration > MAX_COOLDOWN_DURATION) revert InvalidCooldown();

        uint24 previousDuration = cooldownDuration;
        cooldownDuration = duration;

        emit CooldownDurationUpdated(previousDuration, cooldownDuration);
    }

    /**
     * @inheritdoc IStakingVault
     */
    function recoverERC20(address token, uint256 amount, address recipient) external onlyOwner {
        if (token == asset()) revert CannotRecoverAsset();
        if (recipient == address(0)) revert AddressZero();

        IERC20(token).safeTransfer(recipient, amount);

        emit TokensRecovered(token, amount, recipient);
    }

    /**
     * @inheritdoc IERC4626
     */
    function withdraw(uint256, address, address)
        public
        pure
        override(ERC4626, IERC4626)
        returns (uint256)
    {
        revert OperationNotAllowed();
    }

    /**
     * @inheritdoc IERC4626
     */
    function redeem(uint256, address, address)
        public
        pure
        override(ERC4626, IERC4626)
        returns (uint256)
    {
        revert OperationNotAllowed();
    }

    /**
     * @notice Overrides decimals offset to prevent inflation attacks.
     * @return The decimals offset value.
     */
    function _decimalsOffset() internal pure override returns (uint8) {
        return 3;
    }
}
