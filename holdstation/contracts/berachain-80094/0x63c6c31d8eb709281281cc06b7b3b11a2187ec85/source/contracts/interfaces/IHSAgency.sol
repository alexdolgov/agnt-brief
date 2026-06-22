// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IHSAgency {
    enum Level {
        LEVEL0,
        LEVEL1,
        LEVEL2,
        LEVEL3,
        EXTERNAL
    }
    struct DirectReferrer {
        address referrer;
        Level level;
    }

    function rootReferrer(address) external view returns (address);

    function rootStatus(address) external view returns (bool);

    function getDirectReferrer(address) external view returns (DirectReferrer memory);

    function getDistributionP(address) external view returns (uint256 feeP1, uint256 feeP2);

    function calulateFee(uint256 _vaultOpenFeeP, address _user) external view returns (uint256);

    function distributeReward(uint256 _fullFee, address _user) external returns (uint256);

    function externalRoot() external view returns (address);
}
