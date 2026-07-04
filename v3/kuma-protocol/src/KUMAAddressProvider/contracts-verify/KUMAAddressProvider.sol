// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import {Errors} from "./libraries/Errors.sol";
import {IAccessControl} from "lib/openzeppelin-contracts/contracts/access/IAccessControl.sol";
import {IKUMAAddressProvider} from "./interfaces/IKUMAAddressProvider.sol";
import {IKIBToken} from "./interfaces/IKIBToken.sol";
import {IKUMAFeeCollector} from "./interfaces/IKUMAFeeCollector.sol";
import {IKUMASwap} from "./interfaces/IKUMASwap.sol";
import {Initializable} from "lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";
import {Roles} from "./libraries/Roles.sol";
import {UUPSUpgradeable} from "lib/openzeppelin-contracts/contracts/proxy/utils/UUPSUpgradeable.sol";

/**
 * @title KUMA Address Provider
 * @author MIMO Labs
 * @dev The address provider for the KUMA protocol
 */
contract KUMAAddressProvider is IKUMAAddressProvider, UUPSUpgradeable, Initializable {
    IAccessControl private _accessController;

    address private _KBCToken;
    address private _rateFeed;
    address private _KUMABondToken;

    mapping(bytes32 => address) private _KIBToken;
    mapping(bytes32 => address) private _KUMASwap;
    mapping(bytes32 => address) private _KUMAFeeCollector;

    /**
     * @notice Modifier to check if the given address is not the 0x address
     * @param _address The address to check
     */
    modifier onlyValidAddress(address _address) {
        if (_address == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }
        _;
    }

    /**
     * @notice Modifier to check if the caller has the KUMA_MANAGER role
     */
    modifier onlyManager() {
        if (!_accessController.hasRole(Roles.KUMA_MANAGER_ROLE, msg.sender)) {
            revert Errors.ACCESS_CONTROL_ACCOUNT_IS_MISSING_ROLE(msg.sender, Roles.KUMA_MANAGER_ROLE);
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(IAccessControl accessController) external initializer {
        if (address(accessController) == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }
        _accessController = accessController;

        emit AccessControllerSet(address(accessController));
    }

    /**
     * @notice Sets the KBC token address for the KUMA protocol
     * @param KBCToken The address of the KBC token contract
     */
    function setKBCToken(address KBCToken) external onlyManager onlyValidAddress(KBCToken) {
        _KBCToken = KBCToken;
        emit KBCTokenSet(KBCToken);
    }

    /**
     * @notice Sets the RateFeed address for the KUMA protocol
     * @param rateFeed The address of the rate feed contract
     */
    function setRateFeed(address rateFeed) external onlyManager onlyValidAddress(rateFeed) {
        _rateFeed = rateFeed;
        emit RateFeedSet(rateFeed);
    }

    /**
     * @notice Sets the KUMA Bonds NFT address for the KUMA protocol
     * @param KUMABondToken The address of the KUMA Bonds NFT contract
     */
    function setKUMABondToken(address KUMABondToken) external onlyManager onlyValidAddress(KUMABondToken) {
        _KUMABondToken = KUMABondToken;
        emit KUMABondTokenSet(KUMABondToken);
    }

    /**
     * @notice Sets the KIB token address for a given risk category of the KUMA protocol
     * @dev Must be called by the KUMA_MANAGER role
     * @param currency The currency of the risk category of the KIB token
     * @param issuer The issuer of the risk category of the KIB token
     * @param term The term of the risk category of the KIB token, in seconds
     * @param KIBToken The address of the KIB token contract for the risk category; address must not be 0x
     */
    function setKIBToken(bytes4 currency, bytes32 issuer, uint64 term, address KIBToken)
        external
        onlyManager
        onlyValidAddress(KIBToken)
    {
        bytes32 riskCategory = _checkRiskCategory(currency, issuer, term);
        if (IKIBToken(KIBToken).getRiskCategory() != riskCategory) {
            revert Errors.RISK_CATEGORY_MISMATCH();
        }
        _KIBToken[riskCategory] = KIBToken;
        emit KIBTokenSet(KIBToken, currency, issuer, term);
    }

    /**
     * @notice Sets the KUMA Swap address for a given risk category of the KUMA protocol
     * @dev Must be called by the KUMA_MANAGER role
     * @param currency The currency of the risk category of the KUMASwap
     * @param issuer The issuer of the risk category of the KUMASwap
     * @param term The term of the risk category of the KUMASwap, in seconds
     * @param KUMASwap The address of the KUMA Swap contract for the risk category; address must not be 0x
     */
    function setKUMASwap(bytes4 currency, bytes32 issuer, uint64 term, address KUMASwap)
        external
        onlyManager
        onlyValidAddress(KUMASwap)
    {
        bytes32 riskCategory = _checkRiskCategory(currency, issuer, term);
        if (IKUMASwap(KUMASwap).getRiskCategory() != riskCategory) {
            revert Errors.RISK_CATEGORY_MISMATCH();
        }
        _KUMASwap[riskCategory] = KUMASwap;
        emit KUMASwapSet(KUMASwap, currency, issuer, term);
    }

    /**
     * @notice Sets the KUMA Fee Collector address for a given risk category of the KUMA protocol
     * @dev Must be called by the KUMA_MANAGER role
     * @param currency The currency of the risk category of the KUMAFeeCollector
     * @param issuer The issuer of the risk category of the KUMAFeeCollector
     * @param term The term of the risk category of the KUMAFeeCollector
     * @param KUMAFeeCollector The address of the KUMA Fee Collector contract for the risk category; address must not be 0x
     */
    function setKUMAFeeCollector(bytes4 currency, bytes32 issuer, uint64 term, address KUMAFeeCollector)
        external
        onlyManager
        onlyValidAddress(KUMAFeeCollector)
    {
        bytes32 riskCategory = _checkRiskCategory(currency, issuer, term);
        if (IKUMAFeeCollector(KUMAFeeCollector).getRiskCategory() != riskCategory) {
            revert Errors.RISK_CATEGORY_MISMATCH();
        }
        _KUMAFeeCollector[riskCategory] = KUMAFeeCollector;
        emit KUMAFeeCollectorSet(KUMAFeeCollector, currency, issuer, term);
    }

    /**
     * @return The address of the access controller for the KUMA protocol
     */
    function getAccessController() external view returns (IAccessControl) {
        return _accessController;
    }

    /**
     * @return The address of the KBC token for the KUMA protocol
     */
    function getKBCToken() external view returns (address) {
        return _KBCToken;
    }

    /**
     * @return The address of the rate feed for the KUMA protocol
     */
    function getRateFeed() external view returns (address) {
        return _rateFeed;
    }

    /**
     * @return The address of the KUMA Bonds NFT for the KUMA protocol
     */
    function getKUMABondToken() external view returns (address) {
        return _KUMABondToken;
    }

    /**
     * @param riskCategory The risk category of the KIB token
     * @return The address of the KIB token for a given risk category of the KUMA protocol
     */
    function getKIBToken(bytes32 riskCategory) external view returns (address) {
        return _KIBToken[riskCategory];
    }

    /**
     * @param riskCategory The risk category of the KUMASwap
     * @return The address of the KUMA Swap for a given risk category of the KUMA protocol
     */
    function getKUMASwap(bytes32 riskCategory) external view returns (address) {
        return _KUMASwap[riskCategory];
    }

    /**
     * @param riskCategory The risk category of the KUMAFeeCollector
     * @return The address of the KUMA Fee Collector for a given risk category of the KUMA protocol
     */
    function getKUMAFeeCollector(bytes32 riskCategory) external view returns (address) {
        return _KUMAFeeCollector[riskCategory];
    }

    /**
     * @notice Checks if a given risk category is valid and returns the hash of the risk category
     * @param currency The currency of the risk category, given as bytes4
     * @param issuer The country of the risk category, given as bytes4
     * @param term The term of the risk category in seconds, given as uint32
     */
    function _checkRiskCategory(bytes4 currency, bytes32 issuer, uint64 term) internal pure returns (bytes32) {
        if (currency == bytes4(0) || issuer == bytes32(0) || term == 0) {
            revert Errors.INVALID_RISK_CATEGORY();
        }
        return keccak256(abi.encode(currency, issuer, term));
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyManager {}
}
