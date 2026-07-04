// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {BaseRedeemer} from "src/MintRedeem/BaseRedeemer.sol";
import {Order, OrderType, MintRedeemMode} from "src/MintRedeem/Structs.sol";
import {IELUSD} from "src/interfaces/IELUSD.sol";
import {IRedeemer} from "src/interfaces/IRedeemer.sol";

/// @title Redeemer
/// @notice A contract for redeeming stablecoins from ELUSD
contract Redeemer is BaseRedeemer, IRedeemer {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error InvalidFee();

    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/

    event AssetReserveSet(address indexed assetReserve);
    event RedemptionFeeSet(uint256 redemptionFee);
    event FeeRecipientSet(address indexed feeRecipient);
    event RedemptionModeSet(MintRedeemMode redemptionMode);

    /*//////////////////////////////////////////////////////////////
                             CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Role for managing redemption fees
    bytes32 public constant FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");

    /// @notice Fee denominator (10000 = 100%)
    uint256 public constant FEE_DENOMINATOR = 10000;

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice Address of asset reserve
    address public assetReserve;

    /// @notice Redeem fee in basis points (e.g., 10 = 0.1%)
    uint256 public redemptionFee;

    /// @notice Address that receives the redeem fees
    address public feeRecipient;

    /// @notice The redemption mode (INSTANT or QUEUED)
    MintRedeemMode public redemptionMode;

    /*//////////////////////////////////////////////////////////////
                             INITIALIZATION
    //////////////////////////////////////////////////////////////*/

    constructor(address _admin, address _ELUSD, address _router, address _assetReserve, uint256 _maxRedeemPerBlock) {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        ELUSD = IELUSD(_ELUSD);
        _setRouter(_router);
        _setAssetReserve(_assetReserve);
        _setMaxRedeemPerBlock(_maxRedeemPerBlock);
        _setMaxPrice(1.03e18);

        // Initialize with 0 fee
        // redemptionFee = 0;
        feeRecipient = _admin;

        // Initialize redemption mode to QUEUED
        redemptionMode = MintRedeemMode.QUEUED;
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Sets the asset reserve address
    /// @param _assetReserve Address of the asset reserve
    function setAssetReserve(address _assetReserve) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setAssetReserve(_assetReserve);
    }

    /// @notice Sets the redeem fee
    /// @param _redemptionFee The redeem fee in basis points (e.g., 10 = 0.1%)
    function setRedemptionFee(uint256 _redemptionFee) external onlyRole(FEE_MANAGER_ROLE) {
        redemptionFee = _redemptionFee;
        emit RedemptionFeeSet(_redemptionFee);
    }

    /// @notice Sets the fee recipient address
    /// @param _feeRecipient Address that will receive the fees
    function setFeeRecipient(address _feeRecipient) external onlyRole(FEE_MANAGER_ROLE) {
        if (_feeRecipient == address(0)) revert ZeroInput();
        feeRecipient = _feeRecipient;
        emit FeeRecipientSet(_feeRecipient);
    }

    /// @notice Sets the redemption mode
    /// @param _redemptionMode The redemption mode (INSTANT or QUEUED)
    function setRedemptionMode(MintRedeemMode _redemptionMode) external onlyRole(DEFAULT_ADMIN_ROLE) {
        redemptionMode = _redemptionMode;
        emit RedemptionModeSet(_redemptionMode);
    }

    /*//////////////////////////////////////////////////////////////
                                MINTING
    //////////////////////////////////////////////////////////////*/

    /// @notice Redeems ELUSD for collateral tokens
    /// @param order The order to redeem
    /// @return The amount of collateral tokens received
    function redeem(Order memory order) external onlyRouter returns (uint256) {
        if (order.orderType != OrderType.REDEEM) revert InvalidOrder();
        if (order.expiry < block.timestamp) revert OrderExpired();
        _verifyOrder(order);

        uint256 collateralAmount = quoteRedeem(order.collateralAsset, order.elusdAmount);
        if (collateralAmount < order.collateralAmount) revert SlippageExceeded();

        _belowMaxRedeemPerBlock(order.elusdAmount);
        redeemedPerBlock[block.number] += order.elusdAmount;
        ELUSD.burn(order.benefactor, order.elusdAmount);

        return collateralAmount;
    }

    /*//////////////////////////////////////////////////////////////
                            PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Gets the redemption mode
    /// @dev Parameters are kept for interface compatibility but unused
    /// @return The redemption mode, if INSTANT, the redemption will be served immediately, if QUEUED, the redemption will be queued and served later
    function getRedemptionMode(address /*_collateralAsset*/, uint256 /*_elusdAmount*/)
        external
        view
        returns (MintRedeemMode)
    {
        return redemptionMode;
    }

    /// @notice Checks if the asset is supported
    /// @param _collateralAsset The collateral asset to check
    /// @return True if the asset is supported, false otherwise
    function isAssetSupported(address _collateralAsset) external view returns (bool) {
        return assetInfo[_collateralAsset].isSupported;
    }

    /// @notice Calculates the amount of collateral that would be received for a given ELUSD amount
    /// @param _token Address of the collateral token to receive
    /// @param _elusdAmount Amount of ELUSD to burn
    /// @return The amount of collateral tokens that would be received (after fee deduction)
    function quoteRedeem(address _token, uint256 _elusdAmount) public view returns (uint256) {
        uint8 decimals = assetInfo[_token].decimals;
        // We quote the price of the token in USD (assuming 1 ELUSD = 1 USD)
        uint256 unitPrice = assetInfo[_token].oracle.getQuote(10 ** decimals, _token, USD);

        if (unitPrice > maxPrice) revert InvalidPrice();

        // If the price is greater than 1e18, we use the price as is, otherwise we use 1e18
        // Select price favorable to the protocol
        // NOTE: This is not a stable redeemer, so if the collateral token price is lower than 1e18, it harms the protocol.
        uint256 price = unitPrice > 1e18 ? unitPrice : 1e18;

        // Calculate how much of the token we should return for the ELUSD amount
        // Adjust for token decimals
        uint256 collateralAmount = (_elusdAmount * 10 ** decimals) / price;

        // Deduct fee if applicable
        if (redemptionFee > 0) {
            uint256 feeAmount = (collateralAmount * redemptionFee) / FEE_DENOMINATOR;
            collateralAmount -= feeAmount;
        }

        return collateralAmount;
    }

    /// @notice Calculates the fee amount for a given ELUSD redemption
    /// @param _token Address of the collateral token to receive
    /// @param _elusdAmount Amount of ELUSD to burn
    /// @return The fee amount in collateral tokens
    function calculateFee(address _token, uint256 _elusdAmount) public view returns (uint256) {
        if (redemptionFee == 0) return 0;

        uint8 decimals = assetInfo[_token].decimals;
        uint256 unitPrice = assetInfo[_token].oracle.getQuote(10 ** decimals, _token, USD);

        if (unitPrice > maxPrice) revert InvalidPrice();

        uint256 price = unitPrice > 1e18 ? unitPrice : 1e18;
        uint256 collateralAmount = (_elusdAmount * 10 ** decimals) / price;

        return (collateralAmount * redemptionFee) / FEE_DENOMINATOR;
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Internal function to set the asset reserve address
    /// @param _assetReserve Address of the asset reserve
    function _setAssetReserve(address _assetReserve) internal {
        if (_assetReserve == address(0)) revert ZeroInput();
        assetReserve = _assetReserve;
        emit AssetReserveSet(_assetReserve);
    }
}
