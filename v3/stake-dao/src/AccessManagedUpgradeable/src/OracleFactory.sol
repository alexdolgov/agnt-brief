// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import "openzeppelin-contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {SpectraPriceOracle} from "./SpectraPriceOracle.sol";
import {ZeroCouponDiscountModel} from "./models/OracleZCBModel.sol";
import {LinearDiscountModel} from "./models/OracleLinearModel.sol";

contract SpectraPriceOracleFactory is AccessManagedUpgradeable {
    /// @notice Event emitted when a new Oracle is deployed.
    event OracleCreated(address indexed pt, address indexed oracle, address indexed discountModel);

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
    function initialize(address _initialAuthority) external initializer {
        __AccessManaged_init(_initialAuthority);
    }

    /**
     * @dev Deploys a new `SpectraOracle` for a given PT.
     * @param _pt The address of the Principal Token (PT).
     * @param _discountModel The discount model address.
     * @return oracle The address of the newly deployed Oracle.
     */
    function createOracle(address _pt, address _discountModel, uint256 initialImpliedAPY, address initOwner) external returns (address oracle) {
        require(_pt != address(0), "PT address cannot be zero");

        // Deploy a new oracle contract
        SpectraPriceOracle newOracle = new SpectraPriceOracle(_pt, _discountModel, initialImpliedAPY, initOwner);
        oracle = address(newOracle);

        emit OracleCreated(_pt, oracle, _discountModel);
    }
}
