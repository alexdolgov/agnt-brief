// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {MulDivMathLib} from "src/libraries/MulDivMathLib.sol";

import {SafeMath} from "@openzeppelin/math/SafeMath.sol";

import {ERC20Upgradeable} from "@openzeppelin-upgrades/token/ERC20/ERC20Upgradeable.sol";
import {IERC20Upgradeable} from "@openzeppelin-upgrades/token/ERC20/IERC20Upgradeable.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";
import {SafeERC20Upgradeable} from "@openzeppelin-upgrades/token/ERC20/SafeERC20Upgradeable.sol";

import {IUniswapV3MintCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3MintCallback.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {UniLiquidityLib} from "src/libraries/UniLiquidityLib.sol";
import {IManager} from "src/interfaces/manager/IManager.sol";
import {IRewardReceiver} from "src/interfaces/rewards/IRewardReceiver.sol";
import {IPriceHelper} from "src/interfaces/swap/IPriceHelper.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";

import {UpgradeableOperableKeepable} from "src/governance/UpgradeableOperableKeepable.sol";

import {IBlastRebasing, YieldMode} from "src/interfaces/IBlastRebasing.sol";
import {IBlast} from "src/interfaces/IBlast.sol";

contract ThrusterLPManager is IManager, IUniswapV3MintCallback, UpgradeableOperableKeepable, ERC20Upgradeable {
    using SafeMath for uint256;
    using MulDivMathLib for uint256;
    using SafeERC20 for IERC20;

    // Data received in the callback
    struct MintCallbackData {
        address user;
        address manager;
    }

    // Math Precision
    uint256 private constant PRECISION = 1e30;

    // Array of position ranges managed, index 0 is the default range
    Range[] private ranges;

    // Range was already rebalance
    // block number => tick lower => tick upper => true if already rebalance
    mapping(uint256 => mapping(int24 => mapping(int24 => bool))) private alreadyRebalance;

    // Percentages of rewards reteined when this are collected (1e30 == 100%)
    uint256 public yieldRate;

    // Percentages of amount reteined amount when user withdraw (1e30 == 100%)
    uint256 public override withdrawalRate;

    // Only charge withdrawal rate if this is true
    bool public override chargeWithdrawalRate;

    // Address that receive the retentions
    address public override incentiveReceiver;

    // Rewards receiver
    IRewardReceiver private receiver;

    // Swapper
    ITokenSwapper private swapper;

    // Price Helper Contract
    IPriceHelper private price;

    // Only allow one mint at a time to avoid bad total asset accounting
    bool private mintCalled;

    // Pool Data
    IUniswapV3Pool private pool;
    IERC20 public override token0;
    IERC20 public override token1;

    IBlastRebasing private constant USDB = IBlastRebasing(0x4300000000000000000000000000000000000003);
    IBlastRebasing private constant WETH = IBlastRebasing(0x4300000000000000000000000000000000000004);
    IBlast private constant BLAST_YIELD_CONTRACT = IBlast(0x4300000000000000000000000000000000000002);

    function initializeLPManager(
        address _pool,
        address _receiver,
        address _price,
        address _swapper,
        address _incentiveReceiver,
        uint256 _yieldRate,
        uint256 _withdrawalRate,
        string memory _name,
        string memory _symbol,
        int24 defaultLower,
        int24 defaultUpper
    ) external initializer {
        __Governable_init(msg.sender);
        __ERC20_init(_name, _symbol);

        chargeWithdrawalRate = true;

        price = IPriceHelper(_price);
        receiver = IRewardReceiver(_receiver);
        swapper = ITokenSwapper(_swapper);

        pool = IUniswapV3Pool(_pool);
        token0 = IERC20(pool.token0());
        token1 = IERC20(pool.token1());

        incentiveReceiver = _incentiveReceiver;
        yieldRate = _yieldRate;
        withdrawalRate = _withdrawalRate;

        UniLiquidityLib.checkRange(defaultLower, defaultUpper, _pool);

        ranges.push(Range({tickLower: defaultLower, tickUpper: defaultUpper}));

        token0.safeApprove(_receiver, type(uint256).max);
        token1.safeApprove(_receiver, type(uint256).max);
        token0.safeApprove(_swapper, type(uint256).max);
        token1.safeApprove(_swapper, type(uint256).max);

        USDB.configure(YieldMode.CLAIMABLE);
        WETH.configure(YieldMode.CLAIMABLE);
        BLAST_YIELD_CONTRACT.configureClaimableGas();
    }

    /**
     * @notice Mint Callback for Uniswap V3 pool.
     */
    function uniswapV3MintCallback(uint256 amount0, uint256 amount1, bytes calldata data) external override {
        require(msg.sender == address(pool), "Invalid Caller");
        require(mintCalled, "Ongoing Mint");

        mintCalled = false;

        MintCallbackData memory decoded = abi.decode(data, (MintCallbackData));
        // check if the callback is received from Uniswap V3 Pool

        require(decoded.manager == address(this), "Invalid Caller");

        // transfer tokens to pool
        if (amount0 > 0) {
            if (decoded.user == decoded.manager) {
                token0.safeTransfer(msg.sender, amount0);
            } else {
                token0.safeTransferFrom(decoded.user, msg.sender, amount0);
            }
        }
        if (amount1 > 0) {
            if (decoded.user == decoded.manager) {
                token1.safeTransfer(msg.sender, amount1);
            } else {
                token1.safeTransferFrom(decoded.user, msg.sender, amount1);
            }
        }
    }

    /**
     * @notice Assets Under Management, without collect rewards.
     * @return amount0 Total AUM of token0.
     * @return amount1 Total AUM of token1.
     */
    function aumWithoutCollect() external view override returns (uint256 amount0, uint256 amount1) {
        address thisAddress = address(this);
        // Current Balances
        amount0 = token0.balanceOf(thisAddress);
        amount1 = token1.balanceOf(thisAddress);

        Range[] memory _ranges = ranges;

        uint256 length = _ranges.length;

        if (length > 0) {
            // sum each range position
            for (uint256 i = 0; i < length;) {
                // Get LP position and pending rewards to be collected
                (uint128 liq,,) = lpPosition(_ranges[i].tickLower, _ranges[i].tickUpper);
                if (liq > 0) {
                    // Calculate current positions
                    (uint256 position0, uint256 position1) = UniLiquidityLib.amountsForLiquidity(
                        address(pool), _ranges[i].tickLower, _ranges[i].tickUpper, liq
                    );

                    amount0 = amount0.add(position0);
                    amount1 = amount1.add(position1);
                }

                ++i;
            }
        }
    }

    /**
     * @notice Assets Under Management
     * @return amount0 Total AUM of token0.
     * @return amount1 Total AUM of token1.
     */
    function aum() public override returns (uint256 amount0, uint256 amount1) {
        address thisAddress = address(this);
        // Current Balances
        amount0 = token0.balanceOf(thisAddress);
        amount1 = token1.balanceOf(thisAddress);

        uint256 totalRewards0;
        uint256 totalRewards1;

        Range[] memory _ranges = ranges;

        uint256 length = _ranges.length;

        if (length > 0) {
            // sum each range position
            for (uint256 i = 0; i < length;) {
                // Get LP position and pending rewards to be collected
                (uint128 liq,,) = lpPosition(_ranges[i].tickLower, _ranges[i].tickUpper);

                if (liq > 0) {
                    // Calculate current positions
                    (uint256 position0, uint256 position1) = UniLiquidityLib.amountsForLiquidity(
                        address(pool), _ranges[i].tickLower, _ranges[i].tickUpper, liq
                    );

                    amount0 = amount0.add(position0);
                    amount1 = amount1.add(position1);

                    // Update Rewards to be collected
                    pool.burn(_ranges[i].tickLower, _ranges[i].tickUpper, 0);
                }

                // Collect fees

                (uint128 rewards0, uint128 rewards1) = pool.collect(
                    address(this), _ranges[i].tickLower, _ranges[i].tickUpper, type(uint128).max, type(uint128).max
                );

                totalRewards0 = totalRewards0.add(rewards0);
                totalRewards1 = totalRewards1.add(rewards1);

                emit RewardsPerRange(_ranges[i], rewards0, rewards1);

                ++i;
            }
        }

        if (totalRewards0 > 0 || totalRewards1 > 0) {
            // Emit Rewards
            emit Rewards(totalRewards0, totalRewards1);

            // Charge retention
            (uint256 rewards0AfterRetention, uint256 rewards1AfterRetention) =
                _applyRetention(totalRewards0, totalRewards1, yieldRate, "YIELD");

            // Send rewards to reward receiver
            receiver.receiveRewards(rewards0AfterRetention, rewards1AfterRetention);
        }

        // Emit total Position
        emit Position(amount0, amount1);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   OPERATOR                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Mints liquidity from V3 Pool
     * @param _index Range index
     * @param _amount0 Amount of token0
     * @param _amount1 Amount of token1
     * @return amount0 Amount of token0 deployed to the pool
     * @return amount1 Amount of token1 deployed to the pool
     */
    function mintLiquidity(address _user, uint256 _index, uint256 _amount0, uint256 _amount1)
        external
        override
        onlyOperator
        returns (uint256 amount0, uint256 amount1)
    {
        return _mintLiquidity(_user, _index, _amount0, _amount1);
    }

    /**
     * @notice Burns liquidity proportionally to shares
     * @param _position Upper Tick
     * @param _receiver The amount of liquidity to be burned based on shares
     * @return amount0 Amount of token0 redeemed.
     * @return amount1 Amount of token1 redeemed.
     */
    function redeemLiquidity(uint256 _position, address _receiver)
        external
        override
        onlyOperator
        returns (uint256 amount0, uint256 amount1, uint256 amount0AfterRetention, uint256 amount1AfterRetention)
    {
        address thisAddress = address(this);

        uint256 supply = totalSupply();

        amount0 = token0.balanceOf(thisAddress).mulDivDown(_position, supply);
        amount1 = token1.balanceOf(thisAddress).mulDivDown(_position, supply);

        Range[] memory _ranges = ranges;

        uint256 length = _ranges.length;

        for (uint256 i; i < length;) {
            // Update Rewards to be collected
            pool.burn(_ranges[i].tickLower, _ranges[i].tickUpper, 0);

            (uint128 liquidity,,) = lpPosition(_ranges[0].tickLower, _ranges[0].tickUpper);
            uint128 liquidityToRemove = uint128(uint256(liquidity).mulDivDown(_position, totalSupply()));

            uint256 amount0Received;
            uint256 amount1Received;

            if (liquidityToRemove > 0) {
                (amount0Received, amount1Received) =
                    pool.burn(_ranges[0].tickLower, _ranges[0].tickUpper, liquidityToRemove);

                (amount0Received, amount1Received) = pool.collect(
                    thisAddress,
                    _ranges[i].tickLower,
                    _ranges[i].tickUpper,
                    uint128(amount0Received),
                    uint128(amount1Received)
                );

                amount0 = amount0.add(amount0Received);
                amount1 = amount1.add(amount1Received);
            }

            ++i;
        }

        if (chargeWithdrawalRate) {
            (amount0AfterRetention, amount1AfterRetention) =
                _applyRetention(amount0, amount1, withdrawalRate, "WITHDRAW");
        } else {
            amount0AfterRetention = amount0;
            amount1AfterRetention = amount1;
        }

        token0.safeTransfer(_receiver, amount0AfterRetention);
        token1.safeTransfer(_receiver, amount1AfterRetention);
    }

    /**
     * @notice Min shares.
     * @param to Who will receive the shares.
     * @param amount Amount user position to be minted.
     */
    function mint(address to, uint256 amount) external override onlyOperator {
        super._mint(to, amount);
    }

    /**
     * @notice Burn shares.
     * @param from Current owner of the shares.
     * @param amount Amount shares to be burnt.
     */
    function burn(address from, uint256 amount) external override onlyOperator {
        super._burn(from, amount);
    }

    /**
     * @notice Transfer Assets here.
     * @param from Current owner of the assets.
     * @param amount0 Amount of token0 assets.
     * @param amount1 Amount of token1 assets.
     */
    function transferAssets(address from, uint256 amount0, uint256 amount1) external override onlyOperator {
        if (amount0 > 0) {
            token0.safeTransferFrom(from, address(this), amount0);
        }
        if (amount1 > 0) {
            token1.safeTransferFrom(from, address(this), amount1);
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                    KEEPER                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Burns liquidity in the given range
     * @param _liquidity Liquidity to be burned
     * @param _liquidity Tick Range to burn.
     * @param _notional True if burn liquidity it is a notional retention.
     * @return amount0 Amount of token0 redeemed.
     * @return amount1 Amount of token1 redeemed.
     */
    function burnLiquidity(uint128 _liquidity, uint256 _index, bool _notional)
        external
        override
        onlyKeeper
        returns (uint256 amount0, uint256 amount1)
    {
        Range memory range = ranges[_index];
        (amount0, amount1) = pool.burn(range.tickLower, range.tickUpper, _liquidity);

        address _receiver = incentiveReceiver;

        if (_notional && _receiver != address(0)) {
            (amount0, amount1) =
                pool.collect(_receiver, range.tickLower, range.tickUpper, uint128(amount0), uint128(amount1));
            emit Retention(_receiver, amount0, amount1, amount0, amount1, "NOTIONAL");
        } else {
            pool.collect(address(this), range.tickLower, range.tickUpper, uint128(amount0), uint128(amount1));
        }
    }

    /**
     * @notice Rebalances the strategy
     * @param _swap Swap data to perform exchange from 1inch
     * @param _existingRanges Array of existing ticks to rebalance
     * @param _newRange New ticks in case there are any
     */
    function rebalance(Swap memory _swap, ExistingRange[] calldata _existingRanges, NewRange[] calldata _newRange)
        external
        override
        onlyKeeper
    {
        // Check flash loan protection and get token prices in USD; 18 decimals
        price.getPrices(address(pool));
        // Remove rewards from rebalance
        aum();

        // Swap if it is needed
        if (_swap.externalData.length != 0 || _swap.amountIn != 0) {
            swapper.swap(_swap.tokenIn, _swap.amountIn, _swap.tokenOut, _swap.minAmountOut, _swap.externalData);
        }

        uint256 length = _existingRanges.length;

        // redeploy existing ranges
        if (length > 0) {
            for (uint256 i; i < length;) {
                Range memory range = ranges[_existingRanges[i].index];
                require(!alreadyRebalance[block.number][range.tickLower][range.tickUpper], "Already Rebalanced");
                if (_existingRanges[i].burn) {
                    // burn all liquidity from existing range
                    _burnAllLiquidity(_existingRanges[i].index);
                }

                if (_existingRanges[i].amount0 > 0 || _existingRanges[i].amount1 > 0) {
                    // mint liquidity
                    _mintLiquidity(
                        address(this), _existingRanges[i].index, _existingRanges[i].amount0, _existingRanges[i].amount1
                    );
                } else if (_existingRanges[i].remove) {
                    (uint128 liq, uint128 rewards0, uint128 rewards1) = lpPosition(range.tickLower, range.tickUpper);

                    require(liq == 0 && rewards0 == 0 && rewards1 == 0, "Not Empty Range");

                    // shift the index element at last of array
                    ranges[_existingRanges[i].index] = ranges[ranges.length - 1];
                    // remove last element
                    ranges.pop();
                }

                alreadyRebalance[block.number][range.tickLower][range.tickUpper] = true;

                ++i;
            }

            emit ExistingRangesRebalance(_existingRanges);
        }

        length = _newRange.length;

        // deploy liquidity into new ranges
        if (length > 0) {
            for (uint256 i; i < length;) {
                // Add range
                ranges.push(Range(_newRange[i].tickLower, _newRange[i].tickUpper));

                if (_newRange[i].amount0 > 0 && _newRange[i].amount1 > 0) {
                    // Mint liquidity
                    _mintLiquidity(address(this), ranges.length.sub(1), _newRange[i].amount0, _newRange[i].amount1);
                }

                ++i;
            }
            emit NewRangesRebalance(_newRange);
        }

        // tick range array can't change the same range
        UniLiquidityLib.checkRanges(ranges, address(pool));
    }

    /**
     * @notice Swap Default Range
     * @param _index New default range index
     */
    function swapDefaultRange(uint256 _index) external override onlyKeeper {
        uint256 length = ranges.length;

        require(_index < length, "Out Of Bounds");

        Range memory oldDefault = ranges[0];

        ranges[0] = ranges[_index];
        ranges[_index] = oldDefault;
    }

    /**
     * @notice Claims yield and gas accrued from Blast and sends to incentive receiver
     */
    function claimAllYield() external onlyKeeper {
        require(incentiveReceiver != address(0), "No Incentive Receiver");
        address thisAddress = address(this);
        uint256 usdbYield = USDB.getClaimableAmount(thisAddress);
        if (usdbYield > 0) {
            USDB.claim(incentiveReceiver, usdbYield);
        }

        uint256 wethYield = WETH.getClaimableAmount(thisAddress);
        if (wethYield > 0) {
            WETH.claim(incentiveReceiver, wethYield);
        }

        BLAST_YIELD_CONTRACT.claimMaxGas(thisAddress, incentiveReceiver);
    }

    /* -------------------------------------------------------------------------- */
    /*                                    VIEW                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Return LP address.
     * @return LP address.
     */
    function getPool() external view override returns (address) {
        return address(pool);
    }

    /**
     * @notice Get the info of the given position
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @return liquidity The amount of liquidity of the position
     * @return rewards0 Amount of pending token0 to be collected, base on last computation
     * @return rewards1 Amount of pending token1 to be collected, base on last computation
     */
    function lpPosition(int24 tickLower, int24 tickUpper)
        public
        view
        override
        returns (uint128 liquidity, uint128 rewards0, uint128 rewards1)
    {
        bytes32 positionKey = keccak256(abi.encodePacked(address(this), tickLower, tickUpper));
        (liquidity,,, rewards0, rewards1) = pool.positions(positionKey);
    }

    // @return Return tick ranges
    function getRanges() external view override returns (Range[] memory) {
        return ranges;
    }

    // @return Return default range
    function defaultRange() external view override returns (int24, int24) {
        Range[] memory _ranges = ranges;
        return (_ranges[0].tickLower, _ranges[0].tickUpper);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   ERC20                                    */
    /* -------------------------------------------------------------------------- */

    function name() public view override(ERC20Upgradeable) returns (string memory) {
        return super.name();
    }

    function symbol() public view override(ERC20Upgradeable) returns (string memory) {
        return super.symbol();
    }

    function decimals() public view override(ERC20Upgradeable) returns (uint8) {
        return super.decimals();
    }

    function totalSupply() public view override(ERC20Upgradeable, IERC20Upgradeable) returns (uint256) {
        return super.totalSupply();
    }

    function balanceOf(address account) public view override(ERC20Upgradeable, IERC20Upgradeable) returns (uint256) {
        return super.balanceOf(account);
    }

    function transfer(address to, uint256 amount) public override(ERC20Upgradeable, IERC20Upgradeable) returns (bool) {
        return super.transfer(to, amount);
    }

    function allowance(address owner, address spender)
        public
        view
        override(ERC20Upgradeable, IERC20Upgradeable)
        returns (uint256)
    {
        return super.allowance(owner, spender);
    }

    function approve(address spender, uint256 amount)
        public
        override(ERC20Upgradeable, IERC20Upgradeable)
        returns (bool)
    {
        return super.approve(spender, amount);
    }

    function transferFrom(address from, address to, uint256 amount)
        public
        override(ERC20Upgradeable, IERC20Upgradeable)
        returns (bool)
    {
        return super.transferFrom(from, to, amount);
    }

    /* -------------------------------------------------------------------------- */
    /*                                 PRIVATE                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Mints liquidity from V3 Pool
     * @param _index Range index
     * @param _amount0 Amount of token0
     * @param _amount1 Amount of token1
     * @return amount0 Amount of token0 deployed to the pool
     * @return amount1 Amount of token1 deployed to the pool
     */
    function _mintLiquidity(address _user, uint256 _index, uint256 _amount0, uint256 _amount1)
        private
        returns (uint256 amount0, uint256 amount1)
    {
        Range memory range = ranges[_index];

        uint128 liquidity =
            UniLiquidityLib.liquidityForAmounts(address(pool), range.tickLower, range.tickUpper, _amount0, _amount1);
        if (liquidity > 0) {
            mintCalled = true;
            // add liquidity to Uniswap pool
            (amount0, amount1) = pool.mint(
                address(this),
                range.tickLower,
                range.tickUpper,
                liquidity,
                abi.encode(MintCallbackData({user: _user, manager: address(this)}))
            );
        }
    }

    /**
     * @notice Burns all liquidity in the given range
     * @param _index Tick rnage to be burned
     * @return amount0 Amount of token0 redeemed.
     * @return amount1 Amount of token1 redeemed.
     */
    function _burnAllLiquidity(uint256 _index) private returns (uint256 amount0, uint256 amount1) {
        Range memory range = ranges[_index];
        (uint128 liquidity,,) = lpPosition(range.tickLower, range.tickUpper);

        (amount0, amount1) = pool.burn(range.tickLower, range.tickUpper, liquidity);

        (amount0, amount1) =
            pool.collect(address(this), range.tickLower, range.tickUpper, type(uint128).max, type(uint128).max);
    }

    function _applyRetention(uint256 amount0, uint256 amount1, uint256 rate, string memory typeOf)
        private
        returns (uint256 amount0AfterRetention, uint256 amount1AfterRetention)
    {
        address _receiver = incentiveReceiver;

        amount0AfterRetention = amount0;
        amount1AfterRetention = amount1;

        if (_receiver != address(0)) {
            if (amount0 > 0) {
                amount0 = amount0.mulDivDown(rate, PRECISION);
                token0.safeTransfer(_receiver, amount0);
                amount0AfterRetention = amount0AfterRetention.sub(amount0);
            }

            if (amount1 > 0) {
                amount1 = amount1.mulDivDown(rate, PRECISION);
                token1.safeTransfer(_receiver, amount1);
                amount1AfterRetention = amount1AfterRetention.sub(amount1);
            }

            emit Retention(_receiver, amount0AfterRetention, amount1AfterRetention, amount0, amount1, typeOf);
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                 GOVERNOR                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Toggle Withdrawal Rate
     */
    function toggleWithdrawalRate() external override onlyGovernorOrOperator {
        chargeWithdrawalRate = !chargeWithdrawalRate;
    }

    /**
     * @notice Set arbitrary approval
     * @param _token token address
     * @param _spender spender address
     * @param _amount token amount
     */
    function govApproval(address _token, address _spender, uint256 _amount) external onlyGovernor {
        IERC20(_token).safeApprove(_spender, _amount);
    }

    /**
     * @notice Set Internal Contracts
     * @param _receiver New receiver address.
     * @param _price New price helper address.
     * @param _swapper New swapper address.
     */
    function setInternalContracts(address _receiver, address _price, address _swapper) external onlyGovernor {
        token0.safeApprove(address(receiver), 0);
        token1.safeApprove(address(receiver), 0);
        token0.safeApprove(address(swapper), 0);
        token1.safeApprove(address(swapper), 0);
        price = IPriceHelper(_price);
        receiver = IRewardReceiver(_receiver);
        swapper = ITokenSwapper(_swapper);
        token0.safeApprove(_receiver, type(uint256).max);
        token1.safeApprove(_receiver, type(uint256).max);
        token0.safeApprove(_swapper, type(uint256).max);
        token1.safeApprove(_swapper, type(uint256).max);
    }

    /**
     * @notice Set Incentives
     * @param _incentiveReceiver New incentives receiber address.
     * @param _yieldRate New yield rate.
     * @param _withdrawalRate New withdraw Rate.
     */
    function setIncentives(address _incentiveReceiver, uint256 _yieldRate, uint256 _withdrawalRate)
        external
        override
        onlyGovernorOrKeeper
    {
        incentiveReceiver = _incentiveReceiver;
        yieldRate = _yieldRate;
        withdrawalRate = _withdrawalRate;
    }

    /**
     * @notice Emergency Transfer Asset
     * @param _to Who will receive the asset.
     * @param _asset token address.
     */
    function emergencyTransfer(address _to, address _asset) external override onlyGovernor {
        uint256 assetBalance = IERC20(_asset).balanceOf(address(this));

        if (assetBalance > 0) {
            // Transfer the ERC20 tokens
            IERC20(_asset).safeTransfer(_to, assetBalance);
        }
    }
}
