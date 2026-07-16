// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IArbswapToken is IERC20 {
    function mintByLiquidityMining(address _to, uint256 _amount) external;

    function mintByStaking(address _to, uint256 _amount) external;

    function mintByMiner(address _to, uint256 _amount) external;
}
