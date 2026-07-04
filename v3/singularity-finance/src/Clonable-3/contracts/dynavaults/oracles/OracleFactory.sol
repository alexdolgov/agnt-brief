// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./ProxyReferenceAssetOracle.sol";
import "./OracleRegistry.sol";
import "../utils/Clonable.sol";
import "../utils/Checks.sol";

/**
 * @title Oracle Factory
 * @notice This instantiates a new ProxyReferenceAssetOracle for giving reference asset
 * @notice It registers the new oracle in the oracle registry
 */
contract OracleFactory is AccessControl {
    using Checks for address;

    address public oracleRegistry;
    address public baseReferenceAssetOracle;
    address public proxyOracleReferenceAssetImplementation;

    event CreatedOracle(address referenceAsset, address newOracle);
    
    constructor() {
	_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function initialize(address oracleRegistryAddress, address baseReferenceAssetOracleAddress, address proxyOracleReferenceAssetImplementationAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        oracleRegistry.isNotAlreadyInitialized();
        oracleRegistryAddress.requireNonZeroAddress();
        baseReferenceAssetOracleAddress.requireNonZeroAddress();
        proxyOracleReferenceAssetImplementationAddress.requireNonZeroAddress();
        
        oracleRegistry = oracleRegistryAddress;
        baseReferenceAssetOracle = baseReferenceAssetOracleAddress;
        proxyOracleReferenceAssetImplementation = proxyOracleReferenceAssetImplementationAddress;
    }

    function createOracle(address referenceAsset) external onlyRole(DEFAULT_ADMIN_ROLE) {
        address newOracle = Clonable(proxyOracleReferenceAssetImplementation).clone(address(this));
        ProxyReferenceAssetOracle(newOracle).initialize(referenceAsset, baseReferenceAssetOracle);
        OracleRegistry(oracleRegistry).registerOracle(referenceAsset, newOracle);
        emit CreatedOracle(referenceAsset, newOracle);
    }
}