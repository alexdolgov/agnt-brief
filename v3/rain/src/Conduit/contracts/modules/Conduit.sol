// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import { IConduit } from "../interfaces/IConduit.sol";
import { IERC20Burnable } from "../interfaces/IERC20Burnable.sol";
import { RouteExecutor } from "../libraries/RouteExecutor.sol";
import { _AUTHORITY_ROLE, _MANAGER_ROLE, _OWNER_ROLE } from "../shared/Constants.sol";
import { InvalidAddress, InvalidAmount, InvalidAssignment, InvalidBytesArray } from "../shared/Errors.sol";
import { _revert } from "../shared/Globals.sol";

/**
 * @title Conduit
 * @author Rain Team
 * @notice Allows the protocol token to be bought back and burned via predefined routes.
 * @dev Does not validate whether assets are registered in the {Reservoir}. Since the contract only burns protocol
 * tokens, accepting unregistered assets is a non-issue.
 */
contract Conduit is IConduit, UUPSUpgradeable, AccessControlUpgradeable {
    using { SafeERC20.safeTransfer, RouteExecutor.executeRoutedSwap, RouteExecutor.executeArbitrarySwap } for IERC20;

    /* ========================== ERC7201 STORAGE ========================== */

    /// @custom:storage-location erc7201:raindecision.storage.Conduit
    struct ConduitStorage {
        uint256 _slippageBps;
        address _backup;
        IERC20Burnable _protocolToken;
        mapping(IERC20 asset => Route route) _route;
    }

    // keccak256(abi.encode(uint256(keccak256("raindecision.storage.Conduit")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ConduitStorageLocation =
        0x2755da668955b17de60212cbf342362328e12bd04b06b1e5beeb656364478200;

    function _getConduitStorage() private pure returns (ConduitStorage storage $) {
        assembly {
            $.slot := ConduitStorageLocation
        }
    }

    /**
     * @inheritdoc IConduit
     */
    function slippageBps() public view returns (uint256) {
        ConduitStorage storage $ = _getConduitStorage();

        return $._slippageBps;
    }

    /**
     * @inheritdoc IConduit
     */
    function backup() public view returns (address) {
        ConduitStorage storage $ = _getConduitStorage();

        return $._backup;
    }

    /**
     * @inheritdoc IConduit
     */
    function protocolToken() public view returns (address) {
        ConduitStorage storage $ = _getConduitStorage();

        return address($._protocolToken);
    }

    /**
     * @inheritdoc IConduit
     */
    function route(IERC20 asset) public view returns (Route memory) {
        ConduitStorage storage $ = _getConduitStorage();

        return $._route[asset];
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
     * @notice Initializes parent contracts, assigns roles and initializes state variables.
     * @param initialOwner_ Address to which ownership will be initially granted.
     * @param manager_ Address which will be granted the manager role.
     * @param slippageBps_ Slippage tolerance in basis points.
     * @param backup_ Address that serves as backup to receive assets when buyback and burn fails.
     * @param protocolToken_ Address of the protocol token.
     */
    function initialize(
        address initialOwner_,
        address manager_,
        uint256 slippageBps_,
        address backup_,
        IERC20Burnable protocolToken_
    ) external initializer {
        __UUPSUpgradeable_init();
        __AccessControl_init();

        ConduitStorage storage $ = _getConduitStorage();

        if (initialOwner_ == address(0) || manager_ == address(0) || address(protocolToken_) == address(0)) {
            _revert(InvalidAddress.selector);
        }

        _setRoleAdmin(_OWNER_ROLE, _OWNER_ROLE);
        _setRoleAdmin(_AUTHORITY_ROLE, _OWNER_ROLE);
        _setRoleAdmin(_MANAGER_ROLE, _OWNER_ROLE);

        _grantRole(_OWNER_ROLE, initialOwner_);
        _grantRole(_MANAGER_ROLE, manager_);

        _updateSlippageBps(slippageBps_);
        _updateBackup(backup_);
        $._protocolToken = protocolToken_;
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IConduit
     */
    function accept(IERC20 asset, uint256 assets) external onlyRole(_AUTHORITY_ROLE) {
        emit Accept({ asset: address(asset), assets: assets });

        _burnOrFallback(
            asset,
            assets,
            _checkAsset(asset) ? true : asset.executeRoutedSwap(assets, slippageBps(), route(asset))
        );
    }

    /**
     * @inheritdoc IConduit
     */
    function forceBuybackAndBurn(IERC20 asset, Call[] memory arbitraryRoute) external onlyRole(_MANAGER_ROLE) {
        _burnOrFallback(asset, asset.balanceOf(address(this)), asset.executeArbitrarySwap(arbitraryRoute));
    }

    /**
     * @inheritdoc IConduit
     */
    function updateSlippageBps(uint256 newSlippageBps) external onlyRole(_OWNER_ROLE) {
        _updateSlippageBps(newSlippageBps);
    }

    /**
     * @inheritdoc IConduit
     */
    function updateBackup(address newBackup) external onlyRole(_OWNER_ROLE) {
        _updateBackup(newBackup);
    }

    /**
     * @inheritdoc IConduit
     */
    function addRemoveRoute(IERC20 asset, Route memory newRoute, bool state) external onlyRole(_AUTHORITY_ROLE) {
        if (_checkAsset(asset)) {
            return;
        }

        if (state) {
            _addRoute(asset, newRoute);
        } else {
            _removeRoute(asset);
        }
    }

    /**
     * @inheritdoc IConduit
     */
    function replaceRoute(IERC20 asset, Route memory newRoute) external onlyRole(_OWNER_ROLE) {
        if (address(asset) == address(0)) {
            _revert(InvalidAddress.selector);
        }

        if (route(asset).path.length == 0) {
            _revert(NoRouteToReplace.selector);
        }

        _removeRoute(asset);
        _addRoute(asset, newRoute);
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
     * @dev Implements burn with fallback to backup wallet on swap failure.
     *
     * NOTE: If the swap fails, the original asset is transferred to the backup wallet. Conversely, if the swap
     * succeeds, the acquired protocol tokens are burned.
     *
     * @param asset Asset to send to the backup wallet when swap fails.
     * @param assets Amount of assets to burn or send to backup.
     * @param swapSuccess Whether the swap succeeded.
     */
    function _burnOrFallback(IERC20 asset, uint256 assets, bool swapSuccess) private {
        if (!swapSuccess) {
            asset.safeTransfer(backup(), assets);

            emit BuybackAndBurnFallback({ asset: address(asset), assets: assets });

            return;
        }

        IERC20Burnable burnableProtocolToken = IERC20Burnable(protocolToken());
        uint256 protocolTokenAmount = burnableProtocolToken.balanceOf(address(this));

        burnableProtocolToken.burn(protocolTokenAmount);

        emit BuybackAndBurn({ asset: address(asset), assets: assets, burned: protocolTokenAmount });
    }

    /**
     * @dev Implements {updateSlippageBps} logic.
     * @param newSlippageBps Value of the new slippage tolerance.
     */
    function _updateSlippageBps(uint256 newSlippageBps) private {
        ConduitStorage storage $ = _getConduitStorage();

        if (newSlippageBps == 0) {
            _revert(InvalidAmount.selector);
        }

        uint256 oldSlippageBps = $._slippageBps;

        if (newSlippageBps == oldSlippageBps) {
            _revert(InvalidAssignment.selector);
        }

        $._slippageBps = newSlippageBps;

        emit UpdateSlippageBps({ newSlippageBps: newSlippageBps, oldSlippageBps: oldSlippageBps });
    }

    /**
     * @dev Implements {updateBackup} logic.
     * @param newBackup Address of the new backup wallet.
     */
    function _updateBackup(address newBackup) private {
        ConduitStorage storage $ = _getConduitStorage();

        if (address(newBackup) == address(0)) {
            _revert(InvalidAddress.selector);
        }

        address oldBackup = address($._backup);

        if (address(newBackup) == oldBackup) {
            _revert(InvalidAssignment.selector);
        }

        $._backup = newBackup;

        emit UpdateBackup({ newBackup: address(newBackup), oldBackup: oldBackup });
    }

    /**
     * @dev Adds route for the given asset.
     *
     * Requirements:
     *
     * - `newRoute` cannot have an empty path.
     *
     * @param asset Asset for which the route is being added.
     * @param newRoute Route to add.
     */
    function _addRoute(IERC20 asset, Route memory newRoute) private {
        ConduitStorage storage $ = _getConduitStorage();

        if (newRoute.path.length == 0) {
            _revert(InvalidBytesArray.selector);
        }

        $._route[asset] = newRoute;

        emit AddRoute({ asset: address(asset), routeType: newRoute.routeType, path: newRoute.path });
    }

    /**
     * @dev Removes route relevant to the given asset.
     * @param asset Asset for which the route is being removed.
     */
    function _removeRoute(IERC20 asset) private {
        ConduitStorage storage $ = _getConduitStorage();

        delete $._route[asset];

        emit RemoveRoute({ asset: address(asset) });
    }

    /**
     * @dev Checks if the asset being interacted with is the protocol token.
     * @param asset Asset to check.
     * @return state Whether the asset is the protocol token.
     */
    function _checkAsset(IERC20 asset) private view returns (bool) {
        if (address(asset) == protocolToken()) {
            return true;
        }

        return false;
    }
}
