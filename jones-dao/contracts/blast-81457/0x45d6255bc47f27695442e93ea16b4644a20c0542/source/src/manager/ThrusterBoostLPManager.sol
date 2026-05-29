// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {MulDivMathLib} from "src/libraries/MulDivMathLib.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";

import {IERC721Receiver} from "@openzeppelin/token/ERC721/IERC721Receiver.sol";

import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {UniLiquidityLib} from "src/libraries/UniLiquidityLib.sol";
import {IManager} from "src/interfaces/manager/IManager.sol";
import {IRewardReceiver} from "src/interfaces/rewards/IRewardReceiver.sol";
import {IPriceHelper} from "src/interfaces/swap/IPriceHelper.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";

import {ERC20Upgradeable} from "src/token/ERC20Upgradeable.sol";

import {IBlastRebasing, YieldMode} from "src/interfaces/pool/thruster/IBlastRebasing.sol";
import {IBlast} from "src/interfaces/pool/thruster/IBlast.sol";
import {IBlastPoints} from "src/interfaces/pool/thruster/IBlastPoints.sol";

import {INonfungiblePositionManager} from "src/interfaces/pool/thruster/INonfungiblePositionManager.sol";

import {INfpBooster, INonfungiblePositionManagerStruct} from "src/interfaces/pool/thruster/INfpBooster.sol";

import {AccessControlUpgradeable} from "@openzeppelin-upgrades/access/AccessControlUpgradeable.sol";

contract ThrusterBoostLPManager is IManager, AccessControlUpgradeable, ERC20Upgradeable {
    using MulDivMathLib for uint256;
    using SafeERC20 for IERC20;

    // Governor role
    bytes32 private constant GOVERNOR = bytes32("GOVERNOR");

    //Operator role
    bytes32 private constant OPERATOR = bytes32("OPERATOR");

    //  Keeper role
    bytes32 private constant KEEPER = bytes32("KEEPER");

    // Math Precision
    uint256 private constant PRECISION = 1e30;
    uint128 private constant MAX = 340282366920938463463374607431768211455;

    // Array of position ranges managed, index 0 is the default range
    Range[] private ranges;

    // tick lower => tick upper => tokenId
    mapping(int24 => mapping(int24 => uint256)) public tokenIdByRange;

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

    // Pool Data
    IUniswapV3Pool private pool;

    IERC20 public override token0;
    IERC20 public override token1;

    IBlastRebasing private constant USDB = IBlastRebasing(0x4300000000000000000000000000000000000003);
    IBlastRebasing private constant WETH = IBlastRebasing(0x4300000000000000000000000000000000000004);
    IBlast private constant BLAST_YIELD_CONTRACT = IBlast(0x4300000000000000000000000000000000000002);
    IBlastPoints private constant BLAST_POINTS = IBlastPoints(0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800);

    INonfungiblePositionManager constant nftPositionManager =
        INonfungiblePositionManager(0x434575EaEa081b735C985FA9bf63CD7b87e227F9);

    INfpBooster constant booster = INfpBooster(0xAd21b2055974075Ab3E126AC5bF8d7Ee3Fcd848a);

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
        __AccessControl_init();
        _setupRole(GOVERNOR, msg.sender);

        _setRoleAdmin(GOVERNOR, GOVERNOR);
        _setRoleAdmin(OPERATOR, GOVERNOR);
        _setRoleAdmin(KEEPER, GOVERNOR);

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

        token0.safeIncreaseAllowance(_receiver, MAX);
        token1.safeIncreaseAllowance(_receiver, MAX);
        token0.safeIncreaseAllowance(_swapper, MAX);
        token1.safeIncreaseAllowance(_swapper, MAX);
        token0.safeIncreaseAllowance(address(nftPositionManager), MAX);
        token1.safeIncreaseAllowance(address(nftPositionManager), MAX);

        USDB.configure(YieldMode.CLAIMABLE);
        WETH.configure(YieldMode.CLAIMABLE);
        BLAST_YIELD_CONTRACT.configureClaimableGas();

        nftPositionManager.setApprovalForAll(address(booster), true);
    }

    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data)
        external
        returns (bytes4)
    {
        return IERC721Receiver.onERC721Received.selector;
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

                    amount0 = amount0 + position0;
                    amount1 = amount1 + position1;
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

                    amount0 = amount0 + position0;
                    amount1 = amount1 + position1;
                }

                // Collect fees
                uint256 tokenId = tokenIdByRange[_ranges[i].tickLower][_ranges[i].tickUpper];
                uint256 rewards0;
                uint256 rewards1;

                if (tokenId != 0) {
                    (rewards0, rewards1) = booster.collect(
                        INonfungiblePositionManagerStruct.CollectParams({
                            tokenId: tokenId,
                            recipient: thisAddress,
                            amount0Max: MAX,
                            amount1Max: MAX
                        })
                    );
                }

                totalRewards0 = totalRewards0 + rewards0;
                totalRewards1 = totalRewards1 + rewards1;

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
        Range memory range = ranges[_index];

        return _mintLiquidity(_user, range.tickLower, range.tickUpper, _amount0, _amount1);
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
            (uint128 liquidity,,) = lpPosition(_ranges[0].tickLower, _ranges[0].tickUpper);
            uint128 liquidityToRemove = uint128(uint256(liquidity).mulDivDown(_position, totalSupply()));

            uint256 amount0Received;
            uint256 amount1Received;

            if (liquidityToRemove > 0) {
                (amount0Received, amount1Received) =
                    _burnLiquidity(_ranges[0].tickLower, _ranges[0].tickUpper, liquidityToRemove);

                amount0 = amount0 + amount0Received;
                amount1 = amount1 + amount1Received;
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
        (amount0, amount1) = _burnLiquidity(range.tickLower, range.tickUpper, _liquidity);

        address _receiver = incentiveReceiver;

        if (_notional && _receiver != address(0)) {
            token0.safeTransfer(_receiver, amount0);
            token1.safeTransfer(_receiver, amount1);
            emit Retention(_receiver, amount0, amount1, amount0, amount1, "NOTIONAL");
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

        address thisAddress = address(this);

        uint256 length = _existingRanges.length;

        if (length > 0) {
            for (uint256 i; i < length;) {
                if (_existingRanges[i].burn) {
                    Range memory range = ranges[_existingRanges[i].index];
                    // burn liquidity from existing range
                    _burnLiquidity(range.tickLower, range.tickUpper, _existingRanges[i].liquidityToBurn);
                }

                ++i;
            }
        }

        // Swap if it is needed
        if (_swap.externalData.length != 0 || _swap.amountIn != 0) {
            swapper.swap(_swap.tokenIn, _swap.amountIn, _swap.tokenOut, _swap.minAmountOut, _swap.externalData);
        }

        // redeploy existing ranges
        if (length > 0) {
            for (uint256 i; i < length;) {
                Range memory range = ranges[_existingRanges[i].index];
                require(!alreadyRebalance[block.number][range.tickLower][range.tickUpper], "Already Rebalanced");

                if (_existingRanges[i].amount0 > 0 || _existingRanges[i].amount1 > 0) {
                    // mint liquidity
                    _mintLiquidity(
                        thisAddress,
                        range.tickLower,
                        range.tickUpper,
                        _existingRanges[i].amount0,
                        _existingRanges[i].amount1
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

                if (_newRange[i].amount0 > 0 || _newRange[i].amount1 > 0) {
                    // Mint liquidity
                    _mintLiquidity(
                        thisAddress,
                        _newRange[i].tickLower,
                        _newRange[i].tickUpper,
                        _newRange[i].amount0,
                        _newRange[i].amount1
                    );
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
        uint256 tokenId = tokenIdByRange[tickLower][tickUpper];
        if (tokenId > 0) {
            (,,,,,,, liquidity,,, rewards0, rewards1) = nftPositionManager.positions(tokenId);
        }
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
    /*                                 PRIVATE                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Mints liquidity from V3 Pool
     * @param _tickLower Lower Tick Range
     * @param _tickUpper Upper Tick Range
     * @param _amount0 Amount of token0
     * @param _amount1 Amount of token1
     * @return amount0 Amount of token0 deployed to the pool
     * @return amount1 Amount of token1 deployed to the pool
     */
    function _mintLiquidity(address _user, int24 _tickLower, int24 _tickUpper, uint256 _amount0, uint256 _amount1)
        private
        returns (uint256 amount0, uint256 amount1)
    {
        uint128 liquidity =
            UniLiquidityLib.liquidityForAmounts(address(pool), _tickLower, _tickUpper, _amount0, _amount1);

        if (liquidity > 0) {
            address thisAddress = address(this);

            if (_user != thisAddress) {
                token1.safeTransferFrom(_user, thisAddress, _amount1);
                token0.safeTransferFrom(_user, thisAddress, _amount0);
            }

            uint256 tokenId = tokenIdByRange[_tickLower][_tickUpper];

            if (tokenId == 0) {
                (tokenId,, amount0, amount1) = nftPositionManager.mint(
                    INonfungiblePositionManager.MintParams({
                        token0: address(token0),
                        token1: address(token1),
                        fee: pool.fee(),
                        tickLower: _tickLower,
                        tickUpper: _tickUpper,
                        amount0Desired: _amount0,
                        amount1Desired: _amount1,
                        amount0Min: 0,
                        amount1Min: 0,
                        recipient: thisAddress,
                        deadline: MAX
                    })
                );

                tokenIdByRange[_tickLower][_tickUpper] = tokenId;

                booster.deposit(tokenId);
            } else {
                booster.withdraw(tokenId, thisAddress);

                (, amount0, amount1) = nftPositionManager.increaseLiquidity(
                    INonfungiblePositionManager.IncreaseLiquidityParams({
                        tokenId: tokenId,
                        amount0Desired: _amount0,
                        amount1Desired: _amount1,
                        amount0Min: 0,
                        amount1Min: 0,
                        deadline: MAX
                    })
                );

                booster.deposit(tokenId);
            }
        }
    }

    /**
     * @notice Burns all liquidity in the given range.
     * @param _tickLower Lower Tick.
     * @param _tickUpper Upper Tick.
     * @param _liquidity Amount of liquidity to be burned.
     * @return amount0 Amount of token0 redeemed.
     * @return amount1 Amount of token1 redeemed.
     */
    function _burnLiquidity(int24 _tickLower, int24 _tickUpper, uint128 _liquidity)
        private
        returns (uint256 amount0, uint256 amount1)
    {
        bytes[] memory calls = new bytes[](2);

        uint256 tokenId = tokenIdByRange[_tickLower][_tickUpper];

        address thisAddress = address(this);

        uint256 amount0Before = token0.balanceOf(thisAddress);
        uint256 amount1Before = token1.balanceOf(thisAddress);

        booster.withdraw(tokenId, thisAddress);

        calls[0] = abi.encodeWithSelector(
            INonfungiblePositionManager.decreaseLiquidity.selector,
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: _liquidity,
                amount0Min: 0,
                amount1Min: 0,
                deadline: MAX
            })
        );

        calls[1] = abi.encodeWithSelector(
            INonfungiblePositionManager.collect.selector,
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: thisAddress,
                amount0Max: MAX,
                amount1Max: MAX
            })
        );

        nftPositionManager.multicall(calls);

        amount0 = token0.balanceOf(thisAddress) - amount0Before;
        amount1 = token1.balanceOf(thisAddress) - amount1Before;

        (uint128 liq,,) = lpPosition(_tickLower, _tickUpper);

        if (liq > 0) {
            booster.deposit(tokenId);
        } else {
            tokenIdByRange[_tickLower][_tickUpper] = 0;
        }
    }

    function _applyRetention(uint256 amount0, uint256 amount1, uint256 rate, string memory typeOf)
        private
        returns (uint256 amount0AfterRetention, uint256 amount1AfterRetention)
    {
        address _receiver = incentiveReceiver;

        amount0AfterRetention = amount0;
        amount1AfterRetention = amount1;

        if (_receiver != address(0) && rate > 0) {
            if (amount0 > 0) {
                amount0 = amount0.mulDivDown(rate, PRECISION);
                token0.safeTransfer(_receiver, amount0);
                amount0AfterRetention = amount0AfterRetention - amount0;
            }

            if (amount1 > 0) {
                amount1 = amount1.mulDivDown(rate, PRECISION);
                token1.safeTransfer(_receiver, amount1);
                amount1AfterRetention = amount1AfterRetention - amount1;
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
    function toggleWithdrawalRate() external override {
        require(hasRole(GOVERNOR, msg.sender) || hasRole(OPERATOR, msg.sender), "Invalid Caller");
        chargeWithdrawalRate = !chargeWithdrawalRate;
    }

    /**
     * @notice Set arbitrary approval, remember to do gov approvals before and after
     * @param _token token address
     * @param _spender spender address
     * @param _amount token amount
     */
    function govApproval(address _token, address _spender, uint256 _amount) external onlyGovernor {
        IERC20(_token).approve(_spender, _amount);
    }

    /**
     * @notice Set Incentives
     * @param _gaugeReceiver Harvest receiver address.
     * @param _incentiveReceiver Incentives receiver address.
     * @param _yieldRate New yield rate.
     * @param _withdrawalRate New withdraw Rate.
     */
    function setIncentives(
        address _gaugeReceiver,
        address _incentiveReceiver,
        uint256 _yieldRate,
        uint256 _withdrawalRate
    ) external override {
        require(hasRole(GOVERNOR, msg.sender) || hasRole(KEEPER, msg.sender), "Invalid Caller");
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

    /**
     * @notice Modifier if msg.sender has not Governor role revert.
     */
    modifier onlyGovernor() {
        require(hasRole(GOVERNOR, msg.sender), "Caller Not Gov");
        _;
    }

    modifier onlyOperator() {
        require(hasRole(OPERATOR, msg.sender), "Caller Not Operator");

        _;
    }

    modifier onlyKeeper() {
        require(hasRole(KEEPER, msg.sender), "Caller Not keeper");

        _;
    }

    /**
     * @notice Update Governor Role
     */
    function updateGovernor(address _newGovernor) external virtual onlyGovernor {
        renounceRole(GOVERNOR, msg.sender);
        _setupRole(GOVERNOR, _newGovernor);
    }

    function addOperator(address _newOperator) external onlyGovernor {
        grantRole(OPERATOR, _newOperator);
    }

    function removeOperator(address _operator) external onlyGovernor {
        revokeRole(OPERATOR, _operator);
    }

    function addKeeper(address _newKeeper) external onlyGovernor {
        grantRole(KEEPER, _newKeeper);
    }

    function removeKeeper(address _operator) external onlyGovernor {
        revokeRole(KEEPER, _operator);
    }
}
