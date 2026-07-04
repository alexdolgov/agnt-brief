//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IConfig {
    function initialize(bytes calldata initialValues) external;
    function addContract(string memory key, address value) external;

    function setPaused(bool _isPaused) external;
    function setPublic(bool _isPublic) external;
    function setProtocolTreasury(address _protocolTreasury) external;
    function setProtocolTreasuryRatio(uint64 _protocolTreasuryRatio) external;
    function setVestingRatio(uint64 _vestingRatio) external;
    function setVestingDuration(uint64 _vestDuration) external;
    function hasRole(bytes32 role, address account) external view returns (bool);
    function getRoleAdmin(bytes32 role) external view returns (bytes32);
    function grantRole(bytes32 role, address account) external;
    function revokeRole(bytes32 role, address account) external;
    function setRoleAdmin(bytes32 role, bytes32 adminRole) external;
    function setRedemptionFee(uint64 _redemptionFee) external;
    function setQueueLengthSecs(uint64 _queueLengthSecs) external;
    function setEarlyExitFee(uint64 _earlyExitFee) external;

    function isPaused() external view returns (bool);
    function isPublic() external view returns (bool);
    function inviterNFT() external view returns (address);
    function eMetis() external view returns (address);
    function eMetisMinter() external view returns (address);
    function redemptionQueue() external view returns (address);
    function vesting() external view returns (address);
    function seMetis() external view returns (address);
    function rewardDispatcher() external view returns (address);
    function enki() external view returns (address);
    function metis() external view returns (address);
    function bridge() external view returns (address);
    function l1Dealer() external view returns (address);
    function protocolTreasury() external view returns (address);
    function protocolTreasuryRatio() external view returns (uint64);
    function vestingRatio() external view returns (uint64);
    function vestingDuration() external view returns (uint64);
    function redemptionFee() external view returns (uint64);
    function queueLengthSecs() external view returns (uint64);
    function earlyExitFee() external view returns (uint64);
}