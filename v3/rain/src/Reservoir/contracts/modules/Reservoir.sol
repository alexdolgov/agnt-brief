// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import { IRainDecision } from "../diamond/interfaces/IRainDecision.sol";
import { Types } from "../diamond/shared/Types.sol";

import { IConduit } from "../interfaces/IConduit.sol";
import { IMultiAssetVault } from "../interfaces/IMultiAssetVault.sol";
import { IReservoir } from "../interfaces/IReservoir.sol";
import { _AUTHORITY_ROLE, _OWNER_ROLE } from "../shared/Constants.sol";
import { InvalidAddress, InvalidAmount, InvalidAssignment } from "../shared/Errors.sol";
import { _revert } from "../shared/Globals.sol";
import { MultiAssetVaultUpgradeable } from "../utils/MultiAssetVaultUpgradeable.sol";

/**
 * @title Reservoir
 * @author Rain Team
 * @notice Holds protocol funds and manages asset registration.
 * @dev Enforces that assets being interacted with are registered. Implements a withdrawal reservation system that
 * delays withdrawals when the activity queue has pending items, ensuring protocol solvency during active market
 * operations.
 */
contract Reservoir is IReservoir, UUPSUpgradeable, MultiAssetVaultUpgradeable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;
    using Math for uint256;

    /* ========================== ERC7201 STORAGE ========================== */

    /// @custom:storage-location erc7201:raindecision.storage.Reservoir
    struct ReservoirStorage {
        IRainDecision _rainDecision;
        IConduit _conduit;
        mapping(IERC20 asset => uint256 reservedAssets) _reservedAssets;
        mapping(IERC20 asset => uint256 reservedSupply) _reservedSupply;
        mapping(IERC20 asset => uint256 reservedFees) _reservedFees;
        mapping(IERC20 asset => uint256 totalFees) _totalFees;
        mapping(IERC20 asset => mapping(address sender => WithdrawalReservation reservation)) _reservations;
    }

    // keccak256(abi.encode(uint256(keccak256("raindecision.storage.Reservoir")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ReservoirStorageLocation =
        0x8a88fad748919a823819f4ce91e893a8a2a1470df3014b26bfc67866ac530500;

    function _getReservoirStorage() private pure returns (ReservoirStorage storage $) {
        assembly {
            $.slot := ReservoirStorageLocation
        }
    }

    /**
     * @inheritdoc IReservoir
     */
    function rainDecision() public view returns (address) {
        ReservoirStorage storage $ = _getReservoirStorage();

        return address($._rainDecision);
    }

    /**
     * @inheritdoc IReservoir
     */
    function conduit() public view returns (address) {
        ReservoirStorage storage $ = _getReservoirStorage();

        return address($._conduit);
    }

    /**
     * @inheritdoc IReservoir
     */
    function reservedAssets(IERC20 asset) public view returns (uint256) {
        ReservoirStorage storage $ = _getReservoirStorage();

        return $._reservedAssets[asset];
    }

    /**
     * @inheritdoc IReservoir
     */
    function reservedSupply(IERC20 asset) public view returns (uint256) {
        ReservoirStorage storage $ = _getReservoirStorage();

        return $._reservedSupply[asset];
    }

    /**
     * @inheritdoc IReservoir
     */
    function reservedFees(IERC20 asset) public view returns (uint256) {
        ReservoirStorage storage $ = _getReservoirStorage();

        return $._reservedFees[asset];
    }

    /**
     * @inheritdoc IReservoir
     */
    function totalFees(IERC20 asset) public view returns (uint256) {
        ReservoirStorage storage $ = _getReservoirStorage();

        return $._totalFees[asset] - $._reservedFees[asset];
    }

    /**
     * @inheritdoc IReservoir
     */
    function reserved(IERC20 asset, address sender) public view returns (WithdrawalReservation memory) {
        ReservoirStorage storage $ = _getReservoirStorage();

        return $._reservations[asset][sender];
    }

    /* ========================== CONSTRUCTOR ========================== */

    /**
     * @dev Disables initializers for the implementation.
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /* ========================== INITIALIZE ========================== */

    /**
     * @notice Initializes parent contracts and assigns roles.
     * @param initialOwner_ Address that will initially become an owner.
     * @param conduit_ Address of the conduit contract.
     */
    function initialize(address initialOwner_, IConduit conduit_) external initializer {
        __UUPSUpgradeable_init();
        __MultiAssetVault_init();
        __AccessControl_init();

        _setRoleAdmin(_OWNER_ROLE, _OWNER_ROLE);
        _setRoleAdmin(_AUTHORITY_ROLE, _OWNER_ROLE);

        _grantRole(_OWNER_ROLE, initialOwner_);

        _updateConduit(conduit_);
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IReservoir
     */
    function unreserve(IERC20 asset) external {
        ReservoirStorage storage $ = _getReservoirStorage();

        WithdrawalReservation memory reservation = $._reservations[asset][msg.sender];

        if (reservation.receiver == address(0)) {
            _revert(NoReservation.selector);
        }

        (bool canUnreserve, ) = _checkQueueResolution(reservation.pendingQueue);

        if (!canUnreserve) {
            _revert(QueueNotEmpty.selector);
        }

        $._reservedAssets[asset] -= reservation.assets;
        $._reservedSupply[asset] -= reservation.shares;
        $._reservedFees[asset] -= reservation.fees;

        delete $._reservations[asset][msg.sender];

        uint256 availableAssets = previewRedeem(asset, reservation.shares);

        super._withdraw(asset, reservation.receiver, availableAssets, reservation.shares);

        emit WithdrawalUnreserved({
            sender: msg.sender,
            asset: asset,
            receiver: reservation.receiver,
            assets: availableAssets,
            shares: reservation.shares
        });
    }

    /**
     * @inheritdoc IReservoir
     */
    function depositWithSlippage(
        IERC20 asset,
        uint256 assets,
        address receiver,
        uint256 minSharesOut
    ) external returns (uint256) {
        uint256 shares = deposit(asset, assets, receiver);

        if (shares < minSharesOut) {
            _revert(Slippage.selector);
        }

        return shares;
    }

    /**
     * @inheritdoc IReservoir
     */
    function mintWithSlippage(
        IERC20 asset,
        uint256 shares,
        address receiver,
        uint256 maxAssetsIn
    ) external returns (uint256) {
        uint256 assets = mint(asset, shares, receiver);

        if (assets > maxAssetsIn) {
            _revert(Slippage.selector);
        }

        return assets;
    }

    /**
     * @inheritdoc IReservoir
     */
    function withdrawWithSlippage(
        IERC20 asset,
        uint256 assets,
        address receiver,
        uint256 maxSharesIn
    ) external returns (uint256) {
        uint256 shares = withdraw(asset, assets, receiver);

        if (shares > maxSharesIn) {
            _revert(Slippage.selector);
        }

        return shares;
    }

    /**
     * @inheritdoc IReservoir
     */
    function redeemWithSlippage(
        IERC20 asset,
        uint256 shares,
        address receiver,
        uint256 minAssetsOut
    ) external returns (uint256) {
        uint256 assets = redeem(asset, shares, receiver);

        if (assets < minAssetsOut) {
            _revert(Slippage.selector);
        }

        return assets;
    }

    /**
     * @inheritdoc IReservoir
     */
    function absorb(
        IERC20 asset,
        uint256 assets,
        AbsorptionCause cause
    ) external onlyRole(_AUTHORITY_ROLE) validateAsset(asset) {
        ReservoirStorage storage $ = _getReservoirStorage();

        if (cause == AbsorptionCause.FEE) {
            unchecked {
                $._totalFees[asset] += assets;
            }
        }

        emit Absorb({ asset: asset, assets: assets, cause: cause });
    }

    /**
     * @inheritdoc IReservoir
     */
    function disburse(
        IERC20 asset,
        uint256 assets,
        address winner
    ) external onlyRole(_AUTHORITY_ROLE) validateAsset(asset) {
        if (assets == 0) {
            _revert(InvalidAmount.selector);
        }

        if (assets > totalAssets(asset)) {
            _revert(InsufficientTotalAssets.selector);
        }

        if (winner == address(0)) {
            _revert(InvalidAddress.selector);
        }

        asset.safeTransfer(winner, assets);

        emit Disburse({ asset: asset, assets: assets, winner: winner });
    }

    /**
     * @inheritdoc IReservoir
     */
    function configureAsset(IERC20 asset, IConduit.Route memory newRoute, bool state) external onlyRole(_OWNER_ROLE) {
        _configureAsset(asset, state);

        IConduit(conduit()).addRemoveRoute(asset, newRoute, state);
    }

    /**
     * @inheritdoc IReservoir
     */
    function updateRainDecision(IRainDecision newRainDecision) external onlyRole(_OWNER_ROLE) {
        ReservoirStorage storage $ = _getReservoirStorage();

        if (address(newRainDecision) == address(0)) {
            _revert(InvalidAddress.selector);
        }

        address oldRainDecision = address($._rainDecision);

        if (address(newRainDecision) == oldRainDecision) {
            _revert(InvalidAssignment.selector);
        }

        $._rainDecision = IRainDecision(newRainDecision);

        emit UpdateRainDecision({ newRainDecision: address(newRainDecision), oldRainDecision: oldRainDecision });
    }

    /**
     * @inheritdoc IReservoir
     */
    function updateConduit(IConduit newConduit) external onlyRole(_OWNER_ROLE) {
        _updateConduit(newConduit);
    }

    /**
     * @inheritdoc IReservoir
     */
    function previewFees(IERC20 asset, uint256 shares) public view returns (uint256) {
        return shares.mulDiv(totalFees(asset) + 1, totalSupply(asset) + 10 ** _decimalsOffset(), Math.Rounding.Floor);
    }

    /**
     * @inheritdoc IReservoir
     */
    function previewUnreserve(
        IERC20 asset,
        address sender
    ) public view returns (bool, IRainDecision.ActivityQueueData memory) {
        ReservoirStorage storage $ = _getReservoirStorage();

        WithdrawalReservation memory reservation = $._reservations[asset][sender];

        if (reservation.receiver == address(0)) {
            return (false, Types.ActivityQueueData(Types.MarketType(0), 0, bytes32(0)));
        }

        return _checkQueueResolution(reservation.pendingQueue);
    }

    /**
     * @inheritdoc IMultiAssetVault
     */
    function totalSupply(
        IERC20 asset
    ) public view override(IMultiAssetVault, MultiAssetVaultUpgradeable) returns (uint256) {
        return super.totalSupply(asset) - reservedSupply(asset);
    }

    /**
     * @inheritdoc IMultiAssetVault
     */
    function balanceOf(
        IERC20 asset,
        address owner
    ) public view override(IMultiAssetVault, MultiAssetVaultUpgradeable) returns (uint256) {
        return super.balanceOf(asset, owner) - reserved(asset, owner).shares;
    }

    /**
     * @inheritdoc IMultiAssetVault
     */
    function totalAssets(
        IERC20 asset
    ) public view override(IMultiAssetVault, MultiAssetVaultUpgradeable) returns (uint256) {
        return (super.totalAssets(asset) - reservedAssets(asset)) - totalFees(asset);
    }

    /**
     * @inheritdoc MultiAssetVaultUpgradeable
     * @dev Overridden to implement reservation system.
     */
    function _withdraw(IERC20 asset, address receiver, uint256 assets, uint256 shares) internal override {
        ReservoirStorage storage $ = _getReservoirStorage();

        if ($._reservations[asset][msg.sender].receiver != address(0)) {
            _revert(ActiveReservation.selector);
        }

        uint256 fees = previewFees(asset, shares);

        IRainDecision.ActivityQueueData[] memory activeQueue = $._rainDecision.filteredActivityQueue();

        if (activeQueue.length > 0) {
            $._reservedAssets[asset] += assets;
            $._reservedSupply[asset] += shares;
            $._reservedFees[asset] += fees;

            $._reservations[asset][msg.sender].receiver = receiver;
            $._reservations[asset][msg.sender].assets = assets;
            $._reservations[asset][msg.sender].shares = shares;
            $._reservations[asset][msg.sender].fees = fees;
            $._reservations[asset][msg.sender].pendingQueue = activeQueue;

            emit WithdrawalReserved({
                sender: msg.sender,
                asset: asset,
                receiver: receiver,
                assets: assets,
                shares: shares,
                fees: fees,
                activeQueueLength: activeQueue.length
            });

            return;
        }

        super._withdraw(asset, receiver, assets, shares);
    }

    /**
     * @inheritdoc MultiAssetVaultUpgradeable
     * @dev Overridden to deduct fees.
     */
    function _beforeWithdraw(IERC20 asset, uint256 shares) internal override {
        ReservoirStorage storage $ = _getReservoirStorage();

        uint256 fees = previewFees(asset, shares);

        $._totalFees[asset] -= fees;
    }

    /**
     * @inheritdoc UUPSUpgradeable
     * @dev Overridden to add validations.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newImplementation` cannot be the zero address.
     *
     * @param newImplementation Address of the new implementation contract.
     */
    function _authorizeUpgrade(address newImplementation) internal view override onlyRole(_OWNER_ROLE) {
        if (newImplementation == address(0)) {
            _revert(InvalidAddress.selector);
        }
    }

    /**
     * @dev Implements {updateConduit} logic.
     * @param newConduit Address of the new conduit.
     */
    function _updateConduit(IConduit newConduit) private {
        ReservoirStorage storage $ = _getReservoirStorage();

        if (address(newConduit) == address(0)) {
            _revert(InvalidAddress.selector);
        }

        address oldConduit = address($._conduit);

        if (address(newConduit) == oldConduit) {
            _revert(InvalidAssignment.selector);
        }

        $._conduit = newConduit;

        emit UpdateConduit({ newConduit: address(newConduit), oldConduit: oldConduit });
    }

    /**
     * @dev Checks if all queue items from a reservation have been resolved.
     * @param pendingQueue Array of queue items to check.
     * @return canUnreserve Whether all items are resolved.
     * @return blockingActivity Active queue item blocking unreserve.
     */
    function _checkQueueResolution(
        IRainDecision.ActivityQueueData[] memory pendingQueue
    ) private view returns (bool, IRainDecision.ActivityQueueData memory) {
        (bool anyActive, IRainDecision.ActivityQueueData memory firstActive) = IRainDecision(rainDecision())
            .areActivitiesQueued(pendingQueue);

        return (!anyActive, firstActive);
    }
}
