// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";
import { IERC5267 } from "@openzeppelin/contracts/interfaces/IERC5267.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import { EIP712Upgradeable } from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";

import { IConduit } from "../../../../interfaces/IConduit.sol";
import { IRandomNumberService } from "../../../../interfaces/IRandomNumberService.sol";
import { IReservoir } from "../../../../interfaces/IReservoir.sol";

import { LibAppStorage } from "../../../libraries/LibAppStorage.sol";
import { LibConstants } from "../../../libraries/LibConstants.sol";
import { LibIntrospection } from "../../../libraries/LibIntrospection.sol";
import { LibMarketThreshold } from "../../../libraries/LibMarketThreshold.sol";
import { LibUtilsRevert } from "../../../libraries/LibUtilsRevert.sol";
import { Errors } from "../../../shared/Errors.sol";
import { Types } from "../../../shared/Types.sol";

import { IDiamondCut } from "../interfaces/IDiamondCut.sol";
import { IDiamondLoupe } from "../interfaces/IDiamondLoupe.sol";

/**
 * @title DiamondInit
 * @author Nick Mudge (Mudgen)
 * @notice Initializes facets, storage, and roles for a diamond contract.
 * @dev Designed to be called only once atomically during deployment/upgrade.
 */
contract DiamondInit is
    Initializable,
    ReentrancyGuardUpgradeable,
    EIP712Upgradeable,
    PausableUpgradeable,
    AccessControlUpgradeable
{
    /* ========================== TYPES ========================== */

    /// @dev Parameters used for initializing the diamond contract.
    struct DiamondParams {
        /// @custom:member initialOwner Address that will initially become an owner.
        address initialOwner;
        /// @custom:member maxPositionTotalAssetsDivisor Divisor used to calculate the maximum position amount.
        uint256 maxPositionTotalAssetsDivisor;
        /// @custom:member signer Address of the signer wallet.
        address signer;
        /// @custom:member defaultAsset Address of the default asset token.
        IERC20 defaultAsset;
        /// @custom:member rng Address of the rng contract.
        IRandomNumberService rng;
        /// @custom:member conduit Address of the conduit contract.
        IConduit conduit;
        /// @custom:member reservoir Address of the reservoir contract.
        IReservoir reservoir;
        /// @custom:member url Url used for off-chain requests.
        string url;
        /// @custom:member path Path appended to the url for off-chain requests.
        string path;
        /// @custom:member jobId Job Id used for off-chain requests.
        string jobId;
        /// @custom:member feeBps Fee distribution in basis points for opening positions across markets.
        Types.FeeBps[] feeBps;
        /// @custom:member minLine Minimum allowed line for opening positions.
        uint256 minLine;
        /// @custom:member maxLine Maximum allowed line for opening positions.
        uint256 maxLine;
        /// @custom:member name EIP712 domain name.
        string name;
        /// @custom:member version EIP712 domain version.
        string version;
    }

    /* ========================== INITIALIZE ========================== */

    /**
     * @notice Initializes the diamond contract with all required facets, storage, and roles.
     * @dev Decodes initialization parameters from `args` and sets up:
     * - AppStorage
     * - MarketThreshold storage
     * - Introspection storage
     * - ReentrancyGuard
     * - EIP712 domain
     * - Pausable
     * - AccessControl
     *
     * Requirements:
     *
     * - can only be called once.
     * - must be called atomically at the time of diamond creation.
     *
     * @param args Encoded diamond initialization parameters.
     */
    function initialize(bytes memory args) external initializer {
        DiamondParams memory params = abi.decode(args, (DiamondParams));

        if (
            params.initialOwner == address(0) ||
            params.signer == address(0) ||
            address(params.defaultAsset) == address(0) ||
            address(params.rng) == address(0) ||
            address(params.conduit) == address(0) ||
            address(params.reservoir) == address(0)
        ) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAddress.selector);
        }

        if (params.maxPositionTotalAssetsDivisor == 0 || params.minLine == 0 || params.maxLine == 0) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAmount.selector);
        }

        if (
            bytes(params.url).length == 0 ||
            bytes(params.path).length == 0 ||
            bytes(params.jobId).length == 0 ||
            bytes(params.name).length == 0 ||
            bytes(params.version).length == 0
        ) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidString.selector);
        }

        // Initializing AppStorage.
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        s._maxPositionTotalAssetsDivisor = params.maxPositionTotalAssetsDivisor;
        s._signer = params.signer;
        s._defaultAsset = params.defaultAsset;
        s._rng = params.rng;
        s._conduit = params.conduit;
        s._reservoir = params.reservoir;
        s._url = params.url;
        s._path = params.path;
        s._jobId = params.jobId;

        uint256 feeBpsLength = params.feeBps.length;

        for (uint256 i; i < feeBpsLength; ) {
            s._feeBps[Types.MarketType(i)] = params.feeBps[i];

            unchecked {
                ++i;
            }
        }

        // Initializing MarketThreshold.
        LibMarketThreshold.MarketThresholdStorage storage gds = LibMarketThreshold.getMarketThresholdStorage();

        gds._minLine = params.minLine;
        gds._maxLine = params.maxLine;

        // Initializing Introspection.
        LibIntrospection.IntrospectionStorage storage ins = LibIntrospection.getIntrospectionStorage();

        ins._supportsInterface[type(IAccessControl).interfaceId] = true;
        ins._supportsInterface[type(IERC5267).interfaceId] = true;
        ins._supportsInterface[type(IERC165).interfaceId] = true;
        ins._supportsInterface[type(IDiamondCut).interfaceId] = true;
        ins._supportsInterface[type(IDiamondLoupe).interfaceId] = true;

        // Initializing ReentrancyGuard.
        __ReentrancyGuard_init();

        // Initializing EIP712.
        __EIP712_init(params.name, params.version);

        // Initializing Pausable.
        __Pausable_init();

        // Initializing AccessControl.
        __AccessControl_init();

        _setRoleAdmin(LibConstants.OWNER_ROLE, LibConstants.OWNER_ROLE);
        _setRoleAdmin(LibConstants.AUTHORITY_ROLE, LibConstants.OWNER_ROLE);

        _grantRole(LibConstants.OWNER_ROLE, params.initialOwner);
        _grantRole(LibConstants.AUTHORITY_ROLE, address(params.rng));
    }
}
