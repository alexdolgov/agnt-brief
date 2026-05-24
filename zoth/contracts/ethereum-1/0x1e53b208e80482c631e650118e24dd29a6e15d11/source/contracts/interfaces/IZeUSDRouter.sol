// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import { SendParam, MessagingFee, MessagingReceipt, OFTReceipt } from '@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol';
import '../events/IZeUSDRouterEvents.sol';
import '../errors/IZeUSDRouterErrors.sol';
import '../libraries/DataTypes.sol';

/**
 * @title ZeUSD Router Main Interface
 * @author ZeUSD Protocol Team
 * @notice Main interface for interacting with the ZeUSD protocol
 * @dev Combines all protocol functionality including minting, burning, and bridging
 * @custom:security Implements access control and validation checks
 */
interface IZeUSDRouter is IZeUSDRouterEvents, IZeUSDRouterErrors {
    /**
     * @notice Mints ZeUSD tokens against deposited assets
     * @dev Creates NFT representing the deposit position
     * @param asset Address of asset to deposit
     * @param amount Amount to deposit
     * @return tokenId ID of the minted NFT
     * @custom:security Requires prior token approval
     * @custom:emits DepositProcessed
     */
    function mintWithCollateral(address asset, uint256 amount) external returns (uint256 tokenId);

    /**
     * @notice Mints ZeUSD tokens with Stable Coins
     * @dev Specialized function for Stable deposits with different collateral
     * @param collateralAddress Address of collateral asset
     * @param asset Address of Stable Coins
     * @param amount Amount of Stable to deposit
     * @return tokenId ID of the minted NFT
     * @custom:security Requires prior token approval
     * @custom:emits DepositProcessed
     */
    function mintWithStable(
        address collateralAddress,
        address asset,
        uint256 amount
    ) external returns (uint256 tokenId);

    /**
     * @notice Burns ZeUSD tokens to reclaim deposited assets
     * @dev Initiates withdrawal process through WithdrawalSystem
     * @param depositId User's deposit NFT ID
     * @custom:security Requires NFT ownership and sufficient zeUSD balance
     * @custom:emits Burned
     */
    function burn(uint256 depositId) external;

    /**
     * @notice Mints and bridges ZeUSD via LayerZero
     * @dev Combines minting and cross-chain transfer
     * @param asset Address of asset to deposit
     * @param amount Amount to deposit
     * @param sendParam LayerZero send parameters
     * @param nativeFee LayerZero messaging fee
     * @return tokenId ID of the minted NFT
     * @custom:security Requires sufficient native token for bridge fee
     * @custom:emits DepositProcessed, BridgeInitiated
     */
    function mintWithCollateralAndBridge(
        address asset,
        uint256 amount,
        SendParam memory sendParam,
        MessagingFee memory nativeFee
    ) external payable returns (uint256 tokenId);

    /**
     * @notice Mints and bridges Stables via LayerZero
     * @dev Combines stable deposit and cross-chain transfer
     * @param collateralAddress Address of collateral asset
     * @param asset Address of Stable to deposit
     * @param amount Amount to deposit
     * @param sendParam LayerZero send parameters
     * @param nativeFee LayerZero messaging fee
     * @return tokenId ID of the minted NFT
     * @custom:security Requires sufficient native token for bridge fee
     * @custom:emits DepositProcessed, BridgeInitiated
     */
    function mintWithStableAndBridge(
        address collateralAddress,
        address asset,
        uint256 amount,
        SendParam memory sendParam,
        MessagingFee memory nativeFee
    ) external payable returns (uint256 tokenId);

    /**
     * @notice Sets whitelist status for an account
     * @param account Address to whitelist/unwhitelist
     * @param status New whitelist status
     * @dev Admin only function
     */
    function setWhitelistStatus(address account, bool status) external;

    /**
     * @notice Sets whitelist status for multiple accounts
     * @param accounts Addresses to update
     * @param statuses New whitelist statuses
     * @dev Admin only function, lengths must match
     */
    function setMultipleWhitelistStatus(
        address[] calldata accounts,
        bool[] calldata statuses
    ) external;

    /**
     * @notice Sets global deposit pause status
     * @param paused New pause status
     * @dev Admin only function
     */
    function setDepositsPaused(bool paused) external;

    /**
     * @notice Checks if an account is whitelisted
     * @param account Address to check
     * @return bool Whitelist status
     */
    function isWhitelisted(address account) external view returns (bool);

    /**
     * @notice Gets LayerZero fee quote
     * @param sendParam Send parameters
     * @return MessagingFee Fee details
     */
    function getQuoteFee(SendParam memory sendParam) external view returns (MessagingFee memory);

    /**
     * @notice Gets all active positions for a user
     * @param user Address to query positions for
     * @return tokenIds Array of active token IDs
     * @return metadata Array of corresponding deposit metadata
     */
    function getUserActivePositions(
        address user
    )
        external
        view
        returns (uint256[] memory tokenIds, DataTypes.DepositMetadata[] memory metadata);

    /**
     * @notice Gets details for a specific active position
     * @param tokenId NFT token ID to query
     * @return metadata Deposit metadata for the active position
     */
    function getActivePositionDetails(
        uint256 tokenId
    ) external view returns (DataTypes.DepositMetadata memory metadata);
}
