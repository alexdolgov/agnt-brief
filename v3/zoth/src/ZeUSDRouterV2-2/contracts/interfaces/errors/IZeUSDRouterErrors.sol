// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title ZeUSD Router Error Interface
 * @author ZeUSD Protocol Team
 * @notice Defines all error types for the ZeUSD Router contract
 */
interface IZeUSDRouterErrors {
    /**
     * @notice Thrown when an invalid (usually zero) address is provided
     * @param addr The invalid address provided
     * @dev Basic input validation error
     */
    error ZeUSDRouter_InvalidAddress(address addr);

    /**
     * @notice Thrown when operation involves an unsupported asset
     * @param asset Address of the unsupported asset
     * @dev Asset validation error
     */
    error ZeUSDRouter_AssetNotSupported(address asset);

    /**
     * @notice Thrown when blacklisted account attempts any operation
     * @param account Address of the blacklisted account
     * @dev Compliance restriction error
     */
    error ZeUSDRouter_Blacklisted(address account);

    /**
     * @notice Thrown when zero amount is provided for operations
     * @dev Amount validation error
     */
    error ZeUSDRouter_ZeroAmount();

    /**
     * @notice Thrown when deposit operation fails
     * @param reason Description of why the deposit failed
     * @dev Operation failure error
     */
    error ZeUSDRouter_DepositFailed(string reason);

    /**
     * @notice Thrown when caller is not the owner of the NFT
     * @dev NFT ownership validation error
     */
    error ZeUSDRouter_NotNFTOwner();

    error ZeUSDRouter_WithdrawalInitiated();

    /**
     * @notice Thrown when withdrawal fails due to withdrawal system error
     * @dev General withdrawal error
     */
    error ZeUSDRouter_WithdrawalFailed();

    /**
     * @notice Thrown when user has insufficient old ZeUSD balance
     */
    error ZeUSDRouter_InsufficientOldZeUSDBalance();

    /**
     * @notice Thrown when proof is invalid
     */
    error ZeUSDRouter_InvalidProof();

    /**
     * @notice Thrown when a merkle leaf has already been used to prevent replay attacks
     */
    error ZeUSDRouter_MerkleLeafAlreadyUsed();

    /**
     * @notice Thrown when an empty merkle proof is provided
     */
    error ZeUSDRouter_EmptyMerkleProof();

    /**
     * @notice Thrown when account is not whitelisted
     */
    error ZeUSDRouter_NotWhitelisted(address account);
}
