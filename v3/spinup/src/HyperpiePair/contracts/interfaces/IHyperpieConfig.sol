// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.21;

interface IHyperpieConfig {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/
    error CallerNotHyperpieConfigAllowedRole(string role);
    error CallerNotHyperpieConfigPriceProvider();
    error CallerNotHyperpieConfigOracleAdmin();
    error CallerNotHyperpieConfigOracle();
    error CallerNotHyperpiePauser();
    error CallerNotHyperpieConfigAllowedBot();
    error CallerNotHyperpieConfigAdmin();
    error CallerNotHyperpieConfigManager();
    error CallerNotHyperpieConfigMinter();
    error CallerNotHyperpieConfigBurner();
    error CallerNotHyperpieFactory();
    error CallerNotHyperpieConfigFeeManager();
    error CallerNotHyperpieConfigMetaConfig();
    error EmergencyPaused();
    error InvalidFeeValue();
    error DexV2Locked();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    event SetAddress(bytes32 key, address indexed addr);
    event MHypeFeeValueUpdated(uint256 mHypeFeeValue);
    event SetUintValue(bytes32 key, uint256 value);
    event SetWhitelistedFactory(address indexed factory, bool isApproved);
    event DexV2Paused(address account);
    event DexV2Unpaused(address account);

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    function getAddress(bytes32 addressId) external view returns (address);
    function getMHypeFeeValue() external view returns (uint256);

    function setAddress(bytes32 key, address addr) external;
    function getUint256Value(bytes32 valueId) external view returns (uint256);
    function whitelistedFactories(address factory) external view returns (bool);
    function isDexV2Paused() external view returns (bool);
}

interface IPausable {
    function paused() external view returns (bool);
}
