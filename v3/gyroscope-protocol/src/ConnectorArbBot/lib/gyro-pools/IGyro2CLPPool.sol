// SPDX-License-Identifier: LicenseRef-Gyro-1.0
// for information on licensing please see the README in the GitHub repository <https://github.com/gyrostable/concentrated-lps>.
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

// Interface to simplify interaction with the pool. Not complete and not clean.

// Currently ONLY for usage in other projects to make life just a bit easier.
 
interface IGyro2CLPPool {
    function calculateCurrentValues(
        uint256 balanceTokenIn,
        uint256 balanceTokenOut,
        bool tokenInIsToken0
    )
        external
        view
        returns (
            uint256 currentInvariant,
            uint256 virtualParamIn,
            uint256 virtualParamOut
        );

    function getActualSupply() external view returns (uint256);

    function getInvariant() external view returns (uint256);

    function getInvariantDivActualSupply() external view returns (uint256);

    function getLastInvariant() external view returns (uint256);

    function getPrice() external view returns (uint256 spotPrice);

    function getSqrtParameters() external view returns (uint256[2] memory);

    function getSwapFeePercentage() external view returns (uint256);

    function getTokenRates()
        external
        view
        returns (uint256 rate0, uint256 rate1);

    function getVault() external view returns (address);
    function getPoolId() external view returns (bytes32);

    function getVirtualParameters()
        external
        view
        returns (uint256[] memory virtualParams);

    function gyroConfig() external view returns (address);

    function rateProvider0() external view returns (address);

    function rateProvider1() external view returns (address);
}

