// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { ISiloVault } from "src/interfaces/external/silo/ISiloVault.sol";
import { IERC20, ERC20 } from "openzeppelin-contracts/token/ERC20/ERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC4626, IERC20Metadata } from "openzeppelin-contracts/interfaces/IERC4626.sol";
import { ISiloIncentivesControllerCL } from "src/interfaces/silo/ISiloIncentivesControllerCL.sol";
import { TokenRecoverable } from "src/utils/TokenRecoverable.sol";

/// @title Wrapper 4626 vault for a SiloVault with relevant functions implemented
/// @dev Ensures that 1 unit of this vault is scaled to correspond to 1 unit of the underlying asset.
///      This token will only be used by a single destination.
///      Anyone how deposits here that isn't the holdingDestination will lose their rewards.
///      Its possible to use recover() against the SiloVault token but misuse can result in DoS.
contract SiloVaultWrapper is ERC20, TokenRecoverable, IERC4626 {
    /// =====================================================
    /// Constant Vars
    /// =====================================================

    /// @dev Decimals for this token
    uint8 private constant _DECIMALS = 18;

    /// =====================================================
    /// Immutable Vars
    /// =====================================================

    /// @notice Returns the SiloVault this token wraps
    ISiloVault public immutable siloVault;

    /// @notice Decimals to scale up by when converting from this vaults shares to underlying
    /// @dev Will be used in denominator when scaling the other direction
    uint256 private immutable _toUnderlyingScaleUp;

    /// @notice Decimals to scale down by when converting from this vaults shares to underlying
    /// @dev Will be used in numerator when scaling the other direction
    uint256 private immutable _toUnderlyingScaleDown;

    /// @dev Base asset of this vault and the wrapped token
    IERC20 private immutable _asset;

    /// =====================================================
    /// Public Vars
    /// =====================================================

    /// @notice Returns the number of underlying SiloVault shares currently held
    uint256 public siloVaultShares;

    /// @notice The Destination Vault that holds this token and can claim its rewards
    address public holdingDestination;

    /// =====================================================
    /// Events
    /// =====================================================

    /// @notice Emitted on deposit for tracking
    event UnderlyingShareIncrease(uint256 increasedBy);

    /// @notice Emitted on redeem for tracking
    event UnderlyingShareDecrease(uint256 decreasedBy);

    /// @notice Emitted when a holding destination is set
    event HoldingDestinationSet(address destination);

    /// =====================================================
    /// Functions - Construction
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry,
        string memory name_,
        string memory symbol_,
        address siloVault_
    ) ERC20(name_, symbol_) TokenRecoverable(_systemRegistry) {
        Errors.verifyNotZero(siloVault_, "siloVault_");

        siloVault = ISiloVault(siloVault_);

        IERC20 asset_ = IERC20(ISiloVault(siloVault_).asset());
        _asset = asset_;

        uint256 baseAssetDecimals = IERC20Metadata(address(_asset)).decimals();
        if (baseAssetDecimals > _DECIMALS) {
            revert Errors.InvalidParam("decimals");
        }

        // At initialization of a SiloVault, 1 unit of the underlying asset is worth a scaled up
        // amount of the SiloVault shares. Typically its 1 asset == 100,000 shares
        // but the scaling and decimal management here is meant to make it look
        // 1 == 1 again. This scaling may result in dust shares of this wrapper token
        // scaling to 0 or dust underlying shares but neither should represent
        // any, or any meaningful, value

        uint256 _siloVaultDecimalOffset = ISiloVault(siloVault_).DECIMALS_OFFSET();
        uint256 _siloVaultAssetDecimals = baseAssetDecimals;
        uint256 totalSiloDecimals = _siloVaultDecimalOffset + _siloVaultAssetDecimals;

        if (totalSiloDecimals <= _DECIMALS) {
            _toUnderlyingScaleUp = 1;
            _toUnderlyingScaleDown = 10 ** (_DECIMALS - totalSiloDecimals);
        } else {
            _toUnderlyingScaleUp = 10 ** (totalSiloDecimals - _DECIMALS);
            _toUnderlyingScaleDown = 1;
        }
    }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @notice Set the Destination Vault that is holding this token and can claim rewards
    /// @dev When changing this destination ensure that all rewards have been claimed else they can be redirected
    /// @param destination The new destination to use
    function setHoldingDestination(
        address destination
    ) external hasRole(Roles.DESTINATION_VAULT_SILO_MANAGER) {
        // Intentionally not checking that this is a valid destination in the system.
        // Opting for some flexibility should migrations need to happen.

        // slither-disable-next-line missing-zero-check
        holdingDestination = destination;

        emit HoldingDestinationSet(destination);
    }

    /// @inheritdoc IERC4626
    function deposit(uint256 _assets, address _receiver) external override returns (uint256 shares) {
        Errors.verifyNotZero(_assets, "_assets");
        Errors.verifyNotZero(_receiver, "_receiver");

        SafeERC20.safeTransferFrom(_asset, msg.sender, address(this), _assets);
        SafeERC20.safeApprove(_asset, address(siloVault), _assets);
        uint256 newShares = siloVault.deposit(_assets, address(this));
        shares = newShares * _toUnderlyingScaleDown / _toUnderlyingScaleUp;

        siloVaultShares += newShares;

        Errors.verifyNotZero(newShares, "newShares");
        Errors.verifyNotZero(shares, "shares");

        emit UnderlyingShareIncrease(newShares);

        _mint(_receiver, shares);
    }

    /// @inheritdoc IERC4626
    function redeem(uint256 _shares, address _receiver, address _owner) external override returns (uint256 assets) {
        Errors.verifyNotZero(_shares, "_shares");
        Errors.verifyNotZero(_receiver, "_receiver");

        if (_owner != msg.sender) {
            _spendAllowance(_owner, msg.sender, _shares);
        }

        _burn(_owner, _shares);

        uint256 rawShares = _shares * _toUnderlyingScaleUp / _toUnderlyingScaleDown;

        Errors.verifyNotZero(rawShares, "rawShares");

        siloVaultShares -= rawShares;

        emit UnderlyingShareDecrease(rawShares);

        assets = siloVault.redeem(rawShares, _receiver, address(this));

        Errors.verifyNotZero(assets, "assets");
    }

    /// @notice Claim programs from a gauge
    /// @param gauge Silo gauge to claim rewards from
    /// @param programs Registered programs to claim reward tokens for
    /// @param expectedRewardTokens Reward tokens the Destination expects to claim from given programs
    function claimRewardsToSender(
        address gauge,
        string[] calldata programs,
        address[] memory expectedRewardTokens
    ) external {
        if (msg.sender != holdingDestination) {
            revert Errors.AccessDenied();
        }

        // slither-disable-next-line unused-return
        ISiloIncentivesControllerCL(gauge).claimRewards(address(this), programs);

        uint256 rewardTokenLen = expectedRewardTokens.length;
        address vaultToken = address(siloVault);

        for (uint256 i = 0; i < rewardTokenLen;) {
            address rewardToken = expectedRewardTokens[i];

            if (rewardToken != address(0)) {
                uint256 amount = IERC20(rewardToken).balanceOf(address(this));

                // Don't want to be able to siphon our actual holdings
                uint256 sharesHeld = siloVaultShares;
                if (rewardToken == vaultToken) {
                    if (amount > sharesHeld) {
                        amount -= sharesHeld;
                    } else {
                        amount = 0;
                    }
                }

                if (amount > 0) {
                    SafeERC20.safeTransfer(IERC20(expectedRewardTokens[i]), msg.sender, amount);
                }
            }
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IERC4626
    function previewDeposit(
        uint256 _assets
    ) external view virtual returns (uint256) {
        return siloVault.previewDeposit(_assets) * _toUnderlyingScaleDown / _toUnderlyingScaleUp;
    }

    /// @inheritdoc IERC4626
    function previewRedeem(
        uint256 _shares
    ) external view virtual returns (uint256) {
        uint256 rawShares = _shares * _toUnderlyingScaleUp / _toUnderlyingScaleDown;
        return siloVault.previewRedeem(rawShares);
    }

    /// @inheritdoc IERC4626
    function asset() external view override returns (address) {
        return address(_asset);
    }

    /// @inheritdoc IERC4626
    function totalAssets() external view returns (uint256) {
        return siloVault.convertToAssets(siloVaultShares);
    }

    /// @inheritdoc IERC4626
    function convertToShares(
        uint256 assets
    ) external view returns (uint256) {
        uint256 rawShares = siloVault.convertToShares(assets);
        return rawShares * _toUnderlyingScaleDown / _toUnderlyingScaleUp;
    }

    /// @inheritdoc IERC4626
    function convertToAssets(
        uint256 shares
    ) external view returns (uint256) {
        uint256 scaledShares = shares * _toUnderlyingScaleUp / _toUnderlyingScaleDown;
        return siloVault.convertToAssets(scaledShares);
    }

    /// @inheritdoc IERC4626
    /// @dev Always reverts
    function maxDeposit(
        address
    ) external pure override returns (uint256) {
        _revertNotSupported();
    }

    /// @inheritdoc IERC4626
    /// @dev Always reverts
    function maxRedeem(
        address
    ) external pure override returns (uint256) {
        _revertNotSupported();
    }

    /// @inheritdoc IERC4626
    /// @dev Always reverts
    function maxMint(
        address
    ) external pure override returns (uint256) {
        _revertNotSupported();
    }

    /// @inheritdoc IERC4626
    /// @dev Always reverts
    function previewMint(
        uint256
    ) external pure returns (uint256) {
        _revertNotSupported();
    }

    /// @inheritdoc IERC4626
    function mint(uint256, address) external pure override returns (uint256) {
        _revertNotSupported();
    }

    /// @inheritdoc IERC4626
    /// @dev Always reverts
    function maxWithdraw(
        address
    ) external pure override returns (uint256) {
        _revertNotSupported();
    }

    /// @inheritdoc IERC4626
    /// @dev Always reverts
    function previewWithdraw(
        uint256
    ) external pure virtual returns (uint256) {
        _revertNotSupported();
    }

    /// @inheritdoc IERC4626
    function withdraw(uint256, address, address) external pure returns (uint256) {
        _revertNotSupported();
    }

    /// =====================================================
    /// Functions - Public
    /// =====================================================

    /// @inheritdoc IERC20Metadata
    function decimals() public pure override(IERC20Metadata, ERC20) returns (uint8) {
        return _DECIMALS;
    }

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    /// @notice Revert with a "NotSupported" error
    function _revertNotSupported() private pure {
        revert Errors.NotSupported();
    }
}
