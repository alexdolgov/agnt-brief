// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import "./IXGLDMintingEvents.sol";

interface IXGLDMinting is IXGLDMintingEvents {
    enum OrderType {
        MINT
    }

    enum SignatureType {
        EIP712,
        EIP1271
    }

    enum DelegatedSignerStatus {
        REJECTED,
        PENDING,
        ACCEPTED
    }

    struct Order {
        string order_id;
        OrderType order_type;
        uint128 expiry;
        uint120 nonce;
        address benefactor;
        address beneficiary;
        address collateral_asset;
        uint128 collateral_amount;
        uint128 xgld_amount;
    }

    /// @notice Collateral routing to custody wallets. Ratios must sum to 10,000.
    struct Route {
        address[] addresses;
        uint128[] ratios;
    }

    struct Signature {
        uint8 v;
        bytes32 r;
        bytes32 s;
        SignatureType signatureType;
    }

    struct TokenConfig {
        bool isActive;
        uint128 maxMintPerBlock;
    }

    struct BlockTotals {
        uint128 mintedPerBlock;
    }

    struct GlobalConfig {
        uint128 globalMaxMintPerBlock;
    }

    error InvalidOrder();
    error InvalidRoute();
    error InvalidAddress();
    error InvalidZeroAddress();
    error InvalidXGLDAddress();
    error InvalidAssetAddress();
    error InvalidCustodianAddress();
    error InvalidBenefactorAddress();
    error InvalidBeneficiaryAddress();
    error UnsupportedAsset();
    error NoAssetsProvided();
    error MaxMintPerBlockExceeded();
    error GlobalMaxMintPerBlockExceeded();
    error SignatureExpired();
    error InvalidSignature();
    error InvalidEIP1271Signature();
    error BenefactorNotWhitelisted();
    error BeneficiaryNotApproved();
    error DuplicateOrder();
    error OrderNotSecure();
    error OrderAlreadyMinted();
    error InvalidNonce();
    error TransferFailed();
    error DelegationNotInitiated();
    error InvalidExchangeRateProvider();
    error ZeroAmount();

    function secureCollateral(Order calldata order, Route calldata route, Signature calldata signature) external;
    function mint(Order calldata order) external;
    function totalXautDeposited() external view returns (uint256);
    function previewMint(uint256 xautAmount) external view returns (uint256);
    function hashOrder(Order calldata order) external view returns (bytes32);
    function isOrderSecure(Order calldata order) external view returns (bool);
    function verifyOrder(Order calldata order, Signature calldata signature) external view returns (bytes32);
    function verifyRoute(Route calldata route) external view returns (bool);
    function verifyNonce(address sender, uint120 nonce) external view returns (uint128, uint256, uint256);
    function setMaxMintPerBlock(uint128 maxMintPerBlock, address asset) external;
    function setGlobalMaxMintPerBlock(uint128 globalMaxMintPerBlock) external;
    function addSupportedAsset(address asset, TokenConfig calldata config) external;
    function removeSupportedAsset(address asset) external;
    function isSupportedAsset(address asset) external view returns (bool);
    function addCustodianAddress(address custodian) external;
    function removeCustodianAddress(address custodian) external;
    function transferToCustody(address wallet, address asset, uint128 amount) external;
    function addWhitelistedBenefactor(address benefactor) external;
    function removeWhitelistedBenefactor(address benefactor) external;
    function setApprovedBeneficiary(address beneficiary, bool status) external;
    function setDelegatedSigner(address delegateTo) external;
    function confirmDelegatedSigner(address delegatedBy) external;
    function removeDelegatedSigner(address removedSigner) external;
    function disableMint() external;
}
