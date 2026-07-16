// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;
pragma abicoder v2;

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { IERC721Receiver } from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

import { UV3Math } from "./lib/UV3Math.sol";
import { ManualReentrancyGuard } from "./base/ManualReentrancyGuard.sol";

import { ICLPool } from "@velodrome-finance/concentrated-liquidity/contracts/core/interfaces/ICLPool.sol";
import { ICLSwapCallback } from "@velodrome-finance/concentrated-liquidity/contracts/core/interfaces/callback/ICLSwapCallback.sol";

import {
    INonfungiblePositionManager
} from "@velodrome-finance/concentrated-liquidity/contracts/periphery/interfaces/INonfungiblePositionManager.sol";

import { IICHIVault } from "../interfaces/IICHIVault.sol";
import { IICHIVaultFactory } from "../interfaces/IICHIVaultFactory.sol";

// Error Codes
// IV1 - IV.constructor: zero address
// IV2 - IV.constructor: must be single sided
// IV3 - Ownable: caller is not the owner
// IV4 - IV.setTwapPeriod: missing period
// IV5 - IV.deposit: try later
// IV6 - IV.deposit: try later
// IV7 - IV.deposit: token0 not allowed
// IV8 - IV.deposit: token1 not allowed
// IV9 - IV.deposit: deposits must be > 0
// IV10 - IV.deposit: deposits too large
// IV11 - IV.deposit: to
// IV12 - IV.withdraw: tokens owed
// IV13 - IV.withdraw: shares
// IV14 - IV.withdraw: to
// IV15 - IV.withdraw: min shares
// IV16 - IV.rebalance: base position invalid
// IV17 - IV.rebalance: limit position invalid
// IV18 - IV.rebalance: identical positions
// IV19 - IV.currentTick: the pool is locked
// IV20 - IV.setBaseFee: fee too high
// IV21 - IV.setBaseFee: total fees exceed 100%

/**
 @notice A Uniswap V2-like interface with fungible liquidity to Uniswap V3
 which allows for either one-sided or two-sided liquidity provision.
 ICHIVaults should be deployed by the ICHIVaultFactory.
 ICHIVaults should not be used with tokens that charge transaction fees.
 */
contract ICHIVault is IICHIVault, ICLSwapCallback, ERC20, ManualReentrancyGuard, Ownable, IERC721Receiver {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    address public immutable override ichiVaultFactory;
    address public immutable override pool;
    address public immutable override token0;
    address public immutable override token1;
    bool public immutable override allowToken0;
    bool public immutable override allowToken1;
    int24 public immutable override tickSpacing;

    address public override farmingContract;
    address public override ammFeeRecipient;
    address public override affiliate;

    address public override lastActiveGauge;

    // Position tracking
    uint256 public override basePositionId;
    uint256 public override limitPositionId;

    uint256 public override deposit0Max;
    uint256 public override deposit1Max;
    uint256 public override hysteresis;
    
    uint256 public overrideBaseFee; // type(uint256).max means no override, others are active overrides

    uint256 public constant PRECISION = 10 ** 18;
    
    uint256 constant MIN_SHARES = 1000;

    uint32 public override twapPeriod;
    uint32 public override auxTwapPeriod;

    /**
     @notice Creates an ICHIVault instance based on the pool. The allowToken parameters
            control whether the ICHIVault permits one-sided or two-sided liquidity provision.
    @param _pool Uniswap V3 pool for which liquidity is managed.
    @param _allowToken0 Flag indicating if token0 is accepted during deposit.
    @param _allowToken1 Flag indicating if token1 is accepted during deposit.
    @param __owner Owner of the ICHIVault.
    */
    constructor(
        address _pool,
        bool _allowToken0,
        bool _allowToken1,
        address __owner,
        uint32 _twapPeriod
    ) ERC20("ICHI Vault Liquidity", UV3Math.computeIVsymbol(_pool, _allowToken0))  {
        require(_pool != address(0), "IV1");
        // Enforces that only single-sided deposit vaults can be created via the factory
        require((_allowToken0 && !_allowToken1) ||
                (_allowToken1 && !_allowToken0), "IV2");

        ichiVaultFactory = msg.sender;
        pool = _pool;
        address _token0 = ICLPool(_pool).token0();
        address _token1 = ICLPool(_pool).token1();
        token0 = _token0;
        token1 = _token1;
        allowToken0 = _allowToken0;
        allowToken1 = _allowToken1;
        twapPeriod = _twapPeriod;
        auxTwapPeriod = _twapPeriod / 4; // default value is a quarter of the TWAP period
        tickSpacing = ICLPool(_pool).tickSpacing();

        transferOwnership(__owner);

        hysteresis = 5_000_000_000_000_000;
        deposit0Max = type(uint256).max;
        deposit1Max = type(uint256).max;

        overrideBaseFee = type(uint256).max; // Initialize to "no override"

        // Approve NFT manager to spend tokens
        IERC20(_token0).approve(IICHIVaultFactory(msg.sender).nftManager(), type(uint256).max);
        IERC20(_token1).approve(IICHIVaultFactory(msg.sender).nftManager(), type(uint256).max);

        emit DeployICHIVault(msg.sender, _pool, _allowToken0, _allowToken1, __owner, _twapPeriod);
    }

    function _onlyOwner() private view {
        require(owner() == _msgSender(), "IV3");
    }

    function baseLower() external view override returns (int24) {
        if (basePositionId == 0) return 0;
        (,,,,,int24 tickLower,,,,,,) = _nftManager().positions(basePositionId);
        return tickLower;
    }

    /// @notice gets baseUpper tick from the base position
    /// @return int24 baseUpper tick
    function baseUpper() external view override returns (int24) {
        if (basePositionId == 0) return 0;
        (,,,,,,int24 tickUpper,,,,,) = _nftManager().positions(basePositionId);
        return tickUpper;
    }

    /// @notice gets limitLower tick from the limit position
    /// @return int24 limitLower tick
    function limitLower() external view override returns (int24) {
        if (limitPositionId == 0) return 0;
        (,,,,,int24 tickLower,,,,,,) = _nftManager().positions(limitPositionId);
        return tickLower;
    }

    /// @notice gets limitUpper tick from the limit position
    /// @return int24 limitUpper tick
    function limitUpper() external view override returns (int24) {
        if (limitPositionId == 0) return 0;
        (,,,,,,int24 tickUpper,,,,,) = _nftManager().positions(limitPositionId);
        return tickUpper;
    }

    /// @notice resets allowances for the NFT manager
    function resetAllowances() external override {
        _onlyOwner();
        IERC20(token0).approve(address(_nftManager()), type(uint256).max);
        IERC20(token1).approve(address(_nftManager()), type(uint256).max);
    }

    /// @notice sets TWAP period for hysteresis checks
    /// @dev onlyOwner
    /// @param newTwapPeriod new TWAP period
    function setTwapPeriod(uint32 newTwapPeriod) external override {
        _onlyOwner();
        require(newTwapPeriod > 0, "IV4");
        twapPeriod = newTwapPeriod;
        emit SetTwapPeriod(msg.sender, newTwapPeriod);
    }

    /// @notice sets auxiliary TWAP period for hysteresis checks
    /// @dev onlyOwner
    /// @dev aux TWAP could be set to 0 to avoid an additional check
    /// @param newAuxTwapPeriod new auxiliary TWAP period
    function setAuxTwapPeriod(uint32 newAuxTwapPeriod) external override {
        _onlyOwner();
        auxTwapPeriod = newAuxTwapPeriod;
        emit SetAuxTwapPeriod(msg.sender, newAuxTwapPeriod);
    }

    /// @notice collects fees and tokens from the positions and burns the NFTs
    /// @param positionId NFT position ID
    function _dismantlePosition(uint256 positionId) internal {
        if (positionId != 0) {
            uint128 positionLiquidity = _getPositionLiquidity(positionId);
            if (positionLiquidity > 0) {
                _nftManager().decreaseLiquidity(
                    INonfungiblePositionManager.DecreaseLiquidityParams({
                        tokenId: positionId,
                        liquidity: positionLiquidity,
                        amount0Min: 0,
                        amount1Min: 0,
                        deadline: block.timestamp
                    })
                );
            }

            _nftManager().collect(
                INonfungiblePositionManager.CollectParams({
                    tokenId: positionId,
                    recipient: address(this),
                    amount0Max: type(uint128).max,
                    amount1Max: type(uint128).max
                })
            );
            _nftManager().burn(positionId);
            // not setting positionId to 0, as it is done in the rebalance->mint functions
        }
    }

    /// @notice gets NFT manager
    /// @return INonfungiblePositionManager NFT manager
    function _nftManager() internal view returns (INonfungiblePositionManager) {
        return INonfungiblePositionManager(IICHIVaultFactory(ichiVaultFactory).nftManager());
    }

    /// @notice collects fees from the position
    /// @param positionId NFT position ID
    function _collectFromPosition(uint256 positionId) internal returns (uint256 fees0, uint256 fees1) {
        if (positionId == 0) {
            return (0, 0);
        }
        (uint256 _fees0, uint256 _fees1) = _nftManager().collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: positionId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
        fees0 = _fees0;
        fees1 = _fees1;
    }

    /// @notice collects fees from both positions and distributes them
    /// @param withEvent flag to emit CollectFees event (false in rebalances, true otherwise)
    /// @return fees0 collected fees in token0
    /// @return fees1 collected fees in token1
    function _cleanPositions(bool withEvent) internal returns (uint256 fees0, uint256 fees1) {
        if (basePositionId != 0) {
            (uint256 feesBase0, uint256 feesBase1) = _collectFromPosition(basePositionId);
            fees0 = fees0.add(feesBase0);
            fees1 = fees1.add(feesBase1);
        }
        if (limitPositionId != 0) {
            (uint256 feesLimit0, uint256 feesLimit1) = _collectFromPosition(limitPositionId);
            fees0 = fees0.add(feesLimit0);
            fees1 = fees1.add(feesLimit1);
        }
        if (fees0 > 0 || fees1 > 0) {
            _distributeFees(fees0, fees1);
            if (withEvent) {
                emit CollectFees(msg.sender, fees0, fees1);
            }
        }
    }

    /**
    @notice Internal function to mint an NFT position
    @param tickLower Lower tick of the position
    @param tickUpper Upper tick of the position
    @param amount0Desired Desired amount of token0
    @param amount1Desired Desired amount of token1
    @return positionId ID of the minted NFT position
    */
    function _mintPosition(
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal returns (uint256 positionId) {
        // Don't try to mint if we don't have any tokens
        if (amount0Desired == 0 && amount1Desired == 0) {
            return 0;
        }

        // Get current tick to determine if position can be minted
        int24 latestTick = currentTick();

        // If current tick is within or on the boundaries of our range, we need both tokens
        if (latestTick >= tickLower && latestTick < tickUpper) {
            if (amount0Desired == 0 || amount1Desired == 0) {
                return 0;
            }
        }
        // If entirely above current tick (not including boundary), we only need token0
        else if (latestTick < tickLower) {
            if (amount0Desired == 0) {
                return 0;
            }
        }
        // If entirely below current tick (including boundary), we only need token1
        else if (latestTick >= tickUpper) {
            if (amount1Desired == 0) {
                return 0;
            }
        }

        (positionId, , , ) = _nftManager().mint(
            INonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                tickSpacing: tickSpacing,
                tickLower: tickLower,
                tickUpper: tickUpper,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp,
                sqrtPriceX96: 0
            })
        );
    }

    /// @notice mints base position
    /// @param _baseLower lower tick of the base position
    /// @param _baseUpper upper tick of the base position
    /// @param amount0Desired desired amount of token0
    /// @param amount1Desired desired amount of token1
    function _mintBasePosition(
        int24 _baseLower,
        int24 _baseUpper,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal {
        basePositionId = _mintPosition(_baseLower, _baseUpper, amount0Desired, amount1Desired);
    }

    /// @notice mints limit position
    /// @param _limitLower lower tick of the limit position
    /// @param _limitUpper upper tick of the limit position
    /// @param amount0Desired desired amount of token0
    /// @param amount1Desired desired amount of token1
    function _mintLimitPosition(
        int24 _limitLower,
        int24 _limitUpper,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal {
        limitPositionId = _mintPosition(_limitLower, _limitUpper, amount0Desired, amount1Desired);
    }

    /** @notice Helper function to get the most conservative price
     @param spot Current spot price
     @param twap TWAP price
     @param auxTwap Auxiliary TWAP price
     @param isPool Flag indicating if the valuation is for the pool or deposit
     @return price Most conservative price
    */
    function _getConservativePrice(
        uint256 spot,
        uint256 twap,
        uint256 auxTwap,
        bool isPool
    ) internal view returns (uint256) {
        return UV3Math.getConservativePrice(spot, twap, auxTwap, isPool, auxTwapPeriod);
    }

    /**
    * @notice Helper function to check price manipulation
    * @param price Current spot price
    * @param twap TWAP price
    * @param auxTwap Auxiliary TWAP price
    */
    function _checkPriceManipulation(
        uint256 price,
        uint256 twap,
        uint256 auxTwap
    ) internal view {
        UV3Math.checkPriceManipulation(
            price,
            twap,
            auxTwap,
            hysteresis,
            auxTwapPeriod,
            pool
        );
    }

    /**
     @notice Gets the effective base fee (override or factory default)
     @return uint256 The effective base fee
     */
    function getEffectiveBaseFee() public view override returns (uint256) {
        return overrideBaseFee == type(uint256).max ? IICHIVaultFactory(ichiVaultFactory).baseFee() : overrideBaseFee;
    }

    /**
     @notice Distributes shares based on token1 value, adjusted by liquidity shares and pool's AUM in token1.
     @param deposit0 Token0 amount transferred from sender to ICHIVault.
     @param deposit1 Token1 amount transferred from sender to ICHIVault.
     @param to Recipient address for minted liquidity tokens.
     @return shares Number of liquidity tokens minted for deposit.
     */
    function deposit(
        uint256 deposit0,
        uint256 deposit1,
        address to
    ) external override returns (uint256 shares) {
        _beforeNonReentrant();
        address _lastActiveGauge = lastActiveGauge;
        _preAction(_lastActiveGauge);
        require(allowToken0 || deposit0 == 0, "IV7");
        require(allowToken1 || deposit1 == 0, "IV8");
        require(deposit0 > 0 || deposit1 > 0, "IV9");
        require(deposit0 <= deposit0Max && deposit1 <= deposit1Max, "IV10");
        require(to != address(0) && to != address(this), "IV11");

        // Get spot price
        uint256 price = _fetchSpot(token0, token1, currentTick(), PRECISION);

        // Get TWAP price
        uint256 twap = _fetchTwap(pool, token0, token1, twapPeriod, PRECISION);

        // Get aux TWAP price if aux period is set (otherwise set it equal to the TWAP price)
        uint256 auxTwap = auxTwapPeriod > 0
            ? _fetchTwap(pool, token0, token1, auxTwapPeriod, PRECISION)
            : twap;

        // Check price manipulation
        _checkPriceManipulation(price, twap, auxTwap);

        // Clean positions and collect/distribute fees
        _cleanPositions(true);

        // Get total amounts including current positions with updated fees
        (uint256 pool0, uint256 pool1) = getTotalAmounts();

        // Transfer tokens from depositor
        if (deposit0 > 0) {
            IERC20(token0).safeTransferFrom(msg.sender, address(this), deposit0);
        }
        if (deposit1 > 0) {
            IERC20(token1).safeTransferFrom(msg.sender, address(this), deposit1);
        }

        // Calculate share value in token1
        uint256 priceForDeposit = _getConservativePrice(price, twap, auxTwap, false);
        uint256 deposit0PricedInToken1 = deposit0.mul(priceForDeposit).div(PRECISION);

        // Calculate shares to mint
        shares = deposit1.add(deposit0PricedInToken1);

        if (totalSupply() != 0) {
            uint256 priceForPool = _getConservativePrice(price, twap, auxTwap, true);
            uint256 pool0PricedInToken1 = pool0.mul(priceForPool).div(PRECISION);
            shares = shares.mul(totalSupply()).div(pool0PricedInToken1.add(pool1));
        } else {
            shares = shares.mul(MIN_SHARES);
        }

        _mint(to, shares);
        emit Deposit(msg.sender, to, shares, deposit0, deposit1);
        _postAction(_lastActiveGauge);
        _afterNonReentrant();
    }

    /**
    @notice Decreases liquidity from NFT position proportional to shares
    @param positionId NFT position ID
    @param shares Amount of shares being withdrawn
    @param totalSupply Total supply of shares
    @param to Address to receive tokens
    @return amount0 Token0 amount withdrawn
    @return amount1 Token1 amount withdrawn
    */
    function _withdrawFromPosition(
        uint256 positionId,
        uint256 shares,
        uint256 totalSupply,
        address to
    ) internal returns (uint256 amount0, uint256 amount1) {
        // this function is always called after _cleanPositions is aleady called

        // Get position info
        (
            ,
            ,
            ,
            ,
            ,
            ,
            ,
            uint128 positionLiquidity,
            ,
            ,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        ) = _nftManager().positions(positionId);

        // should not be happening, safety check
        require(tokensOwed0 == 0 && tokensOwed1 == 0, "IV12");

        // Calculate proportional liquidity
        uint128 liquidityToDecrease = uint128(uint256(positionLiquidity).mul(shares).div(totalSupply));

        if (liquidityToDecrease > 0) {
            // Decrease liquidity
            (amount0, amount1) = _nftManager().decreaseLiquidity(
                INonfungiblePositionManager.DecreaseLiquidityParams({
                    tokenId: positionId,
                    liquidity: liquidityToDecrease,
                    amount0Min: 0,
                    amount1Min: 0,
                    deadline: block.timestamp
                })
            );

            // Collect tokens
            _nftManager().collect(
                INonfungiblePositionManager.CollectParams({
                    tokenId: positionId,
                    recipient: to,
                    amount0Max: uint128(amount0),
                    amount1Max: uint128(amount1)
                })
            );
        }
    }
    /**
     @notice Redeems shares for a proportion of ICHIVault's AUM, matching the share percentage of total issued.
     @param shares Quantity of liquidity tokens to redeem as pool assets.
     @param to Address receiving the redeemed pool assets.
     @return amount0 Token0 amount received from liquidity token redemption.
     @return amount1 Token1 amount received from liquidity token redemption.
     */
    function withdraw(
        uint256 shares,
        address to
    ) external override returns (uint256 amount0, uint256 amount1) {
        _beforeNonReentrant();
        address _lastActiveGauge = lastActiveGauge;
        _preAction(_lastActiveGauge);
        require(shares > 0, "IV13");
        require(to != address(0), "IV14");

        uint256 _totalSupply = totalSupply();
        require(shares == _totalSupply || _totalSupply >= shares.add(MIN_SHARES), "IV15");

        // Clean positions and collect/distribute fees
        _cleanPositions(true);

        // Withdraw from positions
        uint256 base0;
        uint256 base1;
        uint256 limit0;
        uint256 limit1;

        if (basePositionId != 0) {
            (base0, base1) = _withdrawFromPosition(basePositionId, shares, _totalSupply, to);
        }

        if (limitPositionId != 0) {
            (limit0, limit1) = _withdrawFromPosition(limitPositionId, shares, _totalSupply, to);
        }

        // Add proportional share of unused balances
        uint256 unusedAmount0 = IERC20(token0).balanceOf(address(this)).mul(shares).div(_totalSupply);
        uint256 unusedAmount1 = IERC20(token1).balanceOf(address(this)).mul(shares).div(_totalSupply);
        if (unusedAmount0 > 0) IERC20(token0).safeTransfer(to, unusedAmount0);
        if (unusedAmount1 > 0) IERC20(token1).safeTransfer(to, unusedAmount1);

        // Calculate total amounts returned
        amount0 = base0.add(limit0).add(unusedAmount0);
        amount1 = base1.add(limit1).add(unusedAmount1);

        _burn(msg.sender, shares);

        emit Withdraw(msg.sender, to, shares, amount0, amount1);
        _postAction(_lastActiveGauge);
        _afterNonReentrant();
    }

    /**
     @notice Updates LP positions in the ICHIVault.
     @dev First places a base position symmetrically around current price, using one token fully.
     Remaining token forms a single-sided order.
     @param _baseLower Lower tick of the base position.
     @param _baseUpper Upper tick of the base position.
     @param _limitLower Lower tick of the limit position.
     @param _limitUpper Upper tick of the limit position.
     @param swapQuantity Token swap quantity; positive for token0 to token1, negative for token1 to token0.
     */
    function rebalance(
        int24 _baseLower,
        int24 _baseUpper,
        int24 _limitLower,
        int24 _limitUpper,
        int256 swapQuantity
    ) external override {
        _beforeNonReentrant();
        _onlyOwner();
        address _lastActiveGauge = lastActiveGauge;
        _preAction(_lastActiveGauge);
        int24 tickSpacing_ = tickSpacing;
        require(
            _baseLower < _baseUpper && _baseLower % tickSpacing_ == 0 && _baseUpper % tickSpacing_ == 0,
            "IV16"
        );
        require(
            _limitLower < _limitUpper && _limitLower % tickSpacing_ == 0 && _limitUpper % tickSpacing_ == 0,
            "IV17"
        );
        require(_baseLower != _limitLower || _baseUpper != _limitUpper, "IV18");

        // Clean positions and collect/distribute fees
        (uint256 fees0, uint256 fees1) = _cleanPositions(false);

        // dismantle positions, collect all tokens (fees already collected)
        _dismantlePosition(basePositionId);
        _dismantlePosition(limitPositionId);

        // swap tokens if required
        if (swapQuantity != 0) {
            ICLPool(pool).swap(
                address(this),
                swapQuantity > 0,
                swapQuantity > 0 ? swapQuantity : -swapQuantity,
                swapQuantity > 0 ? UV3Math.MIN_SQRT_RATIO + 1 : UV3Math.MAX_SQRT_RATIO - 1,
                abi.encode(address(this))
            );
        }

        uint256 balance0 = IERC20(token0).balanceOf(address(this));
        uint256 balance1 = IERC20(token1).balanceOf(address(this));

        emit Rebalance(
            currentTick(),
            balance0,
            balance1,
            fees0,
            fees1,
            totalSupply()
        );

        _mintBasePosition(_baseLower, _baseUpper,
            balance0, balance1);
        // balances had changed, so we need to recalculate them for the limit position
        _mintLimitPosition(_limitLower, _limitUpper,
            IERC20(token0).balanceOf(address(this)),
            IERC20(token1).balanceOf(address(this))
        );
        _postAction(_lastActiveGauge);
        _afterNonReentrant();
    }

    /**
     @notice Collects and distributes fees from ICHIVault's LP positions. Transaction can be paid by anyone.
     @return fees0 Collected fees in token0.
     @return fees1 Collected fees in token1.
     */
    function collectFees() external override returns (uint256 fees0, uint256 fees1) {
        _beforeNonReentrant();
        address _lastActiveGauge = lastActiveGauge;
        _preAction(_lastActiveGauge);
        (uint256 _fees0, uint256 _fees1) = _cleanPositions(true);
        _postAction(_lastActiveGauge);
        return (_fees0, _fees1);
        _afterNonReentrant();
    }

    function collectRewards() external override {
        _beforeNonReentrant();
        _collectRewards(lastActiveGauge);
        _afterNonReentrant();
    }

    /**
     @notice Sends portion of swap fees to ammFeeRecepient, feeRecipient and affiliate.
     @param fees0 fees for token0
     @param fees1 fees for token1
     */
    function _distributeFees(uint256 fees0, uint256 fees1) internal {
        uint256 ammFee = IICHIVaultFactory(ichiVaultFactory).ammFee();
        uint256 baseFee = IICHIVaultFactory(ichiVaultFactory).baseFee();

        // Make sure there are always enough fees to distribute
        uint256 balance0 = IERC20(token0).balanceOf(address(this));
        uint256 balance1 = IERC20(token1).balanceOf(address(this));
        fees0 = fees0 < balance0 ? fees0 : balance0;
        fees1 = fees1 < balance1 ? fees1 : balance1;

        // baseFeeRecipient cannot be NULL. This is checked and controlled in the factory
        // ammFeeRecipient could be NULL, in this case ammFees are not taken
        // ammFee + baseFee is always <= 100%. Also controlled in the factory

        if (ammFee > 0 && ammFeeRecipient != address(0)) {
            if (fees0 > 0) {
                IERC20(token0).safeTransfer(ammFeeRecipient, fees0.mul(ammFee).div(PRECISION));
            }
            if (fees1 > 0) {
                IERC20(token1).safeTransfer(ammFeeRecipient, fees1.mul(ammFee).div(PRECISION));
            }
        }

        if (baseFee > 0) {
            // if there is no affiliate 100% of the baseFee should go to feeRecipient
            uint256 baseFeeSplit = (affiliate == address(0))
                ? PRECISION
                : IICHIVaultFactory(ichiVaultFactory).baseFeeSplit();
            address feeRecipient = IICHIVaultFactory(ichiVaultFactory).feeRecipient();

            if (fees0 > 0) {
                uint256 totalFee = fees0.mul(baseFee).div(PRECISION);
                uint256 toRecipient = totalFee.mul(baseFeeSplit).div(PRECISION);
                uint256 toAffiliate = totalFee.sub(toRecipient);
                IERC20(token0).safeTransfer(feeRecipient, toRecipient);
                if (toAffiliate > 0) {
                    IERC20(token0).safeTransfer(affiliate, toAffiliate);
                }
            }
            if (fees1 > 0) {
                uint256 totalFee = fees1.mul(baseFee).div(PRECISION);
                uint256 toRecipient = totalFee.mul(baseFeeSplit).div(PRECISION);
                uint256 toAffiliate = totalFee.sub(toRecipient);
                IERC20(token1).safeTransfer(feeRecipient, toRecipient);
                if (toAffiliate > 0) {
                    IERC20(token1).safeTransfer(affiliate, toAffiliate);
                }
            }
        }
    }

    /**
     @notice Callback function for swap
     @dev this is where the payer transfers required token0 and token1 amounts
     @param amount0Delta required amount of token0
     @param amount1Delta required amount of token1
     @param data encoded payer's address
     */
    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external override {
        require(msg.sender == address(pool), "cb2");
        address payer = abi.decode(data, (address));

        if (amount0Delta > 0) {
            if (payer == address(this)) {
                IERC20(token0).safeTransfer(msg.sender, uint256(amount0Delta));
            } else {
                IERC20(token0).safeTransferFrom(payer, msg.sender, uint256(amount0Delta));
            }
        } else if (amount1Delta > 0) {
            if (payer == address(this)) {
                IERC20(token1).safeTransfer(msg.sender, uint256(amount1Delta));
            } else {
                IERC20(token1).safeTransferFrom(payer, msg.sender, uint256(amount1Delta));
            }
        }
    }

    /**
     @notice Sets the hysteresis threshold, in percentage points (10**16 = 1%). Triggers a flashloan attack
     check when the difference between spot price and TWAP exceeds this threshold.
     @dev Accessible only by the owner.
     @param _hysteresis Hysteresis threshold value.
     */
    function setHysteresis(uint256 _hysteresis) external override {
        _onlyOwner();
        hysteresis = _hysteresis;
        emit Hysteresis(msg.sender, _hysteresis);
    }

    /**
     @notice Sets the AMM fee recipient account address, where portion of the collected swap fees will be distributed
     @dev onlyOwner
     @param _ammFeeRecipient The AMM fee recipient account address
     */
    function setAmmFeeRecipient(address _ammFeeRecipient) external override {
        _onlyOwner();
        ammFeeRecipient = _ammFeeRecipient;
        emit AmmFeeRecipient(msg.sender, _ammFeeRecipient);
    }

    /**
     @notice Sets the affiliate account address where portion of the collected swap fees will be distributed
     @dev onlyOwner
     @param _affiliate The affiliate account address
     */
    function setAffiliate(address _affiliate) external override {
        _onlyOwner();
        affiliate = _affiliate;
        emit Affiliate(msg.sender, _affiliate);
    }

    /**
     @notice Sets the farming contract address where rewards will be sent
     @dev onlyOwner
     @param _farmingContract The farming contract address
     */
    function setFarmingContract(address _farmingContract) external override {
        _onlyOwner();
        farmingContract = _farmingContract;
        // emit FarmingContract(msg.sender, _farmingContract);
    }

    /**
     @notice Sets the maximum token0 and token1 amounts the contract allows in a deposit
     @dev onlyOwner
     @param _deposit0Max The maximum amount of token0 allowed in a deposit
     @param _deposit1Max The maximum amount of token1 allowed in a deposit
     */
    function setDepositMax(uint256 _deposit0Max, uint256 _deposit1Max) external override {
        _onlyOwner();
        deposit0Max = _deposit0Max;
        deposit1Max = _deposit1Max;
        emit DepositMax(msg.sender, _deposit0Max, _deposit1Max);
    }

    /**
     @notice Sets vault-specific base fee override
     @dev onlyOwner. Fees are calculated as 10e17 * percentage (e.g., 20% = 2 * 10e17)
     @param _baseFee The base fee override. Use type(uint256).max to disable override and use factory default
     */
    function setBaseFeeOverride(uint256 _baseFee) external override {
        _onlyOwner();
        
        if (_baseFee != type(uint256).max) {
            require(_baseFee <= PRECISION, "IV20");
            uint256 currentAmmFee = IICHIVaultFactory(ichiVaultFactory).ammFee();
            require(_baseFee.add(currentAmmFee) <= PRECISION, "IV21");
        }
        
        overrideBaseFee = _baseFee;
    }

    /**
     @notice Calculates total quantity of token0 and token1 in both positions (and unused in the ICHIVault)
     @return total0 Quantity of token0 in both positions (and unused in the ICHIVault)
     @return total1 Quantity of token1 in both positions (and unused in the ICHIVault)
     */
    function getTotalAmounts() public view override returns (uint256 total0, uint256 total1) {
        (, uint256 base0, uint256 base1) = getBasePosition();
        (, uint256 limit0, uint256 limit1) = getLimitPosition();
        total0 = IERC20(token0).balanceOf(address(this)).add(base0).add(limit0);
        total1 = IERC20(token1).balanceOf(address(this)).add(base1).add(limit1);
    }

    /**
    * @notice Gets position info and calculates token amounts for a given NFT position
    * @param positionId NFT position ID to query
    * @return liquidity Amount of liquidity in the position
    * @return amount0 Amount of token0 in position (including fees)
    * @return amount1 Amount of token1 in position (including fees)
    */
    function _getPositionAmounts(
        uint256 positionId
    ) internal view returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        return UV3Math.getPositionAmounts(
            positionId,
            pool,
            ichiVaultFactory
        );
    }

    /**
    * @notice Gets position liquidity for a given NFT position
    * @param positionId NFT position ID to query
    * @return liquidity Amount of liquidity in the position
    */
    function _getPositionLiquidity(
        uint256 positionId
    ) internal view returns (uint128 liquidity) {
        if (positionId == 0) {
            return 0;
        }

        // Get current position info from NFT manager
        (
            ,
            ,
            ,
            ,
            ,
            ,
            ,
            uint128 positionLiquidity,
            ,
            ,
            ,
        ) = _nftManager().positions(positionId);
        liquidity = positionLiquidity;
    }

    /**
     @notice Calculates amount of total liquidity in the base position
     @return liquidity Amount of total liquidity in the base position
     @return amount0 Estimated amount of token0 that could be collected by burning the base position
     @return amount1 Estimated amount of token1 that could be collected by burning the base position
     */
    function getBasePosition() public view override returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        return _getPositionAmounts(basePositionId);
    }

    /**
     @notice Calculates amount of total liquidity in the limit position
     @return liquidity Amount of total liquidity in the base position
     @return amount0 Estimated amount of token0 that could be collected by burning the limit position
     @return amount1 Estimated amount of token1 that could be collected by burning the limit position
     */
    function getLimitPosition() public view override returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        return _getPositionAmounts(limitPositionId);
    }

    /**
     @notice Returns current price tick
     @return tick Uniswap pool's current price tick
     */
    function currentTick() public view override returns (int24 tick) {
        (, int24 tick_, , , ,bool unlocked_) = ICLPool(pool).slot0();
        require(unlocked_, "IV19");
        tick = tick_;
    }

    /**
    * @notice Returns equivalent _tokenOut for _amountIn, _tokenIn using spot price
    * @param _tokenIn token the input amount is in
    * @param _tokenOut token for the output amount
    * @param _tick tick for the spot price
    * @param _amountIn amount in _tokenIn
    * @return amountOut equivalent amount in _tokenOut
    */
    function _fetchSpot(
        address _tokenIn,
        address _tokenOut,
        int24 _tick,
        uint256 _amountIn
    ) internal pure returns (uint256 amountOut) {
        return UV3Math.fetchSpot(
            _tokenIn,
            _tokenOut,
            _tick,
            _amountIn
        );
    }

    /**
    * @notice Returns equivalent _tokenOut for _amountIn, _tokenIn using TWAP price
    * @param _pool Uniswap V3 pool address to be used for price checking
    * @param _tokenIn token the input amount is in
    * @param _tokenOut token for the output amount
    * @param _twapPeriod the averaging time period
    * @param _amountIn amount in _tokenIn
    * @return amountOut equivalent amount in _tokenOut
    */
    function _fetchTwap(
        address _pool,
        address _tokenIn,
        address _tokenOut,
        uint32 _twapPeriod,
        uint256 _amountIn
    ) internal view returns (uint256 amountOut) {
        return UV3Math.fetchTwap(
            _pool,
            _tokenIn,
            _tokenOut,
            _twapPeriod,
            _amountIn
        );
    }

    /**
    * @notice Collects rewards from staked positions in the Velodrome gauge
    * @dev Delegates to UV3Math library for implementation
    */
    function _collectRewards(address _lastGauge) internal {
        UV3Math.collectRewards(
            ichiVaultFactory,
            pool,
            basePositionId,
            limitPositionId,
            farmingContract,
            token0,
            token1,
            _lastGauge
        );
    }

    /**
    * @notice Performs pre-action tasks before modifying positions
    * @dev Delegates to UV3Math library for implementation
    */
    function _preAction(address _lastGauge) internal {
        _collectRewards(_lastGauge);

        UV3Math.preAction(
            ichiVaultFactory,
            pool,
            basePositionId,
            limitPositionId,
            _lastGauge
        );
    }

    /**
    * @notice Performs post-action tasks after modifying positions
    * @dev Delegates to UV3Math library for implementation
    */
    function _postAction(address _lastGauge) internal {
        lastActiveGauge = UV3Math.postAction(
            ichiVaultFactory,
            pool,
            basePositionId,
            limitPositionId,
            _lastGauge
        );
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external pure override returns (bytes4) {
        // We don't need to do anything special on reciept
        // Just return the selector to indicate successful receipt
        return this.onERC721Received.selector;
    }
}
