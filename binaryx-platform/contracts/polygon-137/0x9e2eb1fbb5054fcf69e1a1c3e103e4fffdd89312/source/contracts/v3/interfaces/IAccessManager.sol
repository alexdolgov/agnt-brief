// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IAccessManager {
    enum Action {
        ManageUsdtf,
        ConfigureApp,
        ManageKycList,
        ManageAsset,
        ManageOracle,
        ManageSecondaryMarket,
        CreateOffPlan,
        ManageOffPlan
    }

    event SuperOracleAdded(address user);
    event SuperOracleRemoved(address user);
    event KycOracleAdded(address user);
    event KycOracleRemoved(address user);

    function isSuperOracle(address user) external view returns (bool);

    function addSuperOracle(address user) external;

    function removeSuperOracle(address user) external;

    function isKycOracle(address user) external view returns (bool);

    function addKycOracle(address user) external;

    function removeKycOracle(address user) external;

    function can(address user, Action action) external view returns (bool);

    function canDoWith(address user, Action action, address target) external view returns (bool);
}
