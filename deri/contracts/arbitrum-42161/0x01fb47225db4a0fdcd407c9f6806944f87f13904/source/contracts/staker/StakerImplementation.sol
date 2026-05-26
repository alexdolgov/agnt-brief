// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;
pragma abicoder v2;

import '../library/RewardMath.sol';
import '../library/NFTPositionInfo.sol';
import '../library/TransferHelperExtended.sol';
import '@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol';
import '@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol';
import '@uniswap/v3-core/contracts/interfaces/IERC20Minimal.sol';
import '@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol';
import "../utils/NameVersion.sol";
import "./StakerStorage.sol";

contract StakerImplementation is StakerStorage, NameVersion {

    IUniswapV3Factory public immutable factory;

    INonfungiblePositionManager public immutable nonfungiblePositionManager;

    IUniswapV3Pool public immutable pool;

    IERC20Minimal public immutable rewardToken;

    event StartIncentive(uint256 startTimestamp, uint256 rewardPerSecond);

	event Claim(address account, uint256 amount);

    event DepositToken(address account, uint256[] tokenIds);

    event WithdrawToken(address account, uint256[] tokenIds);

    constructor(
        IUniswapV3Factory _factory,
        INonfungiblePositionManager _nonfungiblePositionManager,
        IUniswapV3Pool _pool,
        IERC20Minimal _rewardToken
    ) NameVersion("StakerImplementation", "1.0.0") {
        factory = _factory;
        nonfungiblePositionManager = _nonfungiblePositionManager;
        pool = _pool;
        rewardToken = _rewardToken;
    }


    //  ========== ADMIN ==============
    function emergencyWithdraw() _onlyAdmin_ external {
		uint256 balance = rewardToken.balanceOf(address(this));
		rewardToken.transfer(msg.sender, balance);
	}

    function startIncentive(uint256 _rewardPerSecond) _onlyAdmin_ external {
        startIncentive(block.timestamp, _rewardPerSecond);
    }

    function startIncentive(uint256 _startTime, uint256 _rewardPerSecond) _onlyAdmin_ public {
        require(_rewardPerSecond != rewardPerSecond, "staker: invalid rewardPerSecond");
        require(
            block.timestamp <= _startTime,
            'staker:start time must be now or in the future'
        );

        _settleAllRewards();
        rewardPerSecond = _rewardPerSecond;
        startTime = _startTime;

        incentive.totalSecondsClaimedX128 =0;
        incentive.totalRewardClaimed = 0;

        emit StartIncentive(_startTime, _rewardPerSecond);
    }


    //  ========== USER ==============
    function deposit() external {
        address owner = msg.sender;
        uint256 tokenIdNum = nonfungiblePositionManager.balanceOf(owner);
        if (tokenIdNum > 0) {
            uint256[] memory tokenIds = new uint256[](tokenIdNum) ;
            for (uint256 i = 0; i < tokenIdNum; i++) {
                uint256 tokenId = nonfungiblePositionManager.tokenOfOwnerByIndex(owner, i);
                tokenIds[i] = tokenId;
            }
            deposit(tokenIds);
        }
    }


    function deposit(uint256[] memory tokenIds) public {
        uint256 length = tokenIds.length;
        for (uint256 i = 0; i < length; i++) {
            uint256 tokenId = tokenIds[i];
            nonfungiblePositionManager.safeTransferFrom(msg.sender, address(this), tokenId);
            (IUniswapV3Pool _pool, int24 tickLower, int24 tickUpper, uint128 _liquidity) =
                NFTPositionInfo.getPositionInfo(factory, nonfungiblePositionManager, tokenId);
            deposits[tokenId] = Deposit({owner: msg.sender, tickLower: tickLower, tickUpper: tickUpper});
            if (address(_pool) != address(pool) || _liquidity == 0) {
                continue;
            }

            (, uint160 secondsPerLiquidityInsideX128, ) = _pool.snapshotCumulativesInside(tickLower, tickUpper);
            stakes[tokenId].secondsPerLiquidityInsideInitialX128 = secondsPerLiquidityInsideX128;
            if (_liquidity >= type(uint96).max) {
                stakes[tokenId].liquidityNoOverflow = type(uint96).max;
                stakes[tokenId].liquidityIfOverflow = _liquidity;
            } else {
                stakes[tokenId].liquidityNoOverflow = uint96(_liquidity);
            }

            userTokenIds[msg.sender].push(tokenId);
            stakedTokenIds.push(tokenId);
        }
        uint256[] memory depositTokenIds = userTokenIds[msg.sender];
        if (depositTokenIds.length > 0) {
            emit DepositToken(msg.sender, depositTokenIds);
        }
    }

    function withdraw() external _reentryLock_ {
        uint256[] memory tokenIds = userTokenIds[msg.sender];
        _claim(msg.sender, tokenIds);
        uint256 length = tokenIds.length;
        for (uint256 i = 0; i < length; i++) {
            uint256 tokenId = tokenIds[i];
            delete deposits[tokenId];
            _removeTokenId(stakedTokenIds, tokenId);
            nonfungiblePositionManager.safeTransferFrom(address(this), msg.sender, tokenId);
        }
        delete userTokenIds[msg.sender];
        emit WithdrawToken(msg.sender, tokenIds);
    }

    function claim() external _reentryLock_ {
        uint256[] memory tokenIds = userTokenIds[msg.sender];
        _claim(msg.sender, tokenIds);
    }

    function _claim(address owner, uint256[] memory tokenIds) internal {
        uint256 length = tokenIds.length;
        uint256 totalRewardUnclaimed = (block.timestamp - startTime) * rewardPerSecond - incentive.totalRewardClaimed;
        uint160 totalSecondsClaimedX128 = incentive.totalSecondsClaimedX128;

        uint256 claimed = rewards[owner];
        for (uint256 i = 0; i < length; i++) {
            uint256 tokenId = tokenIds[i];
            (uint256 reward, uint160 secondsInsideX128, uint160 secondsPerLiquidityInsideX128) = _calculateReward(tokenId, totalRewardUnclaimed, totalSecondsClaimedX128);
            totalRewardUnclaimed -= reward;
            totalSecondsClaimedX128 += secondsInsideX128;
            claimed += reward;

            // rewrite stakes
            stakes[tokenId].secondsPerLiquidityInsideInitialX128 = secondsPerLiquidityInsideX128;
        }
        incentive.totalSecondsClaimedX128 = totalSecondsClaimedX128;
        incentive.totalRewardClaimed += (block.timestamp - startTime) * rewardPerSecond - totalRewardUnclaimed;
        TransferHelperExtended.safeTransfer(address(rewardToken), msg.sender, claimed);
        emit Claim(owner, claimed);

        rewards[owner] = 0;
    }

    //  ========== HELPERS ==============
    function getRewardInfo(address owner) external view returns (uint256) {
        uint256[] memory tokenIds = userTokenIds[owner];
        return getRewardInfo(owner, tokenIds);
    }

    function getRewardInfo(address owner, uint256[] memory tokenIds)
        public
        view
        returns (uint256 rewardDebt)
    {
        uint256 length = tokenIds.length;
        uint256 totalRewardUnclaimed = (block.timestamp - startTime) * rewardPerSecond - incentive.totalRewardClaimed;
        uint160 totalSecondsClaimedX128 = incentive.totalSecondsClaimedX128;

        for (uint256 i = 0; i < length; i++) {
            uint256 tokenId = tokenIds[i];
            (uint256 reward, uint160 secondsInsideX128, ) = _calculateReward(tokenId, totalRewardUnclaimed, totalSecondsClaimedX128);
            totalRewardUnclaimed -= reward;
            totalSecondsClaimedX128 += secondsInsideX128;
            rewardDebt += reward;
        }
        rewardDebt += rewards[owner];
    }

    function getStakes(uint256 tokenId)
        public
        view
        returns (uint160 secondsPerLiquidityInsideInitialX128, uint128 liquidity)
    {
        Stake storage stake = stakes[tokenId];
        secondsPerLiquidityInsideInitialX128 = stake.secondsPerLiquidityInsideInitialX128;
        liquidity = stake.liquidityNoOverflow;
        if (liquidity == type(uint96).max) {
            liquidity = stake.liquidityIfOverflow;
        }
    }

    function getSecondsPerLiquidityInsideX128(uint256 tokenId) external view returns (uint256 timestamp, uint160 secondsPerLiquidityInsideX128) {
        Deposit memory deposited = deposits[tokenId];
        (, secondsPerLiquidityInsideX128, ) = pool.snapshotCumulativesInside(deposited.tickLower, deposited.tickUpper);
        timestamp = block.timestamp;
    }

    function getRewardInBetween(uint256 tokenId, uint256 endTimestamp, uint160 startSecondsPerLiquidityInsideX128, uint160 endSecondsPerLiquidityInsideX128)
    external view returns (uint256) {
        uint256 totalRewardUnclaimed = (endTimestamp - startTime) * rewardPerSecond - incentive.totalRewardClaimed;
        uint160 totalSecondsClaimedX128 = incentive.totalSecondsClaimedX128;
        (, uint128 liquidity) = getStakes(tokenId);
        (uint256 reward, ) =
            RewardMath.computeRewardAmount(
                totalRewardUnclaimed,
                totalSecondsClaimedX128,
                startTime,
                liquidity,
                startSecondsPerLiquidityInsideX128,
                endSecondsPerLiquidityInsideX128,
                endTimestamp
            );
        return reward;
    }

    function getPoolRewardDebt() external view returns (uint256) {
        uint256 length = stakedTokenIds.length;
        uint256 totalRewardUnclaimed = (block.timestamp - startTime) * rewardPerSecond - incentive.totalRewardClaimed;
        uint160 totalSecondsClaimedX128 = incentive.totalSecondsClaimedX128;
        uint256 rewardDebt;
        if (totalRewardUnclaimed == 0) {
            for (uint256 i = 0; i < length; i++) {
                uint256 tokenId = stakedTokenIds[i];
                rewardDebt += rewards[deposits[tokenId].owner];
            }
        } else {
        for (uint256 i = 0; i < length; i++) {
            uint256 tokenId = stakedTokenIds[i];
            (uint256 reward, uint160 secondsInsideX128, ) = _calculateReward(tokenId, totalRewardUnclaimed, totalSecondsClaimedX128);
            totalRewardUnclaimed -= reward;
            totalSecondsClaimedX128 += secondsInsideX128;

            rewardDebt += rewards[deposits[tokenId].owner] + reward;
            }
        }
        return rewardDebt;
    }

    function getPositionInfo(uint256 tokenId) external view returns (IUniswapV3Pool, int24, int24, uint128) {
        (IUniswapV3Pool _pool, int24 tickLower, int24 tickUpper, uint128 _liquidity) =
            NFTPositionInfo.getPositionInfo(factory, nonfungiblePositionManager, tokenId);
        return (_pool, tickLower, tickUpper, _liquidity);
    }


    function _settleAllRewards() internal {
        uint256 length = stakedTokenIds.length;
        uint256 totalRewardUnclaimed = (block.timestamp - startTime) * rewardPerSecond - incentive.totalRewardClaimed;
        uint160 totalSecondsClaimedX128 = incentive.totalSecondsClaimedX128;

        for (uint256 i = 0; i < length; i++) {
            uint256 tokenId = stakedTokenIds[i];
            (uint256 reward, uint160 secondsInsideX128, uint160 secondsPerLiquidityInsideX128) = _calculateReward(tokenId, totalRewardUnclaimed, totalSecondsClaimedX128);
            totalRewardUnclaimed -= reward;
            totalSecondsClaimedX128 += secondsInsideX128;
            rewards[deposits[tokenId].owner] += reward;

            // rewrite stakes
            stakes[tokenId].secondsPerLiquidityInsideInitialX128 = secondsPerLiquidityInsideX128;
        }
        incentive.totalSecondsClaimedX128 = totalSecondsClaimedX128;
        incentive.totalRewardClaimed += (block.timestamp - startTime) * rewardPerSecond - totalRewardUnclaimed;
    }

    function onERC721Received(
        address,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4) {
        require(
            msg.sender == address(nonfungiblePositionManager),
            'staker: not a univ3 nft'
        );

        return this.onERC721Received.selector;
    }

    function _removeTokenId(uint256[] storage tokenIds, uint256 tokenId) internal {
        uint256 length = tokenIds.length;
        for (uint256 i = 0; i < length; i++) {
            if (tokenIds[i] == tokenId) {
                tokenIds[i] = tokenIds[length-1];
                break;
            }
        }
        tokenIds.pop();
    }

    function _calculateReward(uint256 tokenId, uint256 totalRewardUnclaimed, uint160 totalSecondsClaimedX128)
        internal view returns (uint256 reward, uint160 secondsInsideX128, uint160 secondsPerLiquidityInsideX128) {

        Deposit memory deposited = deposits[tokenId];
        (uint160 secondsPerLiquidityInsideInitialX128, uint128 liquidity) = getStakes(tokenId);

        (, secondsPerLiquidityInsideX128, ) =
            pool.snapshotCumulativesInside(deposited.tickLower, deposited.tickUpper);

        (reward, secondsInsideX128) =
            RewardMath.computeRewardAmount(
                totalRewardUnclaimed,
                totalSecondsClaimedX128,
                startTime,
                liquidity,
                secondsPerLiquidityInsideInitialX128,
                secondsPerLiquidityInsideX128,
                block.timestamp
            );
    }

}
