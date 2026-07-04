// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IRainDecision } from "../diamond/interfaces/IRainDecision.sol";

import { IConduit } from "./IConduit.sol";
import { IMultiAssetVault } from "./IMultiAssetVault.sol";

/**
 * @title IReservoir
 * @author Rain Team
 * @notice Interface for the Reservoir.
 */
interface IReservoir is IMultiAssetVault, IAccessControl {
    /* ========================== TYPES ========================== */

    /// @dev Represents the reason for the asset absorption.
    enum AbsorptionCause {
        FEE,
        RETURN
    }

    /// @dev Represents a pending withdrawal reservation when the activity queue is not empty.
    struct WithdrawalReservation {
        /// @custom:member receiver Address to receive the withdrawn assets.
        address receiver;
        /// @custom:member assets Amount of assets reserved for withdrawal.
        uint256 assets;
        /// @custom:member shares Amount of shares reserved for withdrawal.
        uint256 shares;
        /// @custom:member fees Amount of fees reserved for withdrawal.
        uint256 fees;
        /// @custom:member pendingQueue Snapshot of active queue items at reservation time.
        IRainDecision.ActivityQueueData[] pendingQueue;
    }

    /* ========================== EVENTS ========================== */

    /**
     * @dev Emitted when assets are absorbed into the reservoir.
     * @param asset Address of the asset being absorbed.
     * @param assets Amount of assets absorbed.
     * @param cause Cause for the absorption.
     */
    event Absorb(IERC20 asset, uint256 assets, AbsorptionCause cause);

    /**
     * @dev Emitted when assets are disbursed from the reservoir.
     * @param asset Address of the asset being disbursed.
     * @param assets Amount of assets to disburse.
     * @param winner Address that is being disbursed assets.
     */
    event Disburse(IERC20 asset, uint256 assets, address indexed winner);

    /**
     * @dev Emitted when a withdrawal is reserved due to active queue items.
     * @param sender Address of the function caller.
     * @param asset Address of the asset being reserved.
     * @param receiver Address to receive the withdrawn assets.
     * @param assets Amount of assets reserved.
     * @param shares Amount of shares reserved.
     * @param fees Amount of fees reserved.
     * @param activeQueueLength Number of active queue items at reservation time.
     */
    event WithdrawalReserved(
        address indexed sender,
        IERC20 asset,
        address receiver,
        uint256 assets,
        uint256 shares,
        uint256 fees,
        uint256 activeQueueLength
    );

    /**
     * @dev Emitted when a reserved withdrawal is processed.
     * @param sender Address of the function caller.
     * @param asset Address of the asset being unreserved.
     * @param receiver Address receiving the withdrawn assets.
     * @param assets Amount of assets withdrawn.
     * @param shares Amount of shares burned.
     */
    event WithdrawalUnreserved(address indexed sender, IERC20 asset, address receiver, uint256 assets, uint256 shares);

    /**
     * @dev Emitted when the address of the rain decision contract is changed.
     * @param newRainDecision Address of the new rain decision contract.
     * @param oldRainDecision Address of the previous rain decision contract.
     */
    event UpdateRainDecision(address newRainDecision, address oldRainDecision);

    /**
     * @dev Emitted when the address of the conduit contract is changed.
     * @param newConduit Address of the new conduit contract.
     * @param oldConduit Address of the previous conduit contract.
     */
    event UpdateConduit(address newConduit, address oldConduit);

    /* ========================== ERRORS ========================== */

    /**
     * @dev Thrown when there are insufficient total assets to award a winner.
     */
    error InsufficientTotalAssets();

    /**
     * @dev Thrown when an operation faces more than expected slippage.
     */
    error Slippage();

    /**
     * @dev Thrown when attempting to unreserve with no active reservation.
     */
    error NoReservation();

    /**
     * @dev Thrown when attempting to unreserve while queue items are still active.
     */
    error QueueNotEmpty();

    /**
     * @dev Thrown when attempting to withdraw while having an active reservation.
     */
    error ActiveReservation();

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Processes a reserved withdrawal after all pending queue items are resolved.
     * @dev Validates that all queue items from the reservation snapshot are no longer active before processing.
     *
     * Requirements:
     *
     * - the caller must have an active reservation for `asset`.
     * - all queue items from the reservation snapshot must be resolved.
     *
     * @param asset Address of the asset to unreserve.
     */
    function unreserve(IERC20 asset) external;

    /**
     * @notice Mints shares to receiver by depositing exactly amount of underlying asset with slippage protection.
     *
     * Requirements:
     *
     * - `asset` must be registered.
     * - `shares` minted must be equal to or greater than `minSharesOut`.
     *
     * @param asset Address of the asset.
     * @param assets Amount of assets to deposit.
     * @param receiver Address to receive shares.
     * @param minSharesOut Minimum shares expected.
     * @return shares Amount of shares minted.
     */
    function depositWithSlippage(
        IERC20 asset,
        uint256 assets,
        address receiver,
        uint256 minSharesOut
    ) external returns (uint256);

    /**
     * @notice Mints exactly shares to receiver by depositing amount of underlying asset with slippage protection.
     *
     * Requirements:
     *
     * - `asset` must be registered.
     * - `assets` required must be less than or equal to `maxAssetsIn`.
     *
     * @param asset Address of the asset.
     * @param shares Amount of shares to mint.
     * @param receiver Address to receive shares.
     * @param maxAssetsIn Maximum assets willing to deposit.
     * @return assets Amount of assets required.
     */
    function mintWithSlippage(
        IERC20 asset,
        uint256 shares,
        address receiver,
        uint256 maxAssetsIn
    ) external returns (uint256);

    /**
     * @notice Redeems shares from caller and sends exactly amount of underlying asset to receiver with slippage
     * protection.
     *
     * Requirements:
     *
     * - `asset` must be registered.
     * - `shares` required must be less than or equal to `maxSharesIn`.
     *
     * @param asset Address of the asset.
     * @param assets Amount of assets to withdraw.
     * @param receiver Address to receive assets.
     * @param maxSharesIn Maximum shares willing to burn.
     * @return shares Amount of shares required.
     */
    function withdrawWithSlippage(
        IERC20 asset,
        uint256 assets,
        address receiver,
        uint256 maxSharesIn
    ) external returns (uint256);

    /**
     * @notice Redeems exactly shares from caller and sends amount of underlying asset to receiver with slippage
     * protection.
     *
     * Requirements:
     *
     * - `asset` must be registered.
     * - `assets` withdrawn must be equal to or greater than `minAssetsOut`.
     *
     * @param asset Address of the asset.
     * @param shares Amount of shares to burn.
     * @param receiver Address to receive assets.
     * @param minAssetsOut Minimum assets expected.
     * @return assets Amount of assets withdrawn.
     */
    function redeemWithSlippage(
        IERC20 asset,
        uint256 shares,
        address receiver,
        uint256 minAssetsOut
    ) external returns (uint256);

    /**
     * @notice Absorbs assets into the reservoir.
     *
     * Requirements:
     *
     * - the caller must be an authority.
     * - `asset` must be registered.
     *
     * @param asset Address of the asset being absorbed.
     * @param assets Amount of assets absorbed.
     * @param cause Cause for the absorption.
     */
    function absorb(IERC20 asset, uint256 assets, AbsorptionCause cause) external;

    /**
     * @notice Disburses assets from the reservoir to a winner.
     *
     * NOTE: Transfer `assets` to `winner`.
     *
     * Requirements:
     *
     * - the caller must be an authority.
     * - `asset` must be registered.
     * - `assets` cannot be `0`.
     * - `assets` must be less than or equal to total assets for `asset`.
     * - `winner` cannot be the zero address.
     *
     * @param asset Address of the asset being disbursed.
     * @param assets Amount of assets to disburse.
     * @param winner Address that is being disbursed assets.
     */
    function disburse(IERC20 asset, uint256 assets, address winner) external;

    /**
     * @notice Configures registration or deregistration for the given asset.
     * @dev Validates `asset` but does not validate `newRoute`. The callee must perform sanity checks for `newRoute`.
     *
     * NOTE: Acts as the single point of entry for an owner when registering an asset.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `asset` cannot be the zero address.
     * - `state` cannot be equal to the existing asset registration state.
     *
     * @param asset Address of the asset to register or deregister.
     * @param newRoute Route to forward.
     * @param state Whether to register or deregister the asset.
     */
    function configureAsset(IERC20 asset, IConduit.Route memory newRoute, bool state) external;

    /**
     * @notice Updates the rain decision contract address.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newRainDecision` cannot be the zero address.
     * - `newRainDecision` cannot be equal to the existing rain decision contract address.
     *
     * @param newRainDecision Address of the new rain decision contract.
     */
    function updateRainDecision(IRainDecision newRainDecision) external;

    /**
     * @notice Updates the conduit contract address.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newConduit` cannot be the zero address.
     * - `newConduit` cannot be equal to the existing conduit contract address.
     *
     * @param newConduit Address of the new conduit contract.
     */
    function updateConduit(IConduit newConduit) external;

    /**
     * @notice Preview fees that would be deducted for the given shares.
     * @param asset Address of the underlying asset.
     * @param shares Amount of shares to preview fees for.
     * @return fees Amount of fees that would be deducted.
     */
    function previewFees(IERC20 asset, uint256 shares) external view returns (uint256);

    /**
     * @notice Previews whether a reserved withdrawal can be processed.
     * @dev Checks if all queue items from the reservation snapshot have been resolved.
     * @param asset Address of the asset to check.
     * @param sender Address of the reservation owner.
     * @return canUnreserve Whether the reservation can be unreserved.
     * @return blockingActivity First active item blocking unreserve.
     */
    function previewUnreserve(
        IERC20 asset,
        address sender
    ) external view returns (bool, IRainDecision.ActivityQueueData memory);

    /**
     * @notice Address of the rain decision contract.
     */
    function rainDecision() external view returns (address);

    /**
     * @notice Address of the conduit contract.
     */
    function conduit() external view returns (address);

    /**
     * @notice Total amount of reserved assets for the given asset.
     * @param asset Address of the underlying asset.
     */
    function reservedAssets(IERC20 asset) external view returns (uint256);

    /**
     * @notice Total amount of reserved supply for the given asset.
     * @param asset Address of the underlying asset.
     */
    function reservedSupply(IERC20 asset) external view returns (uint256);

    /**
     * @notice Total amount of reserved fees for the given asset.
     * @param asset Address of the underlying asset.
     */
    function reservedFees(IERC20 asset) external view returns (uint256);

    /**
     * @notice Total amount of fees accumulated per asset.
     * @param asset Address of the underlying asset.
     */
    function totalFees(IERC20 asset) external view returns (uint256);

    /**
     * @notice Withdrawal reservation for the given sender and asset.
     * @param asset Address of the underlying asset.
     * @param sender Address of the reservation owner.
     */
    function reserved(IERC20 asset, address sender) external view returns (WithdrawalReservation memory);
}
