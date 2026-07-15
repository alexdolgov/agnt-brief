// SPDX-License-Identifier: MIT

pragma solidity >=0.5.16;

interface IMultiCollateralOnOffRamp {
    function collateralSupported(address collateral) external returns (bool);

    function onramp(address collateral, uint collateralAmount) external returns (uint);

    function onrampWithEth(uint amount) external payable returns (uint);

    function getMinimumReceived(address collateral, uint amount) external view returns (uint);

    function getMinimumNeeded(address collateral, uint amount) external view returns (uint);

    function WETH9() external view returns (address);

    function offrampIntoEth(uint amount) external returns (uint);

    function offramp(address collateral, uint amount) external returns (uint);

    function offrampFromIntoEth(address collateralFrom, uint amount) external returns (uint);

    function offrampFrom(
        address collateralFrom,
        address collateralTo,
        uint amount
    ) external returns (uint);

    function priceFeed() external view returns (address);
}
