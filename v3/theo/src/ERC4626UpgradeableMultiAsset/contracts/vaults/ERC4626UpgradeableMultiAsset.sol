// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC4626MultiAsset} from "../interfaces/IERC4626MultiAsset.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

abstract contract ERC4626UpgradeableMultiAsset is Initializable, ERC20Upgradeable, IERC4626MultiAsset {
    using Math for uint256;

    /// @custom:storage-location erc7201:openzeppelin.storage.ERC4626
    struct ERC4626MultiAssetStorage {
        IERC20 _underlyingAsset;
        uint8 _underlyingDecimals;
        address[] _depositAssets;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC4626")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ERC4626StorageLocation = 0x0773e532dfede91f04b12a73d3d2acd361424f41f76b4fb79f090161e36b4e00;

    function _getERC4626MultiAssetStorage() private pure returns (ERC4626MultiAssetStorage storage $) {
        assembly {
            $.slot := ERC4626StorageLocation
        }
    }

    /**
     * @dev Attempted to pass in asset and amount arrays of different sizes.
     */
    error ERC4626MultiAssetArrayMismatch();

    /**
     * @dev Attemped to pass in a deposit address that is not supported by this vault.
     */
    error ERC4626MultiAssetUnsupportedDepositAsset(address depositAsset);

    /**
     * @dev Attempted to deposit more assets than the max amount for `receiver`.
     */
    error ERC4626MultiAssetExceededMaxDeposit(address receiver, uint256 assets, uint256 max);

    /**
     * @dev Attempted to mint more shares than the max amount for `receiver`.
     */
    error ERC4626MultiAssetExceededMaxMint(address receiver, uint256 shares, uint256 max);

    /**
     * @dev Attempted to withdraw more assets than the max amount for `receiver`.
     */
    error ERC4626MultiAssetExceededMaxWithdraw(address owner, address asset, uint256 assets, uint256 max);

    /**
     * @dev Attempted to redeem more shares than the max amount for `receiver`.
     */
    error ERC4626MultiAssetExceededMaxRedeem(address owner, uint256 shares, uint256 max);

    /**
     * @dev Attempted to pass in an array of assets that contains duplicates.
     */
    error ERC4626MultiAssetArrayContainsDuplicates();

    /**
     * @dev Attempted to mint or burn zero shares for assets
     */
    error ERC4626MultiAssetZeroSharesForAssets();

    /**
     * @dev Set the underlying asset contract. This must be an ERC20-compatible contract (ERC-20 or ERC-777).
     */
    function __ERC4626MultiAsset_init(IERC20 underlyingAsset_, address[] calldata depositAssets_) internal onlyInitializing {
        ___ERC4626MultiAsset_init_unchained(underlyingAsset_, depositAssets_);
    }

    function ___ERC4626MultiAsset_init_unchained(IERC20 underlyingAsset_, address[] calldata depositAssets_) internal onlyInitializing {
        // check for duplicates in depositAssets
        _checkArrayDuplicates(depositAssets_);
        ERC4626MultiAssetStorage storage $ = _getERC4626MultiAssetStorage();
        (bool success, uint8 assetDecimals) = _tryGetAssetDecimals(underlyingAsset_);
        $._underlyingDecimals = success ? assetDecimals : 18;
        $._underlyingAsset = underlyingAsset_;
        $._depositAssets = depositAssets_;
        emit UpdateDepositAssets(depositAssets_);
    }

    /**
     * @dev Attempts to fetch the asset decimals. A return value of false indicates that the attempt failed in some way.
     */
    function _tryGetAssetDecimals(IERC20 asset_) private view returns (bool ok, uint8 assetDecimals) {
        (bool success, bytes memory encodedDecimals) = address(asset_).staticcall(abi.encodeCall(IERC20Metadata.decimals, ()));
        if (success && encodedDecimals.length >= 32) {
            uint256 returnedDecimals = abi.decode(encodedDecimals, (uint256));
            if (returnedDecimals <= type(uint8).max) {
                return (true, uint8(returnedDecimals));
            }
        }
        return (false, 0);
    }

    /**
     * @dev Updates the depositAsset list in storage
     * @dev Only use this call with sufficient safeguards
     * ex:
     * - Only owner
     * - Total value of Net assets stays the same
     */
    function _updateDepositAssets(address[] calldata newAssets) internal virtual {
        // check for duplicates in newAssets
        _checkArrayDuplicates(newAssets);
        ERC4626MultiAssetStorage storage $ = _getERC4626MultiAssetStorage();
        $._depositAssets = newAssets;
        emit UpdateDepositAssets(newAssets);
    }

    /**
     * @dev Decimals are computed by adding the decimal offset on top of the underlying asset's decimals. This
     * "original" value is cached during construction of the vault contract. If this read operation fails (e.g., the
     * asset has not been created yet), a default of 18 is used to represent the underlying asset's decimals.
     *
     * See {IERC20Metadata-decimals}.
     */
    function decimals() public view virtual override(IERC20Metadata, ERC20Upgradeable) returns (uint8) {
        ERC4626MultiAssetStorage storage $ = _getERC4626MultiAssetStorage();
        return $._underlyingDecimals + _decimalsOffset();
    }

    /** @dev See {IERC4626MultiAsset-asset}. */
    function asset() public view virtual returns (address) {
        ERC4626MultiAssetStorage storage $ = _getERC4626MultiAssetStorage();
        return address($._underlyingAsset);
    }

    /** @dev See {IERC4626MultiAsset-depositAssetsList}. */
    function depositAssetsList() public view virtual returns (address[] memory) {
        ERC4626MultiAssetStorage storage $ = _getERC4626MultiAssetStorage();
        return $._depositAssets;
    }

    /** @dev See {IERC4626MultiAsset-isSupportedDepositAsset}. */
    function isSupportedDepositAsset(address depositAsset) public view virtual returns (bool) {
        ERC4626MultiAssetStorage storage $ = _getERC4626MultiAssetStorage();
        for (uint256 i = 0; i < $._depositAssets.length; i++) {
            if ($._depositAssets[i] == depositAsset) {
                return true;
            }
        }
        return false;
    }

    /** @dev See {IERC4626MultiAsset-totalUnderlyingAssets}. */
    function totalUnderlyingAssets() public view virtual returns (uint256) {
        ERC4626MultiAssetStorage storage $ = _getERC4626MultiAssetStorage();
        uint256 totalUnderlying = 0;
        for (uint256 i = 0; i < $._depositAssets.length; i++) {
            address assetAddress = $._depositAssets[i];
            IERC20 assetContract = IERC20(assetAddress);
            totalUnderlying += _convertDepositAssetToUnderlying(assetAddress, assetContract.balanceOf(address(this)));
        }
        return totalUnderlying;
    }

    /** @dev See {IERC4626MultiAsset-totalDepositAssets}. */
    function totalDepositAssets() public view virtual returns (address[] memory, uint256[] memory, uint256[] memory, uint256) {
        ERC4626MultiAssetStorage storage $ = _getERC4626MultiAssetStorage();
        address[] memory depositAssets = $._depositAssets;
        uint256[] memory amounts = new uint256[](depositAssets.length);
        uint256[] memory values = new uint256[](depositAssets.length);
        uint256 totalUnderlyingValue = 0;

        for (uint256 i = 0; i < depositAssets.length; i++) {
            address assetAddress = depositAssets[i];
            IERC20 assetContract = IERC20(assetAddress);
            uint256 assetBalance = assetContract.balanceOf(address(this));
            amounts[i] = assetBalance;
            uint256 underlyingValue = _convertDepositAssetToUnderlying(assetAddress, assetBalance);
            values[i] = underlyingValue;
            totalUnderlyingValue += underlyingValue;
        }
        return (depositAssets, amounts, values, totalUnderlyingValue);
    }

    /** @dev See {IERC4626MultiAsset-userTotalUnderlyingAssets}. */
    function userTotalUnderlyingAssets(address user) public view virtual returns (uint256) {
        (address[] memory assets, uint256[] memory amounts) = _convertToAssets(balanceOf(user), Math.Rounding.Floor);
        return _getAssetListValue(assets, amounts);
    }

    /** @dev See {IERC4626MultiAsset-convertToShares}. */
    function convertToShares(address[] calldata depositAssets, uint256[] calldata assetAmounts) public view virtual returns (uint256) {
        return _convertToShares(depositAssets, assetAmounts, Math.Rounding.Floor);
    }

    /** @dev See {IERC4626MultiAsset-convertToDepositAssets}. */
    function convertToDepositAssets(uint256 shares) public view virtual returns (address[] memory, uint256[] memory) {
        return _convertToAssets(shares, Math.Rounding.Floor);
    }

    /** @dev See {IERC4626MultiAsset-convertToAssets}. */
    function convertToAssets(uint256 shares) public view virtual returns (uint256) {
        // convert to deposit assets, then get total value in underlying asset terms
        (address[] memory assets, uint256[] memory amounts) = _convertToAssets(shares, Math.Rounding.Floor);
        return _getAssetListValue(assets, amounts);
    }

    /** @dev See {IERC4626MultiAsset-maxDeposit}. */
    function maxDeposit(address, address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    /** @dev See {IERC4626MultiAsset-maxMint}. */
    function maxMint(address) public view virtual returns (uint256) {
        // If no shares exist, mint cannot be called first
        // If no underlying value, mint cannot be called either
        if (totalSupply() == 0 || totalUnderlyingAssets() == 0) {
            return 0;
        }
        return type(uint256).max;
    }

    /** @dev See {IERC4626MultiAsset-maxWithdraw}. */
    function maxWithdraw(address owner) public view virtual returns (address[] memory, uint256[] memory) {
        return _convertToAssets(balanceOf(owner), Math.Rounding.Floor);
    }

    /** @dev See {IERC4626MultiAsset-maxRedeem}. */
    function maxRedeem(address owner) public view virtual returns (uint256) {
        return balanceOf(owner);
    }

    /** @dev See {IERC4626MultiAsset-previewDeposit}. */
    function previewDeposit(address[] calldata depositAssets, uint256[] calldata assetAmounts) public view virtual returns (uint256) {
        return _convertToShares(depositAssets, assetAmounts, Math.Rounding.Floor);
    }

    /** @dev See {IERC4626MultiAsset-previewMint}. */
    function previewMint(uint256 shares) public view virtual returns (address[] memory, uint256[] memory) {
        return _convertToAssets(shares, Math.Rounding.Ceil);
    }

    /** @dev See {IERC4626MultiAsset-previewWithdraw}. */
    function previewWithdraw(address[] calldata withdrawAssets, uint256[] calldata assetAmounts) public view virtual returns (uint256) {
        return _convertToShares(withdrawAssets, assetAmounts, Math.Rounding.Ceil);
    }

    /** @dev See {IERC4626MultiAsset-previewRedeem}. */
    function previewRedeem(uint256 shares) public view virtual returns (address[] memory, uint256[] memory) {
        return _convertToAssets(shares, Math.Rounding.Floor);
    }

    /** @dev See {IERC4626MultiAsset-deposit} */
    function deposit(address[] calldata depositAssets, uint256[] calldata assetAmounts, address receiver) public virtual returns (uint256) {
        if (depositAssets.length != assetAmounts.length) {
            revert ERC4626MultiAssetArrayMismatch();
        }
        for (uint i = 0; i < depositAssets.length; i++) {
            if (!isSupportedDepositAsset(depositAssets[i])) {
                revert ERC4626MultiAssetUnsupportedDepositAsset(depositAssets[i]);
            }
            uint256 maxAssets = maxDeposit(depositAssets[i], receiver);
            if (assetAmounts[i] > maxAssets) {
                revert ERC4626MultiAssetExceededMaxDeposit(receiver, assetAmounts[i], maxAssets);
            }
        }
        // convert assets to shares
        uint256 shares = previewDeposit(depositAssets, assetAmounts);
        _deposit(_msgSender(), receiver, depositAssets, assetAmounts, shares);

        return shares;
    }

    /** @dev See {IERC4626MultiAsset-mint} */
    function mint(uint256 shares, address receiver) public virtual returns (address[] memory, uint256[] memory) {
        uint256 maxShares = maxMint(receiver);
        if (shares > maxShares || maxShares == 0) {
            revert ERC4626MultiAssetExceededMaxMint(receiver, shares, maxShares);
        }
        // convert shares to assets
        (address[] memory assets, uint256[] memory amounts) = previewMint(shares);
        _deposit(_msgSender(), receiver, assets, amounts, shares);

        return (assets, amounts);
    }

    /** @dev See {IERC4626MultiAsset-withdraw} */
    function withdraw(address[] calldata withdrawAssets, uint256[] calldata assetAmounts, address receiver, address owner) public virtual returns (uint256) {
        if (withdrawAssets.length != assetAmounts.length) {
            revert ERC4626MultiAssetArrayMismatch();
        }
        _checkArrayDuplicates(withdrawAssets);

        for (uint i = 0; i < withdrawAssets.length; i++) {
            if (!isSupportedDepositAsset(withdrawAssets[i])) {
                revert ERC4626MultiAssetUnsupportedDepositAsset(withdrawAssets[i]);
            }
            uint256 maxAssets = IERC20(withdrawAssets[i]).balanceOf(address(this));
            if (assetAmounts[i] > maxAssets) {
                revert ERC4626MultiAssetExceededMaxWithdraw(owner, withdrawAssets[i], assetAmounts[i], maxAssets);
            }
        }

        // convert assets to shares
        uint256 shares = previewWithdraw(withdrawAssets, assetAmounts);

        // final check that user has shares
        uint256 maxShares = maxRedeem(owner);
        if (shares > maxShares || maxShares == 0) {
            revert ERC4626MultiAssetExceededMaxRedeem(owner, shares, maxShares);
        }

        _withdraw(_msgSender(), receiver, owner, withdrawAssets, assetAmounts, shares);

        return shares;
    }

    /** @dev See {IERC4626MultiAsset-redeem} */
    function redeem(uint256 shares, address receiver, address owner) public virtual returns (address[] memory, uint256[] memory) {
        uint256 maxShares = maxRedeem(owner);
        if (shares > maxShares) {
            revert ERC4626MultiAssetExceededMaxRedeem(owner, shares, maxShares);
        }

        // convert shares to assets
        (address[] memory assets, uint256[] memory amounts) = previewRedeem(shares);
        _withdraw(_msgSender(), receiver, owner, assets, amounts, shares);

        return (assets, amounts);
    }

    /**
     * @dev Internal conversion function (from assets to shares) with support for rounding direction.
     */
    function _convertToShares(address[] calldata assets, uint256[] calldata assetAmounts, Math.Rounding rounding) internal view virtual returns (uint256) {
        // get total value of assets in terms of the vault's asset
        uint256 totalValue = _getAssetListValue(assets, assetAmounts);
        return totalValue.mulDiv(totalSupply() + 10 ** _decimalsOffset(), totalUnderlyingAssets() + 1, rounding);
    }

    /**
     * @dev Internal conversion function (from shares to assets) with support for rounding direction.
     * This function converts shares to their equivalent value and then distributes that value
     * proportionally across assets based on current vault composition.
     */
    function _convertToAssets(uint256 shares, Math.Rounding rounding) internal view virtual returns (address[] memory, uint256[] memory) {
        (address[] memory assets, uint256[] memory vaultBalances, uint256[] memory assetValues, uint256 totalVaultValue) = totalDepositAssets();
        if (assets.length == 0 || shares == 0) {
            return (assets, new uint256[](assets.length));
        }

        // convert shares to total value in underlying asset terms
        uint256 totalShareValue = shares.mulDiv(totalUnderlyingAssets() + 1, totalSupply() + 10 ** _decimalsOffset(), rounding);

        // distribute total value proportianlly based on current valut composition
        uint256[] memory amounts = new uint256[](assets.length);
        for (uint i = 0; i < assets.length; i++) {
            if (totalVaultValue == 0 || vaultBalances[i] == 0 || assetValues[i] == 0) {
                amounts[i] = 0;
            } else {
                uint256 assetValueFromShares = totalShareValue.mulDiv(assetValues[i], totalVaultValue, rounding);
                amounts[i] = assetValueFromShares.mulDiv(vaultBalances[i], assetValues[i], rounding);
            }
        }
        return (assets, amounts);
    }

    /**
     * @dev Deposit/mint common workflow
     */
    function _deposit(address caller, address receiver, address[] memory assets, uint256[] memory amounts, uint256 shares) internal virtual {
        for (uint256 i = 0; i < assets.length; i++) {
            SafeERC20.safeTransferFrom(IERC20(assets[i]), caller, address(this), amounts[i]);
        }
        if (shares == 0) {
            revert ERC4626MultiAssetZeroSharesForAssets();
        }
        _mint(receiver, shares);

        emit Deposit(caller, receiver, assets, amounts, shares);
    }

    /**
     * @dev Redeem workflow
     */
    function _withdraw(address caller, address receiver, address owner, address[] memory assets, uint256[] memory amounts, uint256 shares) internal virtual {
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }
        if (shares == 0) {
            revert ERC4626MultiAssetZeroSharesForAssets();
        }
        _burn(owner, shares);
        for (uint256 i = 0; i < assets.length; i++) {
            SafeERC20.safeTransfer(IERC20(assets[i]), receiver, amounts[i]);
        }
        emit Withdraw(caller, receiver, owner, assets, amounts, shares);
    }

    /**
     * @dev Internal function to calculate the total value of a list of assets in terms of the vault's asset.
     */
    function _getAssetListValue(address[] memory assets, uint256[] memory amounts) internal view virtual returns (uint256) {
        if (assets.length != amounts.length) {
            return 0;
        }
        uint256 totalValue = 0;
        for (uint256 i = 0; i < assets.length; i++) {
            address assetAddress = assets[i];
            uint256 amount = amounts[i];
            totalValue += _convertDepositAssetToUnderlying(assetAddress, amount);
        }
        return totalValue;
    }

    /**
     * @notice Internal function to convert an asset to the vault's underlying asset
     * @dev implementation contract MUST override this function
     */
    function _convertDepositAssetToUnderlying(address depositAsset, uint256 amount) internal view virtual returns (uint256);

    /**
     * @dev Internal function to check for duplicates in an array of addresses.
     */
    function _checkArrayDuplicates(address[] calldata addressArray) internal pure {
        for (uint i = 0; i < addressArray.length - 1; i++) {
            for (uint j = i + 1; j < addressArray.length; j++) {
                if (addressArray[i] == addressArray[j]) {
                    revert ERC4626MultiAssetArrayContainsDuplicates();
                }
            }
        }
    }

    function _decimalsOffset() internal view virtual returns (uint8) {
        return 0;
    }
}
