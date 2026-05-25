// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.13;

/// @dev Base interface for the GaugeFactoryV2
interface IGaugeFactoryV2_Base {
    function createGaugeV2(
        address _rewardToken,
        address _ve,
        address _token,
        address _distribution,
        address _internal_bribe,
        address _external_bribe,
        /// @dev unused parameter for backwards compatibility
        bool
    ) external returns (address);

    function activateEmergencyMode(address[] memory _gauges) external;

    function gauges() external view returns (address[] memory);

    function last_gauge() external view returns (address);

    function length() external view returns (uint256);

    function permissionsRegistry() external view returns (address);

    function setDistribution(address[] memory _gauges, address distro) external;

    function setGaugeRewarder(address[] memory _gauges, address[] memory _rewarder) external;

    function setInternalBribe(address[] memory _gauges, address[] memory int_bribe) external;

    function setPermissionsRegistry(address _registry) external;

    function stopEmergencyMode(address[] memory _gauges) external;
}

/// @dev This interface is used to manage gauges which use UniV2 like LP tokens found in this protocol.
interface IGaugeFactoryV2 is IGaugeFactoryV2_Base {
    function initialize(address _permissionRegistry) external;
}

 /// @dev This interface is used to manage gauges which use GAMMA ALM fungible LP tokens for Concentrated Liquidity on Algebra.
interface IGaugeFactoryV2_Gamma is IGaugeFactoryV2_Base {
    function initialize(address _permissionsRegistry, address _gammaFeeRecipient, address _pairFactoryClassic, address _feeVaultImplementation) external;

    function gammaFeeRecipient() external view returns (address);

    function last_feeVault() external view returns (address);

    function setGammaDefaultFeeRecipient(address _rec) external;

    function setGaugeFeeVault(address[] memory _gauges, address _vault) external;
}
