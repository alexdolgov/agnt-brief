// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/* solhint-disable var-name-mixedcase  */

import "./IBTCDMintingEvents.sol";

interface IBTCDMinting is IBTCDMintingEvents {

    enum OrderType {
        MINT,
        REDEEM
    }

    enum SignatureType {
        EIP712,
        EIP1271
    }

    enum DelegatedSignerStatus {
        NOTINITIATED,
        PENDING,
        CONFIRMED
    }

    struct Signature {
        SignatureType signature_type;
        bytes signature_bytes;
    }

    struct Route {
        address[] addresses;
        uint128[] ratios;
    }

    struct Order {
        string order_id;
        OrderType order_type;
        uint120 expiry;
        uint256 nonce;
        address benefactor;
        address beneficiary;
        address collateral_asset;
        uint128 collateral_amount;
        uint128 btcd_amount;
    }

    struct TokenConfig {
        /// @notice tracks if the asset is active
        bool isActive;
        /// @notice max mint per block this given asset
        uint128 maxMintPerBlock;
        /// @notice max redeem per block this given asset
        uint128 maxRedeemPerBlock;
    }

    struct BlockTotals {
        /// @notice last block number when mint/redeem occurred
        uint256 lastBlockNumber;
        /// @notice BTCD minted per block / per asset per block
        uint128 mintedPerBlock;
        /// @notice BTCD redeemed per block / per asset per block
        uint128 redeemedPerBlock;
    }

    struct GlobalConfig {
        /// @notice max BTCD that can be minted across all assets within a single block.
        uint128 globalMaxMintPerBlock;
        /// @notice max BTCD that can be redeemed across all assets within a single block.
        uint128 globalMaxRedeemPerBlock;
    }

    error InvalidAddress();
    error InvalidBTCDAddress();
    error InvalidZeroAddress();
    error InvalidAssetAddress();
    error InvalidBenefactorAddress();
    error InvalidBeneficiaryAddress();
    error InvalidCustodianAddress();
    error InvalidOrder();
    error InvalidAmount();
    error InvalidRoute();
    error UnknownSignatureType();
    error UnsupportedAsset();
    error NoAssetsProvided();
    error BenefactorNotWhitelisted();
    error BeneficiaryNotApproved();
    error InvalidEIP712Signature();
    error InvalidEIP1271Signature();
    error InvalidNonce();
    error SignatureExpired();
    error DelegationNotInitiated();
    error DelegationAlreadyAccepted();
    error DelegationAlreadyPending();
    error MaxMintPerBlockExceeded();
    error MaxRedeemPerBlockExceeded();
    error GlobalMaxMintPerBlockExceeded();
    error GlobalMaxRedeemPerBlockExceeded();
    error InvalidTokenConfig();
    error InvalidGlobalConfig();

    function hashOrder(Order calldata order) external view returns (bytes32);

    function verifyOrder(Order calldata order, Signature calldata signature) external view returns (bytes32);

    function verifyRoute(Route calldata route) external view returns (bool);

    function verifyNonce(address sender, uint256 nonce) external view returns (bool);

    function mint(Order calldata order, Route calldata route, Signature calldata signature) external;

    function redeem(Order calldata order, Signature calldata signature) external;
}
