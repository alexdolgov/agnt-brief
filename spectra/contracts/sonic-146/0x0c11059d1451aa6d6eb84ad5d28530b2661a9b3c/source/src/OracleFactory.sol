// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

import "openzeppelin-contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import "openzeppelin-contracts/proxy/beacon/BeaconProxy.sol";
import {SpectraPriceOracle} from "./SpectraPriceOracle.sol";
import {ZeroCouponDiscountModel} from "./models/OracleZCBModel.sol";
import {LinearDiscountModel} from "./models/OracleLinearModel.sol";

contract SpectraPriceOracleFactory is AccessManagedUpgradeable {
    address public spectraPriceOracleBeacon;

    /// @notice Event emitted when a new Oracle is deployed.
    event OracleCreated(address indexed pt, address indexed oracle, address indexed discountModel);
    event SpectraPriceOracleBeaconChanged(address indexed oldBeacon, address indexed newBeacon);

    /**
     * @notice Constructor of the contract
     */
    constructor() {
        _disableInitializers(); // using this so that the deployed logic contract later cannot be initialized.
    }

    /**
     * @notice Initializer of the contract
     * @param _initialAuthority The address of the access manager.
     */
    function initialize(address _initialAuthority, address _spectraPriceOracleBeacon) external initializer {
        __AccessManaged_init(_initialAuthority);
        require(_spectraPriceOracleBeacon != address(0), "SpectraPriceOracleBeacon cannot be zero");
        spectraPriceOracleBeacon = _spectraPriceOracleBeacon;
        emit SpectraPriceOracleBeaconChanged(address(0), _spectraPriceOracleBeacon);
    }

    function setSpectraPriceOracleBeacon(address _spectraPriceOracleBeacon) external restricted {
        require(_spectraPriceOracleBeacon != address(0), "SpectraPriceOracleBeacon cannot be zero");
        emit SpectraPriceOracleBeaconChanged(spectraPriceOracleBeacon, _spectraPriceOracleBeacon);
        spectraPriceOracleBeacon = _spectraPriceOracleBeacon;
    }

    /**
     * @dev Deploys a new `SpectraOracle` for a given PT.
     * @param _pt The address of the Principal Token (PT).
     * @param _discountModel The discount model address.
     * @return oracle The address of the newly deployed Oracle.
     */
    function createOracle(
        address _pt,
        address _discountModel,
        uint256 initialImpliedAPY,
        address initOwner
    ) external returns (address oracle) {
        require(_pt != address(0), "PT address cannot be zero");

        bytes memory _data = abi.encodeWithSelector(
            SpectraPriceOracle(address(0)).initialize.selector,
            _pt,
            _discountModel,
            initialImpliedAPY,
            initOwner
        );
        // Deploy a new oracle contract
        oracle = address(new BeaconProxy(spectraPriceOracleBeacon, _data));

        emit OracleCreated(_pt, oracle, _discountModel);
    }
}
