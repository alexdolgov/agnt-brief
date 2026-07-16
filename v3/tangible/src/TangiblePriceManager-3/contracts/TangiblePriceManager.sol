// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./abstract/AdminAndTangibleAccess.sol";
import "./interfaces/ITangiblePriceManager.sol";

contract TangiblePriceManager is ITangiblePriceManager, AdminAndTangibleAccess {
    mapping(ITangibleNFT => IPriceOracle) public oracleForCategory;

    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @dev The function returns contract oracle for category.
    function getPriceOracleForCategory(ITangibleNFT category)
        external
        view
        override
        returns (IPriceOracle)
    {
        return oracleForCategory[category];
    }

    /// @dev The function returns current price from oracle for provided category.
    function setOracleForCategory(ITangibleNFT category, IPriceOracle oracle)
        external
        override
        onlyFactoryOrAdmin
    {
        require(address(category) != address(0), "Zero category");
        require(address(oracle) != address(0), "Zero oracle");
        oracleForCategory[category] = oracle;
        emit CategoryPriceOracleAdded(address(category), address(oracle));
    }
}
