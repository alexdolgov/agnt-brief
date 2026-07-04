// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC4626Whitelisted} from "./IERC4626Whitelisted.sol";
import {ITheoWhitelist} from "./ITheoWhitelist.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

interface ITToken is IERC165, IERC4626Whitelisted {
    /// @notice Escrow begin
    event EscrowBegin(address indexed owner, uint256 shares, uint256 underlyingAmount, address escrowAsset, uint256 escrowAmount, uint256 escrowEnd);
    /// @notice Escrow end
    event EscrowEnd(address indexed owner, uint256 shares, uint256 underlyingAmount, address escrowAsset, uint256 escrowAmount);
    /// @notice Optimistic deposit
    event DepositOptimistic(address indexed caller, address indexed receiver, uint256 assets, uint256 shares);
    /// @notice Complete Pending
    event CompletePending(address indexed caller, uint256 amount);
    /// @notice Emergency seizure
    event Seize(address indexed from, address indexed to, uint256 shares, string reason);

    /// @notice Zero address error
    error ErrorZeroAddress();
    /// @notice Operation only allowed if escrow is off
    error EscrowNotDisabled();
    /// @notice Operation only allowed if escrow is on
    error EscrowNotEnabled();
    /// @notice Escrow not complete
    error EscrowIncomplete();
    /// @notice Cannot change escrow asset
    error InvalidEscrowAsset();
    /// @notice Cannot change underlying asset
    error InvalidUnderlyingAsset();
    /// @notice Max escrow duration exceeded
    error MaxEscrowDurationExceeded(uint256 duration, uint256 max);
    /// @notice Too much asset withdrawn
    error MinSharesError();
    /// @notice Optimistic deposits turned off
    error OptimisticDepositNotAllowed();
    /// @notice Zero value passed in
    error ZeroAssetsOrShares();
    /// @notice Attempted to seize from non blacklisted address
    error SeizeNotAllowed(address from);

    /**
     * @notice Parameters for the TToken
     * @param asset Underlying asset that the TToken represents
     * @param minShares Minimum shares to prevent donation attack
     * @param escrowDuration Duration for which assets are escrowed before they can be withdrawn
     * @param escrowAsset Asset to receive after escrow period, usually the same as the underlying asset
     * @param underlyingAssetReceiver Address that receives the underlying asset after escrow if escrow asset is different
     * @param allowPending Whether to allow pending deposits (optimistic)
     */
    struct TTokenParams {
        address asset;
        uint256 minShares;
        uint256 escrowDuration;
        address escrowAsset;
        address underlyingAssetReceiver;
        bool allowPending;
    }

    /**
     * @notice Escrow struct for withdrawals
     * @param escrowEnd Timestamp when the escrow period ends
     * @param underlyingAmount Amount of underlying asset that is escrowed
     * @param escrowAsset Asset that is escrowed, usually the same as the underlying asset
     * @param escrowAmount Amount of escrowed asset, usually the same as the underlying amount
     */
    struct UserEscrow {
        uint256 escrowEnd;
        uint256 shares;
        uint256 underlyingAmount;
        address escrowAsset;
        uint256 escrowAmount;
    }

    /// @notice Stats fo make escrow easier to track
    struct EscrowStats {
        uint256 totalShares;
        uint256 totalUnderlying;
        uint256 totalEscrowAsset;
    }

    /// @notice initializer
    function initialize(string memory name, string memory symbol, TTokenParams memory tTokenParams, ITheoWhitelist _whitelistContract) external;

    /// @notice deposit optomistic, can only be called if allowPending is true and caller is Minter
    function depositOptimistic(uint256 assets, address receiver) external returns (uint256 shares);

    /// @notice mint optimistic, can only be called if allowPending is true and caller is Minter
    function mintOptimistic(uint256 shares, address receiver) external returns (uint256 assets);

    /// @notice Completes the pending deposits, can only be called if caller is Minter
    function completePending(uint256 amount) external;

    /// @notice Returns the current status of the TToken params
    function getTTokenParams() external view returns (TTokenParams memory);

    /// @notice ERC4626 override for total assets, including pending assets
    function totalAssets() external view override(IERC4626) returns (uint256);

    /// @notice Returns total pending assets this contrect expects to be completed by the Minter
    function totalAssetsPending() external view returns (uint256);

    /// @notice IERC4626 override, does not include pending assets
    function maxWithdraw(address owner) external view override(IERC4626) returns (uint256 assets);

    /// @notice IERC4626 override, does not include pending assets
    function maxRedeem(address owner) external view override(IERC4626) returns (uint256 shares);

    /// @notice Returns the underlying amount, escrow asset and escrow amount for the given shares
    function previewBeginEscrow(uint256 shares) external view returns (uint256 underlyingAmount, address escrowAsset, uint256 escrowAssetAmount);

    /// @notice converts shares to escrow asset
    function sharesToEscrowAssets(uint256 shares) external view returns (uint256 escrowAssetAmount);

    /// @notice returns user escrow details
    function getUserEscrow(address account) external view returns (UserEscrow memory);

    /// @notice returns the total escrow stats for the TToken
    function getEscrowStats() external view returns (EscrowStats memory);

    /// @notice begins the escrow process for the given shares and owner, transfers shares to the contract and sends assets to the escrow contract
    function beginEscrow(uint256 shares, address owner) external returns (address escrowAsset, uint256 escrowAssetAmount);

    /// @notice ends the escrow process for the given owner, transfers escrow assets from the escrow contract to the user
    function endEscrow(address owner) external;

    /// @notice setter for TTokenParams
    function setTTokenParams(TTokenParams calldata tTokenParams) external;

    /// @notice sets Minter address and status, can only be called by the DEFAULT_ADMIN_ROLE
    function setMinter(address minter, bool status) external;

    /// @notice seizes shares from one address to another, can only be called by the DEFAULT_ADMIN_ROLE
    /// @dev The 'to' address must be whitelisted, and the 'from' address must be blacklisted
    function seize(address from, address to, uint256 shares, string memory reason) external;
}
