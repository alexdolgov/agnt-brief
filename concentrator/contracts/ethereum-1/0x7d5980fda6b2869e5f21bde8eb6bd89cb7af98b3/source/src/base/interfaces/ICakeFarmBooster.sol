// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

interface ICakeFarmBooster {
    struct BoosterWrapperConfig {
        address wrapper;
        bool status;
    }

    struct DelegatorConfig {
        address VECakeUser;
        address delegator;
    }

    function approveToVECakeUser(address) external;

    function owner() external view returns (address);

    function setBoosterFarms(BoosterWrapperConfig[] calldata) external;

    function setDelegators(DelegatorConfig[] calldata) external;

    function wrapperPoolIds(address) external view returns (uint256);

    function whiteListWrapper(address _wrapper) external view returns (bool);
}
