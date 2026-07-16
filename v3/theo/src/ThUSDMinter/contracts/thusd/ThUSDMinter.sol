// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IERC20, ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ITheoWhitelist} from "../interfaces/ITheoWhitelist.sol";
import {IThUSDMinter} from "./interfaces/IThUSDMinter.sol";
import {ThUSD} from "./ThUSD.sol";

contract ThUSDMinter is AccessControl, ReentrancyGuard, Pausable, EIP712, IThUSDMinter {
    using SafeERC20 for IERC20;

    ///
    /// CONSTANTS
    ///

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant EMERGENCY_ROLE = keccak256("EMERGENCY_ROLE");
    bytes32 private constant ORDER_TYPE =
        keccak256("Order(uint8 order_type,uint256 expiry,uint256 nonce,address signer,address recipient,address collateral_asset,uint256 collateral_amount,uint256 thusd_amount)");

    uint256 public constant MAX_FEE_BPS = 10; // 0.1% hard cap
    uint public constant MINIMUM_MINT_AMOUNT = 1e6; // minimum mint/redeem amount to prevent dust attack

    ///
    /// STATE VARIABLES
    ///

    address public immutable thusd;
    ITheoWhitelist public immutable whitelist;
    mapping(address => bool) public supportedAssets;
    address public mintDestination; // multisig where collateral is sent
    address public redeemDestination; // multisig where collateral is redeemed from
    uint256 public maxMintPerBlock;
    uint256 public maxRedeemPerBlock;
    uint256 public redeemFeeBps; // redemption fee in basis points
    mapping(uint256 => uint256) public mintedPerBlock;
    mapping(uint256 => uint256) public redeemedPerBlock;
    mapping(bytes32 => bool) public usedOrderHashes;

    ///
    /// CONSTRUCTOR
    ///

    constructor(address thusd_, ITheoWhitelist whitelist_, address admin_, address mintDest_, address redeemDest_, uint256 maxMintPerBlock_, uint256 maxRedeemPerBlock_) EIP712("ThUSDMinter", "1") {
        if (address(thusd_) == address(0)) revert InvalidZeroAddress();
        if (address(whitelist_) == address(0)) revert InvalidZeroAddress();
        if (admin_ == address(0)) revert InvalidZeroAddress();

        thusd = thusd_;
        whitelist = whitelist_;
        maxMintPerBlock = maxMintPerBlock_;
        maxRedeemPerBlock = maxRedeemPerBlock_;

        // check backing addresses
        _checkBackingAddress(mintDest_);
        _checkBackingAddress(redeemDest_);
        mintDestination = mintDest_;
        redeemDestination = redeemDest_;

        _grantRole(DEFAULT_ADMIN_ROLE, admin_);
    }

    ///
    /// EXTERNAL FUNCTIONS
    ///

    function mint(Order calldata order, bytes calldata signature) external nonReentrant whenNotPaused onlyRole(MINTER_ROLE) {
        if (order.order_type != OrderType.MINT) revert InvalidOrder();
        if (mintedPerBlock[block.number] + order.thusd_amount > maxMintPerBlock) {
            revert MaxMintPerBlockExceeded();
        }
        _validateOrder(order, signature);

        mintedPerBlock[block.number] += order.thusd_amount;

        _transferCollateralIn(order);
        ThUSD(thusd).mint(order.recipient, order.thusd_amount);

        emit Mint(order.signer, order.recipient, order.collateral_asset, order.collateral_amount, order.thusd_amount);
    }

    function redeem(Order calldata order, bytes calldata signature) external nonReentrant whenNotPaused onlyRole(MINTER_ROLE) {
        if (order.order_type != OrderType.REDEEM) revert InvalidOrder();
        if (redeemedPerBlock[block.number] + order.thusd_amount > maxRedeemPerBlock) {
            revert MaxRedeemPerBlockExceeded();
        }
        _validateOrder(order, signature);

        redeemedPerBlock[block.number] += order.thusd_amount;

        ThUSD(thusd).burnFrom(order.signer, order.thusd_amount);
        (uint256 amountTransferred, uint256 fee) = _transferCollateralOut(order);

        emit Redeem(order.signer, order.recipient, order.collateral_asset, order.thusd_amount, amountTransferred, fee);
    }

    ///
    /// ADMIN FUNCTIONS
    ///

    function addSupportedAsset(address asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (asset == address(0) || asset == thusd || supportedAssets[asset]) revert InvalidAssetAddress();
        supportedAssets[asset] = true;
        emit AssetAdded(asset);
    }

    function removeSupportedAsset(address asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!supportedAssets[asset]) revert InvalidAssetAddress();
        supportedAssets[asset] = false;
        emit AssetRemoved(asset);
    }

    function setMintDestination(address newMintDestination) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _checkBackingAddress(newMintDestination);
        address oldMintDestination = mintDestination;
        mintDestination = newMintDestination;
        emit MintDestinationChanged(oldMintDestination, newMintDestination);
    }

    function setRedeemDestination(address newRedeemDestination) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _checkBackingAddress(newRedeemDestination);
        address oldRedeemDestination = redeemDestination;
        redeemDestination = newRedeemDestination;
        emit RedeemDestinationChanged(oldRedeemDestination, newRedeemDestination);
    }

    function setMaxMintPerBlock(uint256 newMax) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 oldMax = maxMintPerBlock;
        maxMintPerBlock = newMax;
        emit MaxMintPerBlockChanged(oldMax, newMax);
    }

    function setMaxRedeemPerBlock(uint256 newMax) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 oldMax = maxRedeemPerBlock;
        maxRedeemPerBlock = newMax;
        emit MaxRedeemPerBlockChanged(oldMax, newMax);
    }

    function setRedeemFeeBps(uint256 newFeeBps) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newFeeBps > MAX_FEE_BPS) revert FeeTooHigh();
        uint256 oldFeeBps = redeemFeeBps;
        redeemFeeBps = newFeeBps;
        emit RedeemFeeChanged(oldFeeBps, newFeeBps);
    }

    function pause() external onlyRole(EMERGENCY_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    ///
    /// VIEW FUNCTIONS
    ///

    function isSupportedAsset(address asset) external view returns (bool) {
        return supportedAssets[asset];
    }

    function hashOrder(Order calldata order) public view returns (bytes32) {
        return
            _hashTypedDataV4(
                keccak256(abi.encode(ORDER_TYPE, order.order_type, order.expiry, order.nonce, order.signer, order.recipient, order.collateral_asset, order.collateral_amount, order.thusd_amount))
            );
    }

    ///
    /// INTERNAL FUNCTIONS
    ///

    function _validateOrder(Order calldata order, bytes calldata signature) internal {
        if (order.collateral_amount < MINIMUM_MINT_AMOUNT || order.thusd_amount < MINIMUM_MINT_AMOUNT) revert InvalidAmount();
        if (block.timestamp > order.expiry) revert OrderExpired();
        if (!supportedAssets[order.collateral_asset]) revert UnsupportedAsset();
        if (order.signer == address(0) || order.recipient == address(0)) revert InvalidZeroAddress();
        // check that order.signer is not mint/redeem destination
        if (order.signer == mintDestination || order.signer == redeemDestination) revert SignerIsDestination();

        // check amount based on order type for extra protection
        uint256 collateralDecimals = ERC20(order.collateral_asset).decimals();
        uint256 thusdDecimals = ERC20(address(thusd)).decimals();
        uint256 collateralAmountNormalized = order.collateral_amount * (10 ** (18 - collateralDecimals));
        uint256 thusdAmountNormalized = order.thusd_amount * (10 ** (18 - thusdDecimals));
        if (order.order_type == OrderType.MINT) {
            // ensure thusd does not exceed collateral
            if (thusdAmountNormalized > collateralAmountNormalized) revert InvalidAssetRatio();
        } else if (order.order_type == OrderType.REDEEM) {
            // ensure collateral does not exceed thusd
            if (collateralAmountNormalized > thusdAmountNormalized) revert InvalidAssetRatio();
        } else {
            revert InvalidOrder();
        }

        // check order hash and signature
        bytes32 orderHash = hashOrder(order);
        if (usedOrderHashes[orderHash]) revert OrderAlreadyUsed();

        address recovered = ECDSA.recover(orderHash, signature);
        if (recovered != order.signer) revert InvalidSignature();

        // set order hash as used
        usedOrderHashes[orderHash] = true;

        // check whitelist/blacklist status
        whitelist.onlyWhitelisted(order.signer);
        whitelist.onlyNotBlacklisted(order.signer);
        whitelist.onlyWhitelisted(order.recipient);
        whitelist.onlyNotBlacklisted(order.recipient);
    }

    function _transferCollateralIn(Order calldata order) internal {
        IERC20(order.collateral_asset).safeTransferFrom(order.signer, mintDestination, order.collateral_amount);
    }

    function _transferCollateralOut(Order calldata order) internal returns (uint256 amountTransferred, uint256 fee) {
        fee = Math.mulDiv(order.collateral_amount, redeemFeeBps, 10_000, Math.Rounding.Ceil);
        amountTransferred = order.collateral_amount - fee;
        IERC20(order.collateral_asset).safeTransferFrom(redeemDestination, order.recipient, amountTransferred);
    }

    function _checkBackingAddress(address addr) internal view {
        if (addr == thusd || addr == address(0) || addr == address(this)) revert InvalidBackingAddress();
    }
}
