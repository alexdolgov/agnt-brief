// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

interface ITTokenRouterV2 {
    /**
     * @dev Thrown when the asset in a deposit does not match the tToken's asset
     */
    error InvalidTTokenAsset(address assetIn, address tTokenAsset);
    error InvalidTTokenTransfer(address tToken, address to);

    /// @notice Struct for Permit signatures
    struct Signature {
        bytes32 r;
        bytes32 s;
        uint8 v;
    }

    struct OptimisticDeposit {
        // asset to go in
        address from;
        address assetIn;
        uint256 amountAssetIn;
        address assetReceiver;
        Signature permitSignature;
        uint256 deadline;
        // tToken information
        address tToken;
        address to;
        uint256 tTokenAssets;
        // iToken information (if user wants to deposit directly into itoken after deposit)
        address iToken; // zero address if no iToken deposit
    }

    /// @notice  allows for bulk optimistic deposits from Theo service
    function depositOptimistic(OptimisticDeposit[] calldata deposits) external;

    struct CompletePending {
        address tToken;
        address asset;
        uint256 amountAsset;
    }

    /// @notice allowd for bulk complete pending from Theo service when rwa arrives
    function bulkCompletePending(CompletePending[] calldata completes) external;

    /// @notice sets minter role for this contract
    function setMinter(address minter, bool isMinter) external;

    /// @notice recovery for accidental funds sent to this contract
    function recoverFunds(address token, address to, uint256 amount) external;
}
