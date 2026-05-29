// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {MulDivMathLib} from "src/libraries/MulDivMathLib.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";
import {VeloLiquidityLib} from "src/libraries/velo/VeloLiquidityLib.sol";
import {ERC20Upgradeable} from "src/token/ERC20Upgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-upgrades/access/AccessControlUpgradeable.sol";
import {IManager} from "src/interfaces/manager/IManager.sol";
import {IRewardReceiver} from "src/interfaces/rewards/IRewardReceiver.sol";
import {IPriceHelper} from "src/interfaces/swap/IPriceHelper.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";
import {INonfungiblePositionManager} from "src/interfaces/pool/velo/INonfungiblePositionManager.sol";
import {ICLPool} from "src/interfaces/pool/velo/ICLPool.sol";
import {ICLGauge} from "src/interfaces/pool/velo/ICLGauge.sol";

contract VeloLPManager is IManager, AccessControlUpgradeable, ERC20Upgradeable {
    using MulDivMathLib for uint256;
    using SafeERC20 for IERC20;

    // Data received in the callback
    struct MintCallbackData {
        address user;
        address manager;
    }

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

    // Only allow one mint at a time to avoid bad total asset accounting
    bool private mintCalled;

    // Pool Data
    ICLPool public pool;
    IERC20 public override token0;
    IERC20 public override token1;

    address private gaugeReceiver;

    event Retention(address indexed token, uint256 amountAfterRetention, uint256 retention, string typeOf);

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

        pool = ICLPool(_pool);
        token0 = IERC20(pool.token0());
        token1 = IERC20(pool.token1());

        incentiveReceiver = _incentiveReceiver;
        yieldRate = _yieldRate;
        withdrawalRate = _withdrawalRate;

        VeloLiquidityLib.checkRange(defaultLower, defaultUpper, _pool);

        ranges.push(Range({tickLower: defaultLower, tickUpper: defaultUpper}));

        token0.safeApprove(_receiver, MAX);
        token1.safeApprove(_receiver, MAX);
        token0.safeApprove(_swapper, MAX);
        token1.safeApprove(_swapper, MAX);
    }

    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data)
        external
        returns (bytes4)
    {
        require(msg.sender == pool.nft(), "Not Right Caller");
        return 0x150b7a02;
    }

    /**
     * @notice Assets Under Management, without collect rewards.
     * @return amount0 Total AUM of token0.
     * @return amount1 Total AUM of token1.
     */
    function aumWithoutCollect() external view override returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = _aum();
    }

    /**
     * @notice Assets Under Management
     * @return amount0 Total AUM of token0.
     * @return amount1 Total AUM of token1.
     */
    function aum() public override returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = _aum();
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
            (uint128 liquidity,,) = lpPosition(_ranges[i].tickLower, _ranges[i].tickUpper);
            uint128 liquidityToRemove = uint128(uint256(liquidity).mulDivDown(_position, supply));

            uint256 amount0Received;
            uint256 amount1Received;

            if (liquidityToRemove > 0) {
                (amount0Received, amount1Received) =
                    _burnLiquidity(_ranges[i].tickLower, _ranges[i].tickUpper, liquidityToRemove);

                amount0 = amount0 + amount0Received;
                amount1 = amount1 + amount1Received;
            }

            ++i;
        }

        amount0AfterRetention = amount0;
        amount1AfterRetention = amount1;

        address _incentiveReceiver = incentiveReceiver;

        if (chargeWithdrawalRate && _incentiveReceiver != address(0) && withdrawalRate > 0) {
            if (amount0 > 0) {
                amount0AfterRetention = amount0.mulDivDown(withdrawalRate, PRECISION);
                token0.safeTransfer(_incentiveReceiver, amount0AfterRetention);
                amount0AfterRetention = amount0 - amount0AfterRetention;
            }

            if (amount1 > 0) {
                amount1AfterRetention = amount1.mulDivDown(withdrawalRate, PRECISION);
                token1.safeTransfer(_incentiveReceiver, amount1AfterRetention);
                amount1AfterRetention = amount1 - amount1AfterRetention;
            }

            emit Retention(
                _incentiveReceiver, amount0AfterRetention, amount1AfterRetention, amount0, amount1, "WITHDRAW"
            );
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

                if (_newRange[i].amount0 > 0 || _newRange[i].amount1 > 0) {
                    // Mint liquidity
                    _mintLiquidity(address(this), ranges.length - 1, _newRange[i].amount0, _newRange[i].amount1);
                }

                ++i;
            }
            emit NewRangesRebalance(_newRange);
        }

        // tick range array can't change the same range
        VeloLiquidityLib.checkRanges(ranges, address(pool));
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
     * @notice Claim Incentives
     */
    function claim(uint256[] calldata tokenIds) external onlyKeeper returns (uint256 totalRewards) {
        uint256 length = tokenIds.length;

        ICLGauge gauge = ICLGauge(pool.gauge());

        for (uint256 i; i < length;) {
            gauge.getReward(tokenIds[i]);

            ++i;
        }

        IERC20 rewardToken = IERC20(gauge.rewardToken());

        totalRewards = rewardToken.balanceOf(address(this));

        if (incentiveReceiver != address(0) && yieldRate != 0) {
            uint256 retention = totalRewards.mulDivDown(yieldRate, PRECISION);

            rewardToken.transfer(incentiveReceiver, retention);

            totalRewards = totalRewards - retention;

            emit Retention(address(rewardToken), totalRewards, retention, "YIELD");
        }

        if (gaugeReceiver != address(0)) {
            rewardToken.transfer(gaugeReceiver, totalRewards);
        }
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

        if (tokenId != 0) {
            (,,,,,,, liquidity,,, rewards0, rewards1) = INonfungiblePositionManager(pool.nft()).positions(tokenId);
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

        address thisAddress = address(this);

        address nft = pool.nft();

        address gauge = pool.gauge();

        uint256 tokenId = tokenIdByRange[range.tickLower][range.tickUpper];

        if (_user != thisAddress) {
            token1.safeTransferFrom(_user, thisAddress, _amount1);
            token0.safeTransferFrom(_user, thisAddress, _amount0);
        }

        token1.approve(nft, _amount1);
        token0.approve(nft, _amount0);

        if (tokenId == 0) {
            (tokenId,, amount0, amount1) = INonfungiblePositionManager(nft).mint(
                INonfungiblePositionManager.MintParams({
                    token0: pool.token0(),
                    token1: pool.token1(),
                    tickSpacing: pool.tickSpacing(),
                    tickLower: range.tickLower,
                    tickUpper: range.tickUpper,
                    amount0Desired: _amount0,
                    amount1Desired: _amount1,
                    amount0Min: 0,
                    amount1Min: 0,
                    recipient: thisAddress,
                    deadline: MAX,
                    sqrtPriceX96: 0
                })
            );

            tokenIdByRange[range.tickLower][range.tickUpper] = tokenId;
        } else {
            ICLGauge(gauge).withdraw(tokenId);

            (, amount0, amount1) = INonfungiblePositionManager(nft).increaseLiquidity(
                INonfungiblePositionManager.IncreaseLiquidityParams({
                    tokenId: tokenId,
                    amount0Desired: _amount0,
                    amount1Desired: _amount1,
                    amount0Min: 0,
                    amount1Min: 0,
                    deadline: MAX
                })
            );
        }

        INonfungiblePositionManager(nft).approve(gauge, tokenId);

        ICLGauge(gauge).deposit(tokenId);
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

        ICLGauge gauge = ICLGauge(pool.gauge());

        INonfungiblePositionManager nft = INonfungiblePositionManager(pool.nft());

        gauge.withdraw(tokenId);

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

        nft.multicall(calls);

        amount0 = token0.balanceOf(thisAddress) - amount0Before;
        amount1 = token1.balanceOf(thisAddress) - amount1Before;

        (,,,,,,, uint128 liquidity,,,,) = nft.positions(tokenId);

        if (liquidity == 0) {
            nft.burn(tokenId);
            tokenIdByRange[_tickLower][_tickUpper] = 0;
        } else {
            nft.approve(address(gauge), tokenId);
            gauge.deposit(tokenId);
        }
    }

    function _aum() private view returns (uint256 amount0, uint256 amount1) {
        address thisAddress = address(this);
        // Current Balances
        amount0 = token0.balanceOf(thisAddress);
        amount1 = token1.balanceOf(thisAddress);

        Range[] memory _ranges = ranges;

        uint256 length = _ranges.length;

        // sum each range position
        for (uint256 i = 0; i < length;) {
            // Get LP position and pending rewards to be collected
            (uint128 liq,,) = lpPosition(_ranges[i].tickLower, _ranges[i].tickUpper);
            if (liq > 0) {
                // Calculate current positions
                (uint256 position0, uint256 position1) =
                    VeloLiquidityLib.amountsForLiquidity(address(pool), _ranges[i].tickLower, _ranges[i].tickUpper, liq);

                amount0 = amount0 + position0;
                amount1 = amount1 + position1;
            }

            ++i;
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                 GOVERNOR                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Toggle Withdrawal Rate
     */
    function toggleWithdrawalRate() external override {
        require(hasRole(GOVERNOR, msg.sender) || hasRole(OPERATOR, msg.sender), "Ivalid Caller");
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
     * @param _gaugeReceiver Harvest receiver address.
     * @param _incentiveReceiver New incentives receiber address.
     * @param _yieldRate New yield rate.
     * @param _withdrawalRate New withdraw Rate.
     */
    function setIncentives(
        address _gaugeReceiver,
        address _incentiveReceiver,
        uint256 _yieldRate,
        uint256 _withdrawalRate
    ) external {
        require(hasRole(GOVERNOR, msg.sender) || hasRole(KEEPER, msg.sender), "Ivalid Caller");
        gaugeReceiver = _gaugeReceiver;
        incentiveReceiver = _incentiveReceiver;
        yieldRate = _yieldRate;
        withdrawalRate = _withdrawalRate;
    }

    /**
     * @notice Emergency Transfer Asset
     * @param _to Who will receive the asset.
     * @param _asset token address.
     */
    function emergencyTransfer(address _to, address _asset) external onlyGovernor {
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
        _onlyGovernor();
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

        emit GovernorUpdated(msg.sender, _newGovernor);
    }

    function addOperator(address _newOperator) external onlyGovernor {
        grantRole(OPERATOR, _newOperator);

        emit OperatorAdded(_newOperator);
    }

    function removeOperator(address _operator) external onlyGovernor {
        revokeRole(OPERATOR, _operator);

        emit OperatorRemoved(_operator);
    }

    function addKeeper(address _newKeeper) external onlyGovernor {
        grantRole(KEEPER, _newKeeper);

        emit KeeperAdded(_newKeeper);
    }

    function removeKeeper(address _operator) external onlyGovernor {
        revokeRole(KEEPER, _operator);

        emit KeeperRemoved(_operator);
    }

    /**
     * @notice If msg.sender has not Governor role revert.
     */
    function _onlyGovernor() private view {
        require(hasRole(GOVERNOR, msg.sender), "Caller Not Gov");
    }

    event GovernorUpdated(address _oldGovernor, address _newGovernor);
    event OperatorAdded(address _newOperator);
    event OperatorRemoved(address _operator);
    event KeeperAdded(address _newKeeper);
    event KeeperRemoved(address _operator);
}
