pragma solidity ^0.8.28;

interface IThUSDMinter {
    ///
    /// Order Details
    ///

    enum OrderType {
        MINT,
        REDEEM
    }

    struct Order {
        OrderType order_type;
        uint256 expiry;
        uint256 nonce;
        address signer;
        address recipient;
        address collateral_asset;
        uint256 collateral_amount;
        uint256 thusd_amount;
    }

    ///
    /// Events
    ///
    event Mint(address indexed signer, address indexed recipient, address indexed collateralAsset, uint256 collateralAmount, uint256 thusdAmount);
    event Redeem(address indexed signer, address indexed recipient, address indexed collateralAsset, uint256 thusdAmount, uint256 collateralTransferred, uint256 fee);
    event AssetAdded(address indexed asset);
    event AssetRemoved(address indexed asset);
    event MintDestinationChanged(address indexed oldDestination, address indexed newDestination);
    event RedeemDestinationChanged(address indexed oldDestination, address indexed newDestination);
    event MaxMintPerBlockChanged(uint256 oldMax, uint256 newMax);
    event MaxRedeemPerBlockChanged(uint256 oldMax, uint256 newMax);
    event RedeemFeeChanged(uint256 oldFeeBps, uint256 newFeeBps);

    ///
    /// Errors
    ///
    error InvalidOrder();
    error InvalidSignature();
    error InvalidZeroAddress();
    error InvalidAmount();
    error InvalidAssetRatio();
    error InvalidAssetAddress();
    error InvalidBackingAddress();
    error OrderAlreadyUsed();
    error OrderExpired();
    error UnsupportedAsset();
    error MaxMintPerBlockExceeded();
    error MaxRedeemPerBlockExceeded();
    error FeeTooHigh();
    error SignerIsDestination();

    ///
    /// FUNCTIONS
    ///
    function mint(Order calldata order, bytes calldata signature) external;

    function redeem(Order calldata order, bytes calldata signature) external;

    function hashOrder(Order calldata order) external view returns (bytes32);

    function isSupportedAsset(address asset) external view returns (bool);

    function mintDestination() external view returns (address);

    function redeemDestination() external view returns (address);

    ///
    /// ADMIN FUNCTIONS
    ///
    function addSupportedAsset(address asset) external;

    function removeSupportedAsset(address asset) external;

    function setMintDestination(address newAddress) external;

    function setRedeemDestination(address newAddress) external;

    function setMaxMintPerBlock(uint256 newMax) external;

    function setMaxRedeemPerBlock(uint256 newMax) external;

    function setRedeemFeeBps(uint256 newFeeBps) external;

    function pause() external;

    function unpause() external;
}
