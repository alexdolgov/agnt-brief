// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.26;
import {GaugeV3} from 'contracts/CL/gauge/GaugeV3.sol';
import {IGaugeV3} from 'contracts/cl/gauge/interfaces/IGaugeV3.sol';
import {IVoteModule} from 'contracts/VoteModule.sol';
import {IFeeDistributor} from 'contracts/interfaces/IFeeDistributor.sol';
import {IPair} from 'contracts/interfaces/IPair.sol';
import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {IRouter} from 'contracts/interfaces/IRouter.sol';
import {IRamsesV3Factory} from 'contracts/cl/core/interfaces/IRamsesV3Factory.sol';
import {INonfungiblePositionManager} from 'contracts/cl/periphery/interfaces/INonfungiblePositionManager.sol';
import {IVoter} from 'contracts/interfaces/IVoter.sol';
import {IXShadow} from 'contracts/interfaces/IXShadow.sol';

contract RewardClaimers2 {
    /// @notice legacy router address
    address public legacyRouter;
    /// @notice access hub contract address
    address public accessHub;
    /// @notice SHADOW token
    IERC20 public immutable shadow;
    /// @notice v3 factory
    IRamsesV3Factory public immutable ramsesV3Factory;
    /// @notice nfp contract
    INonfungiblePositionManager public immutable nonfungiblePositionManager;
    /// @notice voter contract
    IVoter public immutable voter;
    /// @notice xshadow contract
    IXShadow public immutable xShadow;

    constructor(
        address _legacyRouter,
        address _accessHub,
        address _ramsesV3Factory,
        address _nonfungiblePositionManager,
        address _voter,
        address _xshadow,
        address _shadow
    ) {
        legacyRouter = _legacyRouter;
        accessHub = _accessHub;
        ramsesV3Factory = IRamsesV3Factory(_ramsesV3Factory);
        nonfungiblePositionManager = INonfungiblePositionManager(_nonfungiblePositionManager);
        voter = IVoter(_voter);
        xShadow = IXShadow(_xshadow);
        shadow = IERC20(_shadow);
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

    /// @notice a function that allows instant claiming on behalf of a user's CL position
    function claimFromV3WithExit(uint256 _id, address _recipient) external {
        require(
            msg.sender == nonfungiblePositionManager.ownerOf(_id),
            "!owner"
        );
        /// @dev fetch the pool parameters from the NFP
        (
            address token0,
            address token1,
            int24 tickSpacing,
            ,
            ,
            ,
            ,
            ,
            ,

        ) = nonfungiblePositionManager.positions(_id);
        /// @dev fetch pool and gauge
        IGaugeV3 gauge = IGaugeV3(
            voter.gaugeForClPool(token0, token1, tickSpacing)
        );
        /// @dev create a temporary rewards array
        address[] memory r = new address[](1);
        /// @dev set the first element to the xShadow address
        r[0] = address(xShadow);
        /// @dev fetch pre-getReward balance
        uint256 pre = xShadow.balanceOf(address(this));
        /// @dev get xShadow rewards
        gauge.getReward(_id, r);
        /// @dev get post rewards claim balance
        uint256 post = xShadow.balanceOf(address(this));
        /// @dev calculate the difference
        uint256 diff = post - pre;
        /// @dev if there is a non-zero amount of shadow, send to the caller
        if (diff > 0) {
            /// @dev exit and transfer underlying to the caller
            shadow.transfer(_recipient, xShadow.exit(diff));
        }
    }

    /// @notice Rescue NFT from the contract
    /// @param _id NFT token ID to rescue
    /// @param _to Address to send the NFT to
    function rescueNFT(uint256 _id, address _to) external {
        require(msg.sender == accessHub, "NOT_ACCESSHUB");
        nonfungiblePositionManager.transferFrom(address(this), _to, _id);
    }

    /// @notice Rescue any stuck tokens from the contract
    /// @param _token Token address to rescue
    /// @param _amount Amount of tokens to rescue
    /// @dev Only callable by AccessHub
    function rescueToken(address _token, uint256 _amount) external {
        require(msg.sender == accessHub, "NOT_ACCESSHUB");
        // transfer the tokens to the caller (AccessHub)
        IERC20(_token).transfer(msg.sender, _amount);
    }
}
