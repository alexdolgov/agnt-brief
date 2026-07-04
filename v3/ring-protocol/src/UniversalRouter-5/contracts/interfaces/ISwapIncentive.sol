// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.15;

interface ISwapIncentive {
    event SwapInfoUpdated(address indexed sender, address token0, address token1, uint256 price0, uint256 price1);
    event Incentive(address indexed user, address token0, address token1, uint256 rewards, uint256 userRewards);

    function allSwapInfosLength() external view returns (uint256);

    function rewardSetter() external view returns (address);
    function setRewardSetter(address) external;

    function setSwapInfo(address token0, address token1, uint256 price0, uint256 price1) external;
    function incentivize(address inputToken, uint256 inputAmount, address outputToken, uint256 outputAmount) external;

    function withdrawERC20(address token, address to, uint256 amount) external;
    function withdrawETH(address payable to, uint256 amount) external;

    function getPermittedAccount(address permittedAccount) external view returns (bool enabled);
    function setPermittedAccount(address permittedAccount, bool enabled) external;
}
