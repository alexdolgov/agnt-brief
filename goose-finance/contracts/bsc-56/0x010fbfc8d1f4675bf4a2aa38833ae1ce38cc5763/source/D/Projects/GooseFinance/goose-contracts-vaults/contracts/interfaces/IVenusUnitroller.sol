// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IVenusUnitroller {
    function claimVenus(address holder) external;

    function enterMarkets(address[] memory _vtokens) external;

    function exitMarket(address _vtoken) external;

    function getAssetsIn(address account) external view returns (address[] memory);

    function getAccountLiquidity(address account) external view returns (uint256, uint256, uint256);

    function venusSpeeds(address _vtoken) external view returns (uint256);
}