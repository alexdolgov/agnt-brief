// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {BaseMinter} from "src/MintRedeem/BaseMinter.sol";
import {Order, OrderType, MintRedeemMode} from "src/MintRedeem/Structs.sol";
import {IELUSD} from "src/interfaces/IELUSD.sol";
import {IMinter} from "src/interfaces/IMinter.sol";

/// @title StableMinter
/// @notice A contract for minting ELUSD using stablecoin collateral
/// @dev Accepts only stablecoin assets and processes mint orders from authorized router
contract StableMinter is BaseMinter, IMinter {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /*//////////////////////////////////////////////////////////////
                             INITIALIZATION
    //////////////////////////////////////////////////////////////*/

    constructor(address _admin, address _ELUSD, address _router, uint256 _maxMintPerBlock) {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        ELUSD = IELUSD(_ELUSD);
        _setRouter(_router);
        _setMaxMintPerBlock(_maxMintPerBlock);
        _setMinPrice(0.97e18);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /*//////////////////////////////////////////////////////////////
                                MINTING
    //////////////////////////////////////////////////////////////*/

    /// @notice Mint ELUSD
    /// @param order The order to mint
    /// @dev Only the router can call this function
    function mint(Order memory order) external onlyRouter returns (uint256) {
        if (order.orderType != OrderType.MINT) revert InvalidOrder();
        if (order.expiry < block.timestamp) revert OrderExpired();
        _verifyOrder(order);

        uint256 amountToMint = quoteDeposit(order.collateralAsset, order.collateralAmount);
        if (amountToMint < order.elusdAmount) revert SlippageExceeded();

        _belowMaxMintPerBlock(amountToMint);
        mintedPerBlock[block.number] += amountToMint;
        ELUSD.mint(order.beneficiary, amountToMint);

        return amountToMint;
    }

    /*//////////////////////////////////////////////////////////////
                            PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Gets the mint mode for a given collateral asset and amount
    /// @return The mint mode, if INSTANT, the mint will be served immediately, if QUEUED, the mint will be queued and served later
    /// @dev For StableMinter, the mint mode is always INSTANT
    // checked
    function getMintMode(address, /*_asset*/ uint256 /*_amount*/ ) external pure returns (MintRedeemMode) {
        return MintRedeemMode.INSTANT;
    }

    /// @notice Checks if the asset is supported
    /// @param _collateralAsset The collateral asset to check
    /// @return True if the asset is supported, false otherwise
    // checked
    function isAssetSupported(address _collateralAsset) external view returns (bool) {
        return assetInfo[_collateralAsset].isSupported;
    }

    /// @notice Calculates the amount of ELUSD that would be minted for a given token amount
    /// @param _token Address of the token to quote
    /// @param _amount Amount of tokens to quote
    /// @return The amount of ELUSD that would be minted
    function quoteDeposit(address _token, uint256 _amount) public view returns (uint256) {
        uint8 decimals = assetInfo[_token].decimals;
        // We quote the price of the token in USD
        uint256 unitPrice = assetInfo[_token].oracle.getQuote(10 ** decimals, _token, USD);

        // If the price is less than the minimum price, we revert
        if (unitPrice < minPrice) revert InvalidPrice();

        // If the price is less than 1e18, we use the price as is, otherwise we use 1e18
        // Select price favorable to the protocol
        uint256 price = unitPrice < 1e18 ? unitPrice : 1e18;

        // Normalize the amount to 18 decimals
        uint256 normalizedAmount = _amount * (10 ** (18 - decimals));
        uint256 oracleQuote = (price * normalizedAmount) / 1e18;

        return oracleQuote;
    }
}
