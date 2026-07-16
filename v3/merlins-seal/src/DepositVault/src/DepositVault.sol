// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {IDepositVault} from "./interfaces/IDepositVault.sol";
import {IAccessRegistry} from "./interfaces/IAccessRegistry.sol";
import {IOracleRegistry} from "./interfaces/IOracleRegistry.sol";
import {IParamRegistry} from "./interfaces/IParamRegistry.sol";
import {IAssetsRouter} from "./interfaces/IAssetsRouter.sol";

import {Errors} from "./libraries/Errors.sol";
import {NormalizationLib} from "./libraries/NormalizationLib.sol";

import {Constants} from "./common/Constants.sol";
import {Token} from "./Token.sol";

/// @title DepositVault
/// @author luoyhang003
/// @notice This contract manages deposits of underlying assets in exchange for vault tokens.
/// @dev It mints vault tokens to whitelisted users based on the asset’s oracle price and applies fees and caps.
///      Supports deposit functions, preview simulations, and admin control over assets.
contract DepositVault is
    IDepositVault,
    AccessControl,
    ReentrancyGuard,
    Constants
{
    using Math for uint256;
    using NormalizationLib for uint256;

    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Role allowed to set new AssetsRouter
    /// @dev Only addresses with this role can call `setAssetsRouter`
    /// @dev Calculated as keccak256("VAULT_ADMIN_ROLE").
    bytes32 public constant VAULT_ADMIN_ROLE = keccak256("VAULT_ADMIN_ROLE");

    /// @notice Role allowed to manage underlying assets
    /// @dev Only addresses with this role can call `addUnderlyingAsset` and `removeUnderlyingAsset`
    /// @dev Calculated as keccak256("VAULT_OPERATOR_ROLE").
    bytes32 public constant VAULT_OPERATOR_ROLE =
        keccak256("VAULT_OPERATOR_ROLE");

    /// @notice ERC20 vault token.
    /// @dev Minted when users deposit assets or mint shares.
    Token public immutable vaultToken;

    /// @notice Access registry for fetching whitelist and blacklist.
    IAccessRegistry public accessRegistry;

    /// @notice Oracle registry for fetching asset and vault token prices.
    IOracleRegistry public oracleRegistry;

    /// @notice Parameter registry for fee rates, deposit caps, etc.
    IParamRegistry public paramRegistry;

    /// @notice Router to forward deposited assets into underlying strategies.
    IAssetsRouter public assetsRouter;

    /// @notice List of all supported underlying assets.
    address[] public underlyingAssets;

    /// @notice Mapping of supported assets.
    mapping(address => bool) public isUnderlyingAsset;

    /// @notice Cached decimals for supported tokens.
    mapping(address => uint8) public tokenDecimals;

    /// @notice Tracks deposited amount per underlying asset (net of fees).
    mapping(address => uint256) public tokenDeposited;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deploys the DepositVault contract.
    /// @param _defaultAdmin Address to receive the DEFAULT_ADMIN_ROLE.
    /// @param _adminRole Address granted the VAULT_ADMIN_ROLE.
    /// @param _operatorRole Address granted the VAULT_OPERATOR_ROLE.
    /// @param _vaultToken Address of the vault token contract.
    /// @param _accessRegistry Address of the access registry contract.
    /// @param _oracleRegistry Address of the oracle registry contract.
    /// @param _paramRegistry Address of the parameter registry contract.
    /// @param _assetsRouter Address of the assets router contract.
    /// @param _underlyingAssets Initial list of supported assets.
    /// @dev Ensures addresses are valid and assets have valid oracles/decimals.
    ///      Grants infinite approval of assets to the router.
    constructor(
        address _defaultAdmin,
        address _adminRole,
        address _operatorRole,
        address _vaultToken,
        address _accessRegistry,
        address _oracleRegistry,
        address _paramRegistry,
        address _assetsRouter,
        address[] memory _underlyingAssets
    ) {
        if (
            _defaultAdmin == address(0) ||
            _adminRole == address(0) ||
            _operatorRole == address(0) ||
            _vaultToken == address(0) ||
            _accessRegistry == address(0) ||
            _oracleRegistry == address(0) ||
            _paramRegistry == address(0) ||
            _assetsRouter == address(0)
        ) revert Errors.ZeroAddress();

        _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
        _grantRole(VAULT_ADMIN_ROLE, _adminRole);
        _grantRole(VAULT_OPERATOR_ROLE, _operatorRole);

        vaultToken = Token(_vaultToken);

        accessRegistry = IAccessRegistry(_accessRegistry);
        oracleRegistry = IOracleRegistry(_oracleRegistry);
        paramRegistry = IParamRegistry(_paramRegistry);
        assetsRouter = IAssetsRouter(_assetsRouter);

        uint256 i;
        uint256 length = _underlyingAssets.length;
        for (i; i < length; i++) {
            address asset = _underlyingAssets[i];

            if (asset == address(0)) revert Errors.ZeroAddress();
            if (oracleRegistry.getOracle(asset) == address(0))
                revert Errors.InvalidOracle();

            isUnderlyingAsset[asset] = true;
            underlyingAssets.push(asset);

            uint8 decimals = ERC20(asset).decimals();

            if (decimals > 18) revert Errors.InvalidDecimals();
            tokenDecimals[asset] = decimals;

            TransferHelper.safeApprove(
                asset,
                address(assetsRouter),
                type(uint256).max
            );

            emit UnderlyingAssetAdded(asset);
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deposit an underlying asset and receive vault shares.
    /// @param _asset Address of the asset to deposit.
    /// @param _amount Amount of asset to deposit.
    /// @return shares_ Number of shares minted.
    /// @dev Equivalent to `depositFor` with msg.sender as receiver.
    function deposit(
        address _asset,
        uint256 _amount
    ) external returns (uint256 shares_) {
        shares_ = _depositFor(_asset, _amount, msg.sender);
    }

    /// @notice Deposit an underlying asset on behalf of another account.
    /// @param _asset Address of the asset to deposit.
    /// @param _amount Amount of asset to deposit.
    /// @param _receiver Recipient of the minted shares.
    /// @return shares_ Number of shares minted.
    /// @dev Reverts if receiver is zero address.
    function depositFor(
        address _asset,
        uint256 _amount,
        address _receiver
    ) external returns (uint256 shares_) {
        if (_receiver == address(0)) revert Errors.ZeroAddress();

        shares_ = _depositFor(_asset, _amount, _receiver);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the cutoff vault token price (e.g. for settlement).
    /// @return price_ Current vault token cutoff price.
    /// @dev Fetches the cutoff price directly from the oracle registry.
    function exchangePrice() external view returns (uint256 price_) {
        return oracleRegistry.onlyGetVaultTokenCutOffPrice(0);
    }

    /// @notice Converts underlying assets to equivalent vault shares.
    /// @param _asset Address of the underlying asset.
    /// @param _amount Amount of underlying asset.
    /// @return shares_ Equivalent vault shares.
    /// @return underlyingPrice_ Price of the underlying asset.
    /// @return vaultTokenPrice_ Price of the vault token.
    /// @dev Normalizes `_amount` to 18 decimals before conversion.
    ///      Uses floor rounding to avoid overestimating shares.
    function convertToShares(
        address _asset,
        uint256 _amount
    )
        public
        view
        returns (
            uint256 shares_,
            uint256 underlyingPrice_,
            uint256 vaultTokenPrice_
        )
    {
        underlyingPrice_ = oracleRegistry.peek(_asset);
        vaultTokenPrice_ = oracleRegistry.getVaultTokenPrice(0);

        uint8 decimals = tokenDecimals[_asset];

        shares_ = _amount.normalize(decimals).mulDiv(
            underlyingPrice_,
            vaultTokenPrice_,
            Math.Rounding.Floor
        );
    }

    /// @notice Converts vault shares to equivalent underlying assets.
    /// @param _asset Address of the underlying asset.
    /// @param _shares Number of vault shares.
    /// @return assets_ Equivalent underlying asset amount.
    /// @return underlyingPrice_ Price of the underlying asset.
    /// @return vaultTokenPrice_ Price of the vault token.
    /// @dev Denormalizes values back from 18 decimals to asset decimals.
    ///      Uses floor rounding to avoid overestimating asset returns.
    function convertToAssets(
        address _asset,
        uint256 _shares
    )
        public
        view
        returns (
            uint256 assets_,
            uint256 underlyingPrice_,
            uint256 vaultTokenPrice_
        )
    {
        underlyingPrice_ = oracleRegistry.peek(_asset);
        vaultTokenPrice_ = oracleRegistry.getVaultTokenPrice(0);

        uint8 decimals = tokenDecimals[_asset];

        assets_ = _shares
            .mulDiv(vaultTokenPrice_, underlyingPrice_, Math.Rounding.Floor)
            .denormalize(decimals);
    }

    /// @notice Previews deposit outcome including shares, fee, and prices.
    /// @param _asset Address of the underlying asset.
    /// @param _amount Deposit amount.
    /// @return shares_ Number of shares minted.
    /// @return fee_ Fee charged on deposit.
    /// @return underlyingPrice_ Price of the underlying asset.
    /// @return vaultTokenPrice_ Price of the vault token.
    /// @dev Simulates deposit logic without state changes.
    ///      Performs fee deduction, cap checks, and price fetches.
    function previewDeposit(
        address _asset,
        uint256 _amount
    )
        public
        view
        returns (
            uint256 shares_,
            uint256 fee_,
            uint256 underlyingPrice_,
            uint256 vaultTokenPrice_
        )
    {
        if (!accessRegistry.isWhitelisted(msg.sender))
            revert Errors.UserNotWhitelisted();
        if (!isUnderlyingAsset[_asset]) revert Errors.UnsupportedAsset();
        if (!paramRegistry.getDepositEnabled(_asset))
            revert Errors.DepositPaused();

        uint256 feeRate = paramRegistry.getMintFeeRate(_asset);
        if (feeRate > 0) {
            fee_ = _amount.mulDiv(feeRate, FEE_DENOMINATOR, Math.Rounding.Ceil);
        }

        uint256 netAmount = _amount - fee_;
        uint256 tokenDepositCap = paramRegistry.getTokenDepositCap(_asset);
        if (
            tokenDepositCap != 0 &&
            tokenDeposited[_asset] + netAmount > tokenDepositCap
        ) revert Errors.ExceedTokenDepositCap();

        (shares_, underlyingPrice_, vaultTokenPrice_) = convertToShares(
            _asset,
            netAmount
        );

        if (
            vaultToken.totalSupply() + shares_ >
            paramRegistry.getTotalDepositCap()
        ) revert Errors.ExceedTotalDepositCap();
    }

    /// @notice Returns list of all supported underlying assets.
    /// @return underlyings Array of supported assets.
    /// @dev Returns storage array directly; use cautiously in gas-sensitive contexts.
    function getUnderlyings()
        external
        view
        returns (address[] memory underlyings)
    {
        return underlyingAssets;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Adds a new underlying asset to the vault.
    /// @param _asset Address of the asset to add.
    /// @dev Only callable by operator role.
    ///      Requires valid oracle and decimals <= 18.
    ///      Grants infinite approval to router.
    function addUnderlyingAsset(
        address _asset
    ) external onlyRole(VAULT_OPERATOR_ROLE) {
        if (underlyingAssets.length >= paramRegistry.getArrayLengthLimit())
            revert Errors.ExceedArrayLengthLimit();
        if (_asset == address(0)) revert Errors.ZeroAddress();
        if (isUnderlyingAsset[_asset]) revert Errors.AssetAlreadyAdded();
        if (oracleRegistry.getOracle(_asset) == address(0))
            revert Errors.InvalidOracle();

        isUnderlyingAsset[_asset] = true;
        underlyingAssets.push(_asset);

        uint8 decimals = ERC20(_asset).decimals();

        if (decimals > 18) revert Errors.InvalidDecimals();
        tokenDecimals[_asset] = decimals;

        TransferHelper.safeApprove(
            _asset,
            address(assetsRouter),
            type(uint256).max
        );

        emit UnderlyingAssetAdded(_asset);
    }

    /// @notice Removes an underlying asset from the vault.
    /// @param _asset Address of the asset to remove.
    /// @dev Only callable by operator role.
    ///      Resets approval to zero and updates storage.
    function removeUnderlyingAsset(
        address _asset
    ) external onlyRole(VAULT_OPERATOR_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();
        if (!isUnderlyingAsset[_asset]) revert Errors.AssetAlreadyRemoved();

        uint256 length = underlyingAssets.length;
        uint256 i;
        for (i; i < length; i++) {
            if (underlyingAssets[i] == _asset) {
                underlyingAssets[i] = underlyingAssets[length - 1];
                underlyingAssets.pop();
                break;
            }
        }
        isUnderlyingAsset[_asset] = false;

        TransferHelper.safeApprove(_asset, address(assetsRouter), 0);

        emit UnderlyingAssetRemoved(_asset);
    }

    /// @notice Forcefully routes a specified amount of an asset through the assets router.
    /// @dev This function can only be called by an account with the {VAULT_OPERATOR_ROLE}.
    ///      It is typically used in exceptional or administrative cases where assets
    ///      must be manually routed to the designated destination, bypassing standard
    ///      user-driven flows.
    ///      Reverts if the asset address is zero or the amount is zero.
    /// @param _asset The address of the underlying asset to be routed.
    /// @param _amount The amount of the underlying asset to be routed.
    function forceRouteAssets(
        address _asset,
        uint256 _amount
    ) external onlyRole(VAULT_OPERATOR_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();
        if (_amount == 0) revert Errors.ZeroAmount();

        assetsRouter.route(_asset, _amount);

        emit ForceRouteAssets(_asset, _amount);
    }

    /// @notice Updates the asset router contract.
    /// @param _assetsRouter New router address.
    /// @dev Only callable by admin role.
    ///      Revokes approvals for old router and re-approves new one.
    function setAssetsRouter(
        address _assetsRouter
    ) external onlyRole(VAULT_ADMIN_ROLE) {
        if (_assetsRouter == address(0)) revert Errors.ZeroAddress();
        if (_assetsRouter == address(assetsRouter))
            revert Errors.SameRouterAddress();

        uint256 length = underlyingAssets.length;
        uint256 i;
        for (i; i < length; i++) {
            TransferHelper.safeApprove(
                underlyingAssets[i],
                address(assetsRouter),
                0
            );
            TransferHelper.safeApprove(
                underlyingAssets[i],
                _assetsRouter,
                type(uint256).max
            );
        }

        emit SetAssetsRouter(address(assetsRouter), _assetsRouter);

        assetsRouter = IAssetsRouter(_assetsRouter);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Internal deposit logic used by deposit and depositFor.
    /// @param _asset Address of asset to deposit.
    /// @param _amount Deposit amount.
    /// @param _receiver Recipient of vault shares.
    /// @return shares_ Number of shares minted.
    /// @dev Applies fee, checks caps, transfers funds, and mints shares.
    function _depositFor(
        address _asset,
        uint256 _amount,
        address _receiver
    ) internal nonReentrant returns (uint256 shares_) {
        if (_amount == 0) revert Errors.DepositZeroAsset();

        uint256 fee;
        uint256 underlyingPrice;
        uint256 vaultTokenPrice;
        (shares_, fee, underlyingPrice, vaultTokenPrice) = previewDeposit(
            _asset,
            _amount
        );

        if (shares_ == 0) revert Errors.MintZeroShare();

        TransferHelper.safeTransferFrom(
            _asset,
            msg.sender,
            address(this),
            _amount
        );

        TransferHelper.safeTransfer(
            _asset,
            paramRegistry.getFeeRecipient(),
            fee
        );

        uint256 netAmount = _amount - fee;

        tokenDeposited[_asset] += netAmount;

        assetsRouter.route(_asset, netAmount);

        vaultToken.mint(_receiver, shares_);

        emit Deposit(
            _asset,
            _amount,
            shares_,
            fee,
            underlyingPrice,
            vaultTokenPrice
        );
    }
}
