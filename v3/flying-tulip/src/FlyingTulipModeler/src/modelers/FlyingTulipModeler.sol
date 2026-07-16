// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

interface IFtMintAndRedeem {
    function redeem(address collateralToken, uint256 ftUSDAmount, uint256 txDeadline, uint256 minCollateralOut)
        external
        returns (uint256 collateralAmount, uint256 queueId);
}

contract FlyingTulipModeler {
    function ftUsdRedeem(IFtMintAndRedeem mar, address collateralToken, uint256 ftUsdAmount)
        external
        payable
        returns (uint256 buyAmount)
    {
        (buyAmount,) = mar.redeem(collateralToken, ftUsdAmount, 0, 0);
    }
}
