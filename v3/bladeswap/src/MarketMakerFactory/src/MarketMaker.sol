// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Math} from "openzeppelin/utils/math/Math.sol";
import {Ownable} from "openzeppelin/access/Ownable.sol";
import {SignedMath} from "openzeppelin/utils/math/SignedMath.sol";
import {SafeCast} from "openzeppelin/utils/math/SafeCast.sol";
import {IAlgebraPool} from "algebra-core/interfaces/IAlgebraPool.sol";
import {IERC20Minimal} from "algebra-core/interfaces/IERC20Minimal.sol";
import {LiquidityMath} from "algebra-core/libraries/LiquidityMath.sol";
import {IncentiveKey} from "algebra-farming/base/IncentiveKey.sol";
import {IFarmingCenter} from "algebra-farming/interfaces/IFarmingCenter.sol";
import {INonfungiblePositionManager} from "algebra-periphery/interfaces/INonfungiblePositionManager.sol";
import {TickMath} from "algebra-core/libraries/TickMath.sol";

import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";

import {MarketMaking} from "src/lib/MarketMaking.sol";

import {IMarketMakerFactory} from "src/interfaces/IMarketMakerFactory.sol";

import "forge-std/console.sol";

int256 constant UNIT = 1 << 96;

function positionKey(address owner, int24 bottomTick, int24 topTick) pure returns (bytes32 key) {
    assembly {
        key := or(shl(24, or(shl(24, owner), and(bottomTick, 0xFFFFFF))), and(topTick, 0xFFFFFF))
    }
}

interface IGauge {
    function incentiveKey() external view returns (IncentiveKey memory);
}

contract MarketMaker is Ownable {
    using SafeCast for uint256;
    using SafeCast for int256;

    event Floor(int24 tick);

    IERC20 public immutable money;
    IERC20 public immutable asset;
    INonfungiblePositionManager immutable nft;
    IFarmingCenter immutable farmingCenter;
    IAlgebraPool immutable pool;
    IGauge immutable gauge;

    IERC20Minimal immutable rewardToken;
    IERC20Minimal immutable bonusRewardToken;
    uint256 immutable incentiveKeyNonce;

    MarketMaking.MarketMakingParam public marketMakingParam;
    MarketMaking.PositionState public positions;

    address public creator;
    address public protocol;

    uint256 excludedAsset;
    uint256 excludedMoney;
    uint256[] nfts;

    constructor(
        IFarmingCenter farmingCenter_,
        INonfungiblePositionManager nft_,
        address gauge_,
        address creator_,
        address protocol_,
        MarketMaking.MarketMakingParam memory param
    ) {
        setMarketMakingParam(param);
        creator = creator_;
        protocol = protocol_;
        nft = nft_;
        gauge = IGauge(gauge_);
        farmingCenter = farmingCenter_;
        {
            IncentiveKey memory ik = gauge.incentiveKey();
            rewardToken = ik.rewardToken;
            bonusRewardToken = ik.bonusRewardToken;
            pool = ik.pool;
            incentiveKeyNonce = ik.nonce;
        }
        asset = IERC20(pool.token0());
        money = IERC20(pool.token1());
    }

    function setProtocol(address p) external {
        require(msg.sender == protocol);
        protocol = p;
    }

    function approveTokens() external {
        asset.approve(address(nft), type(uint256).max);
        money.approve(address(nft), type(uint256).max);
    }

    function incentiveKey() internal view returns (IncentiveKey memory) {
        return IncentiveKey({
            rewardToken: rewardToken,
            bonusRewardToken: bonusRewardToken,
            pool: pool,
            nonce: incentiveKeyNonce
        });
    }

    function setMarketMakingParam(MarketMaking.MarketMakingParam memory param) public onlyOwner {
        marketMakingParam = param;
        positions = MarketMaking.initialPosition();
    }

    function withdraw(address token, address to, uint256 amount) external onlyOwner {
        collectFees();
        removePositions();
        positions = MarketMaking.initialPosition();
        IERC20(token).transfer(to, amount);
        rebalance();
    }

    /*
    function removePosition(int24 bottomTick, int24 topTick) internal returns (uint128 fees0, uint128 fees1) {
        if (bottomTick == topTick) return (0, 0);
        uint256 liquidity;
        (liquidity,,,,) = pool.positions(positionKey(address(this), bottomTick, topTick));
        pool.burn(bottomTick, topTick, liquidity.toUint128(), "");
        (,,, fees0, fees1) = pool.positions(positionKey(address(this), bottomTick, topTick));
        pool.collect(address(this), bottomTick, topTick, fees0, fees1);
    }
    */
    function createPosition(MarketMaking.MarketState memory ms, int24 bottomTick, int24 topTick, uint128 liquidity)
        internal
    {
        (uint256 a0, uint256 a1,) = LiquidityMath.getAmountsForLiquidity(
            bottomTick, topTick, int128(liquidity), TickMath.getTickAtSqrtRatio(ms.price), ms.price
        );
        (uint256 tokenId,,,) = nft.mint(
            INonfungiblePositionManager.MintParams({
                token0: address(asset),
                token1: address(money),
                tickLower: bottomTick,
                tickUpper: topTick,
                amount0Desired: a0,
                amount1Desired: a1,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp
            })
        );
        nft.approveForFarming(tokenId, true, address(farmingCenter));
        farmingCenter.enterFarming(incentiveKey(), tokenId);
        nfts.push(tokenId);
    }

    function removePosition(uint256 tokenId) internal {
        (,,,,,, uint128 liquidity,,,,) = nft.positions(tokenId);
        farmingCenter.collectRewards(incentiveKey(), tokenId);
        farmingCenter.exitFarming(incentiveKey(), tokenId);
        nft.decreaseLiquidity(
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: liquidity,
                amount0Min: 0,
                amount1Min: 0,
                deadline: block.timestamp
            })
        );
        nft.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
        nft.burn(tokenId);
    }

    function collectRewards() external returns (uint256, uint256, uint256) {
        require(msg.sender == creator || msg.sender == protocol);
        collectFees();
        uint256[] memory nfts_ = nfts;
        for (uint256 i = 0; i < nfts_.length; i++) {
            farmingCenter.collectRewards(incentiveKey(), nfts_[i]);
        }
        farmingCenter.claimReward(
            rewardToken, address(this), farmingCenter.eternalFarming().rewards(address(this), rewardToken)
        );
        uint256 cr = rewardToken.balanceOf(address(this));
        uint256 ca = excludedAsset;
        uint256 cm = (excludedMoney * 8) / 10;
        rewardToken.transfer(creator, cr);
        asset.transfer(creator, ca);
        money.transfer(creator, cm);
        money.transfer(protocol, excludedMoney - cm);
        excludedAsset = 0;
        excludedMoney = 0;
        return (ca, cm, cr);
    }

    function removePositions() internal {
        uint256[] memory nfts_ = nfts;
        for (uint256 i = 0; i < nfts_.length; i++) {
            removePosition(nfts_[i]);
        }
        nfts = new uint256[](0);
    }

    /*
    function getTokenBalance(
        int24 tickBegin,
        int24 tickEnd,
        uint160 price,
        int24 currentTick
    ) internal view returns (uint256 assetBalance, uint256 moneyBalance) {
        if (tickBegin == tickEnd) return (0, 0);
        (uint256 liquidity, , , uint256 fee0, uint256 fee1) = pool.positions(
            positionKey(address(this), tickBegin, tickEnd)
        );
        assetBalance += fee0;
        moneyBalance += fee1;
        (uint256 r0, uint256 r1, ) = LiquidityMath.getAmountsForLiquidity(
            tickBegin,
            tickEnd,
            -(int256(liquidity).toInt128()),
            currentTick,
            price
        );
        assetBalance += r0;
        moneyBalance += r1;
    }
    */

    function collectFees() internal {
        uint256 assetBalanceBefore = asset.balanceOf(address(this));
        uint256[] memory nfts_ = nfts;
        for (uint256 i = 0; i < nfts_.length; i++) {
            nft.collect(
                INonfungiblePositionManager.CollectParams({
                    tokenId: nfts_[i],
                    recipient: address(this),
                    amount0Max: type(uint128).max,
                    amount1Max: type(uint128).max
                })
            );
        }
        excludedAsset += asset.balanceOf(address(this)) - assetBalanceBefore;
    }

    function marketState() public view returns (MarketMaking.MarketState memory) {
        (uint160 price,,,,, bool unlocked) = pool.globalState();
        require(unlocked, "lock");
        int24 currentTick = TickMath.getTickAtSqrtRatio(price);

        uint256 assetBalance;
        uint256 moneyBalance;

        uint256[] memory nfts_ = nfts;
        for (uint256 i = 0; i < nfts_.length; i++) {
            (,,,, int24 tickLower, int24 tickUpper, uint128 liquidity,,,,) = nft.positions(nfts_[i]);
            (uint256 r0, uint256 r1,) = LiquidityMath.getAmountsForLiquidity(
                tickLower, tickUpper, -(int256(uint256(liquidity)).toInt128()), currentTick, price
            );
            assetBalance += r0;
            moneyBalance += r1;
        }
        /*
        (r0, r1) = getTokenBalance(
            positions.floorBeginTick,
            positions.anchorBeginTick,
            price,
            currentTick
        );
        assetBalance += r0;
        moneyBalance += r1;

        (r0, r1) = getTokenBalance(
            positions.anchorBeginTick,
            positions.discoveryBeginTick,
            price,
            currentTick
        );
        assetBalance += r0;
        moneyBalance += r1;

        (r0, r1) = getTokenBalance(
            positions.discoveryBeginTick,
            positions.discoveryEndTick,
            price,
            currentTick
        );
        assetBalance += r0;
        moneyBalance += r1;
        */

        assetBalance += asset.balanceOf(address(this));
        moneyBalance += money.balanceOf(address(this));

        assetBalance -= excludedAsset;
        moneyBalance -= excludedMoney;

        return MarketMaking.MarketState({
            marketMakerAsset: assetBalance,
            marketMakerMoney: moneyBalance,
            circulatingAsset: asset.totalSupply() - assetBalance,
            price: price,
            tickSpacing: pool.tickSpacing()
        });
    }

    function createPositions(MarketMaking.MarketState memory ms, MarketMaking.PositionState memory ps) internal {
        createPosition(ms, ps.floorBeginTick, ps.anchorBeginTick, ps.floorLiquidity);
        if (ps.anchorBeginTick != ps.discoveryBeginTick) {
            createPosition(ms, ps.anchorBeginTick, ps.discoveryBeginTick, ps.anchorLiquidity);
        }
        createPosition(ms, ps.discoveryBeginTick, ps.discoveryEndTick, ps.discoveryLiquidity);
    }

    function floorTick() external view returns (int24) {
        return positions.floorBeginTick;
    }

    function bumpProgress() public returns (uint256) {
        collectFees();
        MarketMaking.MarketState memory ms = marketState();
        uint256 rebalanceProfit = MarketMaking.calcRebalanceProfit(ms, positions) / 10;
        ms.marketMakerMoney -= rebalanceProfit;
        return MarketMaking.bumpProgress(marketMakingParam, ms, positions);
    }

    function rebalance() public returns (bool) {
        console.log("============ rebalancing start =============");

        collectFees();
        MarketMaking.PositionState memory oldPositions = positions;
        MarketMaking.print("oldPositions", oldPositions);
        MarketMaking.MarketState memory ms = marketState();

        MarketMaking.print("ms", marketState());
        uint256 rebalanceProfit = MarketMaking.calcRebalanceProfit(ms, oldPositions) / 10;
        ms.marketMakerMoney -= rebalanceProfit;
        console.log("rebalaceProfit:", rebalanceProfit);

        MarketMaking.PositionState memory newPositions = MarketMaking.rebalance(marketMakingParam, ms, oldPositions);

        MarketMaking.print("newPositions", newPositions);

        //console.log("bump Progress:", bumpProgress());
        console.log("============ rebalancing end =============");
        if (
            (newPositions.floorBeginTick != oldPositions.floorBeginTick)
                || (newPositions.anchorBeginTick != oldPositions.anchorBeginTick)
                || (newPositions.discoveryBeginTick != oldPositions.discoveryBeginTick)
                || (newPositions.discoveryEndTick != oldPositions.discoveryEndTick)
        ) {
            if (newPositions.floorBeginTick != oldPositions.floorBeginTick) {
                emit Floor(newPositions.floorBeginTick);
            }
            positions = newPositions;
            removePositions();
            excludedMoney += rebalanceProfit;
            //factory.handleRebalanceProfit(money, rebalanceProfit);
            createPositions(ms, newPositions);
            return true;
        }
        return false;
    }

    /*
    function algebraMintCallback(
        uint256 a0,
        uint256 a1,
        bytes calldata
    ) external {
        require(msg.sender == address(pool));
        asset.transfer(address(pool), a0);
        money.transfer(address(pool), a1);
    }
    */
}
