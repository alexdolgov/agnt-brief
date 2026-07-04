// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

interface IPrizePool {
    function prizeToken() external view returns (IERC20);
    function contributePrizeTokens(address _prizeVault, uint256 _amount) external returns (uint256);
    function getContributedBetween(address _vault, uint24 _startDrawIdInclusive, uint24 _endDrawIdInclusive) external view returns (uint256);
    function getOpenDrawId() external view returns (uint24);
}
import { IERC20 } from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/utils/SafeERC20.sol";

contract EzDepositor {
    using SafeERC20 for IERC20;

    function contribute(IPrizePool prizePool, address vault, uint256 amount) external {
        IERC20 prizeToken = prizePool.prizeToken();
        prizeToken.safeTransferFrom(msg.sender, address(prizePool), amount);
        prizePool.contributePrizeTokens(vault, amount);
    }
}