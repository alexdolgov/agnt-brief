// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface ITellerWithMultiAssetSupport {
    error TellerWithMultiAssetSupport__AssetNotSupported();
    error TellerWithMultiAssetSupport__BadDepositHash();
    error TellerWithMultiAssetSupport__DualDeposit();
    error TellerWithMultiAssetSupport__MinimumAssetsNotMet();
    error TellerWithMultiAssetSupport__MinimumMintNotMet();
    error TellerWithMultiAssetSupport__Paused();
    error TellerWithMultiAssetSupport__PermitFailedAndAllowanceTooLow();
    error TellerWithMultiAssetSupport__ShareLockPeriodTooLong();
    error TellerWithMultiAssetSupport__SharesAreLocked();
    error TellerWithMultiAssetSupport__SharesAreUnLocked();
    error TellerWithMultiAssetSupport__TransferDenied(address from, address to, address operator);
    error TellerWithMultiAssetSupport__ZeroAssets();
    error TellerWithMultiAssetSupport__ZeroShares();

    event AllowFrom(address indexed user);
    event AllowOperator(address indexed user);
    event AllowTo(address indexed user);
    event AssetAdded(address indexed asset);
    event AssetRemoved(address indexed asset);
    event AuthorityUpdated(address indexed user, address indexed newAuthority);
    event BulkDeposit(address indexed asset, uint256 depositAmount);
    event BulkWithdraw(address indexed asset, uint256 shareAmount);
    event DenyFrom(address indexed user);
    event DenyOperator(address indexed user);
    event DenyTo(address indexed user);
    event Deposit(
        uint256 indexed nonce,
        address indexed receiver,
        address indexed depositAsset,
        uint256 depositAmount,
        uint256 shareAmount,
        uint256 depositTimestamp,
        uint256 shareLockPeriodAtTimeOfDeposit
    );
    event DepositRefunded(uint256 indexed nonce, bytes32 depositHash, address indexed user);
    event OwnershipTransferred(address indexed user, address indexed newOwner);
    event Paused();
    event Unpaused();

    function accountant() external view returns (address);
    function addAsset(address asset) external;
    function allowAll(address user) external;
    function allowFrom(address user) external;
    function allowOperator(address user) external;
    function allowTo(address user) external;
    function authority() external view returns (address);
    function beforeTransfer(address from, address to, address operator) external view;
    function bulkDeposit(address depositAsset, uint256 depositAmount, uint256 minimumMint, address to)
        external
        returns (uint256 shares);
    function bulkWithdraw(address withdrawAsset, uint256 shareAmount, uint256 minimumAssets, address to)
        external
        returns (uint256 assetsOut);
    function denyAll(address user) external;
    function denyFrom(address user) external;
    function denyOperator(address user) external;
    function denyTo(address user) external;
    function deposit(address depositAsset, uint256 depositAmount, uint256 minimumMint)
        external
        payable
        returns (uint256 shares);
    function depositNonce() external view returns (uint96);
    function depositWithPermit(
        address depositAsset,
        uint256 depositAmount,
        uint256 minimumMint,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 shares);
    function fromDenyList(address) external view returns (bool);
    function isPaused() external view returns (bool);
    function isSupported(address) external view returns (bool);
    function nativeWrapper() external view returns (address);
    function operatorDenyList(address) external view returns (bool);
    function owner() external view returns (address);
    function pause() external;
    function publicDepositHistory(uint256) external view returns (bytes32);
    function refundDeposit(
        uint256 nonce,
        address receiver,
        address depositAsset,
        uint256 depositAmount,
        uint256 shareAmount,
        uint256 depositTimestamp,
        uint256 shareLockUpPeriodAtTimeOfDeposit
    ) external;
    function removeAsset(address asset) external;
    function setAuthority(address newAuthority) external;
    function setShareLockPeriod(uint64 _shareLockPeriod) external;
    function shareLockPeriod() external view returns (uint64);
    function shareUnlockTime(address) external view returns (uint256);
    function toDenyList(address) external view returns (bool);
    function transferOwnership(address newOwner) external;
    function unpause() external;
    function vault() external view returns (address);
}
