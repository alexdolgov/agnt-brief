// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import {Errors} from "./libraries/Errors.sol";
import {IAccessControl} from "lib/openzeppelin-contracts/contracts/access/IAccessControl.sol";
import {IMCAGRateFeed} from "./interfaces/IMCAGRateFeed.sol";
import {Initializable} from "lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";
import {MCAGAggregatorInterface} from "lib/mcag-contracts/src/interfaces/MCAGAggregatorInterface.sol";
import {Roles} from "./libraries/Roles.sol";
import {UUPSUpgradeable} from "lib/openzeppelin-contracts/contracts/proxy/utils/UUPSUpgradeable.sol";
import {WadRayMath} from "./libraries/WadRayMath.sol";

/**
 * @title MCAG Rate Feed
 * @author MIMO Labs
 * @notice Contract to serve the rate of newly issued bonds for a specific risk category
 * @dev This is used by the KIBT as an upper bound on the yield of rebase rewards
 */
contract MCAGRateFeed is IMCAGRateFeed, UUPSUpgradeable, Initializable {
    uint8 private constant _DECIMALS = 27;
    uint256 private constant _MIN_RATE_COUPON = WadRayMath.RAY;

    uint256 private _stalenessThreshold;
    IAccessControl private _accessController;

    mapping(bytes32 => MCAGAggregatorInterface) private _oracles;

    modifier onlyManager() {
        if (!_accessController.hasRole(Roles.KUMA_MANAGER_ROLE, msg.sender)) {
            revert Errors.ACCESS_CONTROL_ACCOUNT_IS_MISSING_ROLE(msg.sender, Roles.KUMA_MANAGER_ROLE);
        }
        _;
    }

    constructor() initializer {}

    /**
     * @param accessController KUMA DAO AccessController
     * @param stalenessThreshold Staleness threshold in seconds
     */
    function initialize(IAccessControl accessController, uint256 stalenessThreshold) external initializer {
        if (address(accessController) == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }
        if (stalenessThreshold == 0) {
            revert Errors.CANNOT_SET_TO_ZERO();
        }
        _accessController = accessController;
        _stalenessThreshold = stalenessThreshold;

        emit AccessControllerSet(address(accessController));
        emit StalenessThresholdSet(stalenessThreshold);
    }

    /**
     * @notice Sets an MCAGAggregator for a specific risk category
     * @dev This function can only be called by the MCAG manager
     * @param currency Currency of the bond in bytes4 (e.g. 0x555344 for USD); cannot be 0x
     * @param issuer Issuer example (e.g. 0x5553 for USD); cannot be 0x
     * @param term Lifetime of the bond in seconds (e.g. 31449600 for a 52 week bond); cannot be 0
     * @param oracle MCAGAggregator address to set as the oracle; cannot be 0x
     */
    function setOracle(bytes4 currency, bytes32 issuer, uint32 term, MCAGAggregatorInterface oracle)
        external
        onlyManager
    {
        if (currency == bytes4(0) || issuer == bytes32(0) || term == 0) {
            revert Errors.WRONG_RISK_CATEGORY();
        }
        if (address(oracle) == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }

        bytes32 riskCategory = keccak256(abi.encode(currency, issuer, term));
        _oracles[riskCategory] = oracle;

        emit OracleSet(address(oracle), currency, issuer, term);
    }

    /**
     * @notice Sets a new staleness threshold
     * @dev This function can only be called by the MCAG manager
     * @param stalenessThreshold New staleness threshold in seconds; cannot be 0
     */
    function setStalenessThreshold(uint256 stalenessThreshold) external onlyManager {
        if (stalenessThreshold == 0) {
            revert Errors.CANNOT_SET_TO_ZERO();
        }
        _stalenessThreshold = stalenessThreshold;

        emit StalenessThresholdSet(stalenessThreshold);
    }

    /**
     * @return The address of the MCAG Access Controller.
     */
    function getAccessController() external view returns (IAccessControl) {
        return _accessController;
    }

    /**
     * @dev The riskCategory hash is computed with keccack256(abi.encode(currency, issuer, term))
     * @param riskCategory Hash of the risk category of the rate to retrieve data for
     * @return rate Central bank coupon of the most recently issued bond in 27 decimals, formatted as a per-second cumulative rate
     */
    function getRate(bytes32 riskCategory) external view returns (uint256) {
        MCAGAggregatorInterface oracle = _oracles[riskCategory];
        (, int256 answer,, uint256 updatedAt,) = oracle.latestRoundData();

        if (block.timestamp - updatedAt > _stalenessThreshold) {
            revert Errors.ORACLE_ANSWER_IS_STALE();
        }

        if (answer < 0) {
            return _MIN_RATE_COUPON;
        }

        uint256 rate = uint256(answer);
        uint8 oracleDecimal = oracle.decimals();

        if (_DECIMALS < oracleDecimal) {
            rate = uint256(answer) / (10 ** (oracleDecimal - _DECIMALS));
        } else if (_DECIMALS > oracleDecimal) {
            rate = uint256(answer) * 10 ** (_DECIMALS - oracleDecimal);
        }

        if (rate < _MIN_RATE_COUPON) {
            return _MIN_RATE_COUPON;
        }

        return rate;
    }

    /**
     * @dev The riskCategory hash is computed with keccack256(abi.encode(currency, issuer, term))
     * @param riskCategory Hash of the risk category of the rate to retrieve data for
     * @return MCAGAggregator for the given risk category
     */
    function getOracle(bytes32 riskCategory) external view returns (MCAGAggregatorInterface) {
        return _oracles[riskCategory];
    }

    /**
     * @return Current staleness threshold in seconds
     */
    function getStalenessThreshold() external view returns (uint256) {
        return _stalenessThreshold;
    }

    /**
     * @return Minimum acceptable rate from an oracle, in per-second cumulative yield formatted as RAY
     */
    function minRateCoupon() external pure returns (uint256) {
        return _MIN_RATE_COUPON;
    }

    /**
     * @return Number of decimals that data from getRate is formatted in
     */
    function decimals() external pure returns (uint8) {
        return _DECIMALS;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyManager {}
}
