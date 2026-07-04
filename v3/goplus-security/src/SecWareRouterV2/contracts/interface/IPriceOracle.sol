// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./IWETH.sol";
interface IPriceOracle {

    function wbnb() external view returns(address);

    function bnbToERC20(
        address _erc20,
        uint256 gasUsed
    ) external returns (uint256);
    
    function isWhitelisted(address erc20) external view returns (bool);
}