// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "openzeppelin-contracts/token/ERC20/IERC20.sol";

interface ILsdETH is IERC20 {
    function whiteListMint(uint256 _amount, address _account) external;

    function whiteListBurn(uint256 _amount, address _account) external;

    event PoolChanged(address _oldPool, address _pool);
}
