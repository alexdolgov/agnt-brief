pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../../protocol/contracts/Governance/STreasury.sol";
import { IThenaBribe } from "./thena/IThenaBribe.sol";

/**
 * @title THENA - Token Liquidity Incentives
 */
contract STreasuryThena is STreasury {
    using SafeERC20 for IERC20;

    event TokenBribed(address token, uint amount);

    /**
     * @notice Send the amount to the Bribe pool
     * @param tokenAddress The address of treasury token
     * @param bribeAmount The bribe amount
     * @param bribeAddress The bribe address
     */
    function sendBribeToken(
        address tokenAddress,
        uint256 bribeAmount,
        address bribeAddress
    ) external onlyOwner {

        // Get Treasury Token Balance
        uint256 treasuryBalance = IERC20(tokenAddress).balanceOf(address(this));
        require(treasuryBalance >= bribeAmount, "OUT_OF_FUNDS");

        IERC20(tokenAddress).approve(bribeAddress, bribeAmount);
        IThenaBribe(bribeAddress).notifyRewardAmount(tokenAddress, bribeAmount);

        emit TokenBribed(tokenAddress, bribeAmount);
    }
}
