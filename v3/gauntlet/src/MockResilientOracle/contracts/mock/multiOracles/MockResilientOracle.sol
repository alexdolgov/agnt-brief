// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "./../../oracle/interfaces/IResilientOracle.sol";

contract MockResilientOracle is IResilientOracle, Initializable, AccessControlUpgradeable {
    struct TokenConfig {
        /// @notice asset address
        address asset;
        /// @notice `oracles` stores the oracles based on their role in the following order:
        /// [main, pivot, fallback],
        /// It can be indexed with the corresponding enum OracleRole value
        address[3] oracles;
        /// @notice `enableFlagsForOracles` stores the enabled state
        /// for each oracle in the same order as `oracles`
        bool[3] enableFlagsForOracles;
        /// @notice `timeDeltaTolerance` stores the tolerance of
        /// the difference between the block timestamp and the price update time
        /// the unit is seconds
        uint256 timeDeltaTolerance;
    }

    IResilientOracle public resilientOracle;

    // token => price
    mapping(address => uint256) public prices;

    function initialize(address _admin, address _resilientOracle) public initializer {
         _setupRole(DEFAULT_ADMIN_ROLE, _admin);
        resilientOracle = IResilientOracle(_resilientOracle);
    }

    function getTokenConfig(address asset) external view returns (TokenConfig memory) {
        return TokenConfig({
            asset: asset,
            oracles: [address(resilientOracle), address(0), address(0)],
            enableFlagsForOracles: [true, false, false],
            timeDeltaTolerance: 0
        });
    }

    function realPrice(address asset) external view returns (uint256) {
        return resilientOracle.peek(asset);
    }

    function syncRealPrice(address asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
        prices[asset] = resilientOracle.peek(asset);
    }

    function setPrice(address asset, uint256 _price) external onlyRole(DEFAULT_ADMIN_ROLE) {
        prices[asset] = _price;
    }

    function peek(address asset) public view returns (uint256) {
        return prices[asset];
    }
}
