// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

import "../../interfaces/IStrategy.sol";

interface IPancakeLPStrategy is IStrategy {
    function router() external view returns(address);
    function pancakeChef() external view returns(address);
    function pid() external view returns(uint256);
    function pairAddress() external view returns(address);
    function token0Address() external view returns(address);
    function token1Address() external view returns(address);
    function earnedAddress() external view returns(address);

    function earnedToToken0Path(uint index) external view returns (address);
    function earnedToToken1Path(uint index) external view returns (address);
    function token0ToEarnedPath(uint index) external view returns (address);
    function token1ToEarnedPath(uint index) external view returns (address);

    function busdToToken0Path(uint index) external view returns (address);
    function busdToToken1Path(uint index) external view returns (address);
    function token0ToBusdPath(uint index) external view returns (address);
    function token1ToBusdPath(uint index) external view returns (address);
}
