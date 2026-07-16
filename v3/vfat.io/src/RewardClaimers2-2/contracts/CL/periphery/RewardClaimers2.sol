// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.26;
import {GaugeV3} from 'contracts/CL/gauge/GaugeV3.sol';
import {IVoteModule} from 'contracts/VoteModule.sol';
import {IFeeDistributor} from 'contracts/interfaces/IFeeDistributor.sol';
import {IPair} from 'contracts/interfaces/IPair.sol';
import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {IRouter} from 'contracts/interfaces/IRouter.sol';

contract RewardClaimers2 {
    /// @notice legacy router address
    address public legacyRouter;
    /// @notice access hub contract address
    address public accessHub;

    constructor(
        address _legacyRouter,
        address _accessHub
    ) {
        legacyRouter = _legacyRouter;
        accessHub = _accessHub;
    }

    /// @notice try to unwrap LP token to token0/1
    /// @param token LP token address
    /// @return isLP bool if its a LP token
    /// @return tokenA token0 address
    /// @return tokenB token1 address
    function _tryUnwrapLP(address token) internal returns (bool isLP, address tokenA, address tokenB) {
        try IPair(token).token0() returns (address token0) {
            address token1 = IPair(token).token1();
            uint256 lpBalance = IERC20(token).balanceOf(address(this));
            
            if (lpBalance > 0) {
                // approve legacy router to spend LP tokens
                IERC20(token).approve(legacyRouter, lpBalance);
                // remove liquidity
                IRouter(legacyRouter).removeLiquidity(
                    token0,
                    token1,
                    IPair(token).stable(),
                    lpBalance,
                    0,  // amountAMin
                    0,  // amountBMin
                    address(this),
                    block.timestamp
                );
                
                return (true, token0, token1);
            }
        } catch {
            return (false, address(0), address(0));
        }
    }

    /// @notice claim legacy incentives and unwrap LP token to token0/1
    /// @param _feeDistributors fee distributor addresses
    /// @param _rewardTokens reward token addresses
    function claimLegacyIncentives(
        address[] memory _feeDistributors, 
        address[][] memory _rewardTokens
    ) public {
        for (uint256 i = 0; i < _feeDistributors.length; i++) {
            // claim all tokens for this distributor
            IFeeDistributor(_feeDistributors[i]).getReward(msg.sender, _rewardTokens[i]);
            // process each reward token
            for (uint256 j = 0; j < _rewardTokens[i].length; j++) {
                address rewardToken = _rewardTokens[i][j];
                // try to unwrap if it's a LP token
                (bool isLP, address tokenA, address tokenB) = _tryUnwrapLP(rewardToken);
                if (isLP) {
                    // transfer unwrapped tokens to caller
                    uint256 balanceA = IERC20(tokenA).balanceOf(address(this));
                    uint256 balanceB = IERC20(tokenB).balanceOf(address(this));
                    
                    if (balanceA > 0) IERC20(tokenA).transfer(msg.sender, balanceA);
                    if (balanceB > 0) IERC20(tokenB).transfer(msg.sender, balanceB);
                } else {
                    // transfer regular token to caller
                    uint256 balance = IERC20(rewardToken).balanceOf(address(this));
                    if (balance > 0) IERC20(rewardToken).transfer(msg.sender, balance);
                }
            }
        }
    }

    /// @notice Rescue any stuck tokens from the contract
    /// @param _token Token address to rescue
    /// @param _amount Amount of tokens to rescue
    /// @dev Only callable by AccessHub
    function rescue(address _token, uint256 _amount) external {
        require(msg.sender == accessHub, "NOT_ACCESSHUB");
        // transfer the tokens to the caller (AccessHub)
        IERC20(_token).transfer(msg.sender, _amount);
    }
}
