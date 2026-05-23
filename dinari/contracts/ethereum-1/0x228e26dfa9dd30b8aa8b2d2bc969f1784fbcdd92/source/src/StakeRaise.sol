// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {UnityVault} from "./UnityVault.sol";
import {AssetVault, ERC4626} from "./AssetVault.sol";
import {ILido} from "./ILido.sol";
import {Ownable} from "solady/src/auth/Ownable.sol";
import {Initializable} from "solady/src/utils/Initializable.sol";
import {UUPSUpgradeable} from "solady/src/utils/UUPSUpgradeable.sol";
import {SafeTransferLib} from "solady/src/utils/SafeTransferLib.sol";
import {FixedPointMathLib} from "solady/src/utils/FixedPointMathLib.sol";

/// @dev To get the number of stETH deposited by an account, use balanceOf(account)
/// Reward token distributions handled separately
contract StakeRaise is Initializable, UUPSUpgradeable, Ownable, UnityVault {
    /// ------------------ Types ------------------ ///

    error DepositTooSmall();
    error WithdrawsLocked();

    event WithdrawalsLocked();
    event WithdrawalsUnlocked();

    /// ------------------ Storage ------------------ ///

    struct StakeRaiseStorage {
        address asset;
        string name;
        string symbol;
        uint8 decimals;
        address assetVault;
        mapping(address => uint256) vaultBalances;
        mapping(address => uint256) accruedPoints;
        uint256 totalAccruedPoints;
        bool withdrawLocked;
    }

    // keccak256(abi.encode(uint256(keccak256("solidviolet.storage.StakeRaise")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant STAKERAISE_STORAGE_POSITION =
        0x58f5323a293346c609e9b9c9396b9bb59f83e4dd4930bed5c3ccc955754e6000;

    function getStakeRaiseStorage() internal pure returns (StakeRaiseStorage storage $) {
        assembly {
            $.slot := STAKERAISE_STORAGE_POSITION
        }
    }

    /// ------------------ Initializer ------------------ ///

    function initialize(address asset_, string memory name_, string memory symbol_) public initializer {
        _initializeOwner(msg.sender);

        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        $.asset = asset_;
        $.name = name_;
        $.symbol = symbol_;

        (bool success, uint8 decimals_) = _tryGetAssetDecimals(asset_);
        $.decimals = success ? decimals_ : _DEFAULT_UNDERLYING_DECIMALS;

        address _assetVault =
            address(new AssetVault(asset_, string.concat(name_, " Stake Vault"), string.concat("stvlt", symbol_)));
        $.assetVault = _assetVault;

        // unlimited approval for asset vault
        SafeTransferLib.safeApprove(asset_, _assetVault, type(uint256).max);
        SafeTransferLib.safeApprove(asset_, address(this), type(uint256).max);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    constructor() {
        _disableInitializers();
    }

    /// ------------------ Getters ------------------ ///

    function asset() public view override returns (address) {
        return getStakeRaiseStorage().asset;
    }

    function assetVault() public view returns (address) {
        return getStakeRaiseStorage().assetVault;
    }

    function name() public view override returns (string memory) {
        return getStakeRaiseStorage().name;
    }

    function symbol() public view override returns (string memory) {
        return getStakeRaiseStorage().symbol;
    }

    function decimals() public view override returns (uint8) {
        return getStakeRaiseStorage().decimals;
    }

    /// @dev Returns total accrued contribution for an account
    function contribution(address account) public view returns (uint256) {
        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        // Add unharvested yield to accrued contribution
        uint256 _unwrappedAssets = ERC4626($.assetVault).previewRedeem($.vaultBalances[account]);
        uint256 _balance = balanceOf(account);
        uint256 _points = $.accruedPoints[account];
        if (_unwrappedAssets > _balance) {
            _points += _unwrappedAssets - _balance;
        }
        return _points;
    }

    function totalContributions() public view returns (uint256) {
        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        uint256 _totalVaultAssets = ERC4626($.assetVault).totalAssets();
        uint256 _totalSupply = totalSupply();
        uint256 _totalPoints = $.totalAccruedPoints;
        if (_totalVaultAssets > _totalSupply) {
            _totalPoints += _totalVaultAssets - _totalSupply;
        }
        return _totalPoints;
    }

    /// ------------------ Admin ------------------ ///

    function lockWithdrawals() public onlyOwner {
        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        $.withdrawLocked = true;
        emit WithdrawalsLocked();
    }

    function unlockWithdrawals() public onlyOwner {
        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        $.withdrawLocked = false;
        emit WithdrawalsUnlocked();
    }

    /// ------------------ Vault ------------------ ///

    function stakeEthAndDeposit() public payable virtual returns (uint256 shares) {
        if (msg.value > maxEthDeposit() || msg.value > maxDeposit(msg.sender)) revert DepositMoreThanMax();
        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        address _asset = $.asset;
        shares = ILido(_asset).submit{value: msg.value}(address(0));

        _deposit(address(this), msg.sender, shares, shares);
    }

    function maxEthDeposit() public view returns (uint256) {
        return ILido(getStakeRaiseStorage().asset).getCurrentStakeLimit();
    }

    function _deposit(address by, address to, uint256 assets, uint256 shares) internal override {
        super._deposit(by, to, assets, shares);

        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        address _assetVault = $.assetVault;
        // Validate deposit too small
        if (ERC4626(_assetVault).previewDeposit(assets) == 0) revert DepositTooSmall();
        uint256 _vaultShares = ERC4626(_assetVault).deposit(assets, address(this));
        // Store additional vault balance for user
        $.vaultBalances[to] += _vaultShares;
    }

    function _withdraw(address by, address to, address owner, uint256 assets, uint256 shares) internal override {
        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        if ($.withdrawLocked) revert WithdrawsLocked();

        uint256 _vaultBalance = $.vaultBalances[owner];
        uint256 _tokenBalance = balanceOf(owner);
        uint256 _unwrap;
        if (assets < _tokenBalance) {
            _unwrap = FixedPointMathLib.fullMulDiv(assets, _vaultBalance, _tokenBalance);
        } else {
            _unwrap = _vaultBalance;
        }
        address _assetVault = $.assetVault;
        uint256 _unwrappedAssets;
        if (ERC4626(_assetVault).previewRedeem(_unwrap) < assets) {
            // Withdraw assets exactly
            uint256 _wrappedAssetsBurned = ERC4626(_assetVault).withdraw(assets, address(this), address(this));
            if (_wrappedAssetsBurned < _vaultBalance) {
                $.vaultBalances[owner] = _vaultBalance - _wrappedAssetsBurned;
            } else {
                delete $.vaultBalances[owner];
            }
            _unwrappedAssets = assets;
        } else {
            // Redeem wrapped assets proportionally
            $.vaultBalances[owner] = _vaultBalance - _unwrap;
            _unwrappedAssets = ERC4626(_assetVault).redeem(_unwrap, address(this), address(this));
        }
        // Credit user with excess assets
        if (_unwrappedAssets > assets) {
            uint256 _points = _unwrappedAssets - assets;
            $.accruedPoints[owner] += _points;
            $.totalAccruedPoints += _points;
        }
        // Untransferred assets accumulate on this contract, these are accrued contributions

        super._withdraw(by, to, owner, assets, shares);
    }

    /// @dev Realize accrued contributions for an account
    // TODO: function compound(address account) public onlyOwner

    /// @dev Withdraw accrued asset contributions
    /// All asset balance on this contract is considered accrued contributions
    function withdrawContributions() public onlyOwner {
        StakeRaiseStorage storage $ = getStakeRaiseStorage();
        address _asset = $.asset;
        uint256 _accruedContributions = SafeTransferLib.balanceOf(_asset, address(this));
        SafeTransferLib.safeTransfer(_asset, msg.sender, _accruedContributions);
    }
}
