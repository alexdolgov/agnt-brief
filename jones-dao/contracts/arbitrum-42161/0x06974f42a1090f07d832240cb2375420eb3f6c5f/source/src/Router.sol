// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {MulDivMathLib} from "src/libraries/MulDivMathLib.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";

import {SafeMath} from "@openzeppelin/math/SafeMath.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin-upgrades/utils/ReentrancyGuardUpgradeable.sol";
import {UpgradeableOperableKeepable} from "src/governance/UpgradeableOperableKeepable.sol";
import {IRouter} from "src/interfaces/IRouter.sol";
import {ICompounder} from "src/interfaces/rewards/ICompounder.sol";
import {IRewardTracker} from "src/interfaces/rewards/IRewardTracker.sol";
import {ISingleRewardTracker} from "src/interfaces/rewards/ISingleRewardTracker.sol";
import {IPriceHelper} from "src/interfaces/swap/IPriceHelper.sol";

import {IManager} from "src/interfaces/manager/IManager.sol";

import {IBlast} from "src/interfaces/IBlast.sol";

// UniV3 LP Router Manager
contract Router is IRouter, UpgradeableOperableKeepable, ReentrancyGuardUpgradeable {
    using SafeMath for uint256;
    using MulDivMathLib for uint256;
    using SafeERC20 for IERC20;

    // Deposit Stack too deep
    struct Variables {
        IERC20 managerToken;
        IManager manager;
        uint256 price0;
        uint256 price1;
        uint256 position0;
        uint256 position1;
    }

    bool private _paused;

    uint256[49] private __gap;
    
    // LP Manager Contract
    IManager private manager;
    // Compounder
    ICompounder private compounder;
    // Double Tracker
    IRewardTracker private tracker;
    // Single Zero Tracker
    ISingleRewardTracker private trackerZero;
    // Single One Tracker
    ISingleRewardTracker private trackerOne;
    // Price Helper Contract
    IPriceHelper public override price;

    // user => block number => exit orders
    mapping(address => mapping(uint256 => ExitOrder)) public exitOrder;

    uint256 private deviation;

    uint256 private constant PRECISION = 1e30;

    IBlast private constant BLAST_YIELD_CONTRACT = IBlast(0x4300000000000000000000000000000000000002);

    uint256 private constant blastID = 81457;

    function initializeRouter(
        address _manager,
        address _price,
        address _compounder,
        address _tracker,
        address _trackerZero,
        address _trackerOne
    ) external initializer {
        __Governable_init(msg.sender);
        __ReentrancyGuard_init();

        manager = IManager(_manager);
        price = IPriceHelper(_price);
        compounder = ICompounder(_compounder);
        tracker = IRewardTracker(_tracker);
        trackerZero = ISingleRewardTracker(_trackerZero);
        trackerOne = ISingleRewardTracker(_trackerOne);

        deviation = PRECISION.mulDivDown(5, 1000); // 0.5%

        IERC20(address(manager)).safeApprove(_compounder, type(uint256).max);

        uint256 chainId;
        assembly {
            chainId := chainid()
        }

        if (chainId == blastID) {
            BLAST_YIELD_CONTRACT.configureClaimableGas();
        }
    }

    /**
     * @notice Adds liquidity to the primary range
     * @param _deposit Deposit Input parameters
     * @return amount0 Amount of token0 deployed
     * @return amount1 Amount of token1 deployed
     * @return position Nimber of position token minted
     * @return shares Number of shares minted
     */
    function deposit(DepositInput calldata _deposit)
        external
        override
        nonReentrant
        whenNotPaused
        returns (uint256 amount0, uint256 amount1, uint256 position, uint256 shares)
    {
        require(_deposit.receiver != address(0), "Zero Address");
        require(_deposit.amount0 != 0 || _deposit.amount1 != 0, "Not Enough Amount");

        // Stack too deep
        Variables memory vars;

        // to save gas
        vars.manager = manager;
        vars.managerToken = IERC20(address(manager));

        // Check flash loan protection and get token prices in USD; 18 decimals
        (vars.price0, vars.price1) = price.getPrices(vars.manager.getPool());

        // Get Current Assets Under Management
        (vars.position0, vars.position1) = vars.manager.aum();

        if (_deposit.amount0 > 0 && _deposit.amount1 > 0) {
            // mint liquidty in default range
            (amount0, amount1) = vars.manager.mintLiquidity(msg.sender, 0, _deposit.amount0, _deposit.amount1);
        } else {
            amount0 = _deposit.amount0;
            amount1 = _deposit.amount1;

            // Transfer assets to manager
            vars.manager.transferAssets(msg.sender, _deposit.amount0, _deposit.amount1);
        }

        // Calculate position
        position = previewPosition(vars.price0, vars.price1, amount0, amount1, vars.position0, vars.position1);

        // Check Minimun
        require(
            amount0 >= _deposit.amount0Min && amount1 >= _deposit.amount1Min && position >= _deposit.minPosition,
            "Not Enough Amount"
        );

        vars.manager.mint(address(this), position);

        if (_deposit.compound) {
            // compound
            // Deposit position in compounder
            shares = compounder.deposit(position, _deposit.receiver);
            require(shares >= _deposit.minShares, "Not Enough Shares");
        } else {
            // Stake position in Tracker
            if (_deposit.rewardOption == 0) {
                vars.managerToken.safeTransfer(address(tracker), position);
                tracker.stake(_deposit.receiver, position);
            } else if (_deposit.rewardOption == 1) {
                vars.managerToken.safeTransfer(address(trackerZero), position);
                trackerZero.stake(_deposit.receiver, position);
            } else {
                vars.managerToken.safeTransfer(address(trackerOne), position);
                trackerOne.stake(_deposit.receiver, position);
            }

            emit Transfer(address(0), _deposit.receiver, position);
        }

        emit Deposit(msg.sender, _deposit.receiver, amount0, amount1, position, shares, _deposit.rewardOption);
    }

    /**
     * @notice Remove liquidty from primary range; shares are burnt.
     * @param _position Amount to shares to burn.
     * @param _receiver Who will receive the assets.
     * @param _amount0Min Minimum amount of token0 to be redeemed.
     * @param _amount1Min Minimum amount of token1 to be redeemed.
     * @param _compound True if user choose autocompounding shares.
     * @param _rewardOption Type of reward.
     * @return amount0 Amount of token0 redeemed.
     * @return amount1 Amount of token1 redeemed.
     */
    function withdraw(
        uint256 _position,
        address _receiver,
        uint256 _amount0Min,
        uint256 _amount1Min,
        bool _compound,
        uint8 _rewardOption
    ) external override nonReentrant whenNotPaused returns (uint256 amount0, uint256 amount1) {
        require(_position > 0, "Zero Withdraw");
        require(_receiver != address(0), "Zero Address");

        // to save gas
        IManager _manager = manager;

        // Update rewards
        _manager.aum();

        uint256 _shares;

        if (_compound) {
            require(compounder.balanceOf(msg.sender) >= _position, "Not Enough Amount");
            _shares = _position;
            _position = compounder.redeem(_shares, msg.sender);
        } else {
            if (_rewardOption == 0) {
                require(tracker.stakedAmount(msg.sender) >= _position, "Not Enough Amount");
                tracker.withdraw(msg.sender, _position);
            } else if (_rewardOption == 1) {
                require(trackerZero.stakedAmount(msg.sender) >= _position, "Not Enough Amount");
                trackerZero.withdraw(msg.sender, _position);
            } else {
                require(trackerOne.stakedAmount(msg.sender) >= _position, "Not Enough Amount");
                trackerOne.withdraw(msg.sender, _position);
            }

            emit Transfer(msg.sender, address(0), _position);
        }

        uint256 amount0AfterRetention;
        uint256 amount1AfterRetention;

        // Burn liquidity; amounts will send to receiver
        (amount0, amount1, amount0AfterRetention, amount1AfterRetention) =
            _manager.redeemLiquidity(_position, _receiver);

        // Check min Amount
        require(amount0AfterRetention >= _amount0Min && amount1AfterRetention >= _amount1Min, "Not Enough Amount");

        // Burn Position
        _manager.burn(address(this), _position);

        emit Withdraw(
            msg.sender,
            _receiver,
            _shares,
            _position,
            amount0,
            amount1,
            amount0AfterRetention,
            amount1AfterRetention,
            _rewardOption
        );

        amount0 = amount0AfterRetention;
        amount1 = amount1AfterRetention;
    }

    /**
     * @notice Adds liquidity to the primary range
     * @param _amount0 Amount of token0
     * @param _amount1 Amount of token1
     */
    function compoundDeposit(uint256 _amount0, uint256 _amount1) external override onlyOperator whenNotPaused {
        // to save gas
        IManager _manager = manager;

        // Check flash loan protection and get token prices in USD; 18 decimals
        (uint256 price0, uint256 price1) = price.getPrices(_manager.getPool());

        // Get Current Assets Under Management
        (uint256 position0, uint256 position1) = _manager.aumWithoutCollect();

        // Transfer assets to manager
        _manager.transferAssets(msg.sender, _amount0, _amount1);

        // Calculate position
        uint256 _position = previewPosition(price0, price1, _amount0, _amount1, position0, position1);

        // Stake position in Reward
        _manager.mint(address(tracker), _position);
        tracker.stake(address(compounder), _position);

        emit CompoundDeposit(msg.sender, _amount0, _amount1, _position);
    }

    /**
     * @notice Claim Rewards.
     * @param _receiver Who will receive the rewards.
     * @param _rewardOption Type of reward.
     * @return The amount of rewards in token0
     * @return The amount of rewards in token1
     */
    function claim(address _receiver, uint8 _rewardOption)
        external
        override
        nonReentrant
        whenNotPaused
        returns (uint256, uint256)
    {
        // to save gas
        IManager _manager = manager;

        // Update rewards
        _manager.aum();

        // compound
        compounder.compound();

        uint256 rewards0;
        uint256 rewards1;

        if (_rewardOption == 0) {
            (rewards0, rewards1) = tracker.claim(msg.sender);
        } else if (_rewardOption == 1) {
            rewards0 = trackerZero.claim(msg.sender);
        } else {
            rewards1 = trackerOne.claim(msg.sender);
        }

        if (rewards0 > 0) {
            _manager.token0().safeTransfer(_receiver, rewards0);
        }

        if (rewards1 > 0) {
            _manager.token1().safeTransfer(_receiver, rewards1);
        }

        emit Claim(msg.sender, rewards0, rewards1, _receiver, _rewardOption);

        return (rewards0, rewards1);
    }

    /**
     * @notice Compound position.
     * @param _amount Amount willing to be compounded.
     * @param _rewardOption Type of reward.
     * @return LP shares minted to user.
     */
    function compound(uint256 _amount, uint8 _rewardOption) external nonReentrant whenNotPaused returns (uint256) {
        // to save gas
        IManager _manager = manager;

        // Update rewards
        _manager.aum();

        uint256 rewards0;
        uint256 rewards1;

        if (_rewardOption == 0) {
            require(_amount <= tracker.stakedAmount(msg.sender), "Not Enough Amount");
            (rewards0, rewards1) = tracker.claim(msg.sender);
            // withdraw user staked UVRT
            tracker.withdraw(msg.sender, _amount);
        } else if (_rewardOption == 1) {
            require(_amount <= trackerZero.stakedAmount(msg.sender), "Not Enough Amount");
            rewards0 = trackerZero.claim(msg.sender);
            // withdraw user staked UVRT
            trackerZero.withdraw(msg.sender, _amount);
        } else {
            require(_amount <= trackerOne.stakedAmount(msg.sender), "Not Enough Amount");
            rewards1 = trackerOne.claim(msg.sender);
            // withdraw user staked UVRT
            trackerOne.withdraw(msg.sender, _amount);
        }

        if (rewards0 > 0) {
            _manager.token0().safeTransfer(msg.sender, rewards0);
        }

        if (rewards1 > 0) {
            _manager.token1().safeTransfer(msg.sender, rewards1);
        }

        // deposit in compounder
        uint256 shares = compounder.deposit(_amount, msg.sender);

        emit Transfer(msg.sender, address(0), _amount);
        emit Compound(msg.sender, _amount, shares, _rewardOption);

        return shares;
    }

    /**
     * @notice Un Compound position.
     * @param _shares Shares willing to be un compounded.
     * @param _rewardOption Type of reward.
     * @return Amount position staked.
     */
    function unCompound(uint256 _shares, uint8 _rewardOption) external nonReentrant whenNotPaused returns (uint256) {
        // Update rewards
        manager.aum();

        // redeem jLP
        uint256 position = compounder.redeem(_shares, msg.sender);
        IERC20 managerToken = IERC20(address(manager));

        if (_rewardOption == 0) {
            // Stake position in Reward
            managerToken.safeTransfer(address(tracker), position);
            tracker.stake(msg.sender, position);
        } else if (_rewardOption == 1) {
            // Stake position in Reward
            managerToken.safeTransfer(address(trackerZero), position);
            trackerZero.stake(msg.sender, position);
        } else {
            // Stake position in Reward
            managerToken.safeTransfer(address(trackerOne), position);
            trackerOne.stake(msg.sender, position);
        }

        emit Transfer(address(0), msg.sender, position);
        emit UnCompound(msg.sender, _shares, position, _rewardOption);

        return position;
    }

    /**
     * @notice Create exit order at specific price0.
     * @param _receiver Who will receive the withdraw amounts.
     * @param _amount Amount to withdraw.
     * @param _price price0 Will trigger the withdraw.
     * @param _compound True if user choose autocompounding shares.
     * @param _rewardOption Type of reward.
     * @return blockNumber
     */
    function createExitOrder(address _receiver, uint256 _amount, uint256 _price, bool _compound, uint8 _rewardOption)
        external
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        require(_amount > 0, "Amount Zero");

        // Update rewards
        manager.aum();

        // compound
        compounder.compound();

        if (_compound) {
            require(compounder.balanceOf(msg.sender) >= _amount, "Insufficient Shares");
        } else {
            if (_rewardOption == 0) {
                require(tracker.stakedAmount(msg.sender) >= _amount, "Insufficient Position");
            } else if (_rewardOption == 1) {
                require(trackerZero.stakedAmount(msg.sender) >= _amount, "Insufficient Position");
            } else {
                require(trackerOne.stakedAmount(msg.sender) >= _amount, "Insufficient Position");
            }
        }

        uint256 blockNumber = block.number;

        ExitOrder memory order = ExitOrder({
            receiver: _receiver,
            blockNumber: blockNumber,
            amount: _amount,
            price: _price,
            compound: _compound,
            rewardOption: _rewardOption,
            stage: 1
        });

        exitOrder[msg.sender][blockNumber] = order;

        emit NewExitOrder(msg.sender, order);

        return blockNumber;
    }

    /**
     * @notice Remove exit order.
     * @param _blockNumber Block number when the order was created
     */
    function removeOrder(uint256 _blockNumber) external nonReentrant whenNotPaused {
        // Update rewards
        manager.aum();

        // compound
        compounder.compound();

        ExitOrder storage order = exitOrder[msg.sender][_blockNumber];
        order.stage = 3;
        emit UpdateOrder(msg.sender, _blockNumber, order);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   KEEPER                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Claims gas spent and sends to treasury address
     */
    function claimGas() external onlyKeeper {
        BLAST_YIELD_CONTRACT.claimMaxGas(address(this), msg.sender);
    }

    /**
     * @notice Execute Orders in Batch. Only one order
     * @notice To remove delegator just set it to address(0)
     */
    function executeOrders(ExecuteOrder[] calldata _orders) external onlyKeeper {
        uint256 length = _orders.length;

        // to save gas
        IManager _manager = manager;

        // Check flash loan protection and get token prices in USD; 18 decimals
        (uint256 price0,) = price.getPrices(_manager.getPool());

        // Update rewards
        _manager.aum();

        // compound
        compounder.compound();

        for (uint256 i; i < length;) {
            uint256 executeLength = _orders[i].blockNumbers.length;
            for (uint256 j; j < executeLength;) {
                ExitOrder storage userOrder = exitOrder[_orders[i].user][_orders[i].blockNumbers[j]];
                uint256 newStage = _executeOrder(_manager, price0, _orders[i], userOrder, j);
                userOrder.stage = newStage;
                emit UpdateOrder(_orders[i].user, _orders[i].blockNumbers[j], userOrder);

                ++j;
            }
            ++i;
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                    VIEW                                    */
    /* -------------------------------------------------------------------------- */
    function previewPosition(
        uint256 price0,
        uint256 price1,
        uint256 amountIn0,
        uint256 amountIn1,
        uint256 position0,
        uint256 position1
    ) public view override returns (uint256) {
        // 18 decimals
        uint256 supply = manager.totalSupply();

        // normalize decimals; 18
        amountIn0 = price.normalise(address(manager.token0()), amountIn0);
        amountIn1 = price.normalise(address(manager.token1()), amountIn1);
        position0 = price.normalise(address(manager.token0()), position0);
        position1 = price.normalise(address(manager.token1()), position1);
        // 36 decimals
        uint256 usdIn = price0.mul(amountIn0).add(price1.mul(amountIn1));

        if (supply != 0) {
            // (36 + 18) - (18 + 18)
            return usdIn.mulDivDown(supply, price0.mul(position0).add(price1.mul(position1))); // 18 decimals
        } else {
            return usdIn.div(1e18); // 18 decimals
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                   GOVERNOR                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Update Internal Contracts.
     */
    function updateInternalContracts(
        address _manager,
        address _price,
        address _compounder,
        address _tracker,
        address _trackerZero,
        address _trackerOne
    ) external onlyGovernor {
        IERC20(address(manager)).safeApprove(address(compounder), 0);

        manager = IManager(_manager);
        price = IPriceHelper(_price);
        compounder = ICompounder(_compounder);
        tracker = IRewardTracker(_tracker);
        trackerZero = ISingleRewardTracker(_trackerZero);
        trackerOne = ISingleRewardTracker(_trackerOne);

        IERC20(address(manager)).safeApprove(_compounder, type(uint256).max);
    }

    /**
     * @notice Set Deviation parameter
     * @param _deviation deviation amount
     */
    function updateDeviation(uint256 _deviation) external onlyGovernor {
        deviation = _deviation;
    }

    function updatePaused(bool _shouldPause) external onlyGovernor {
        _paused = _shouldPause;
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

    /* -------------------------------------------------------------------------- */
    /*                                   PRIVATE                                  */
    /* -------------------------------------------------------------------------- */

    function _executeOrder(
        IManager _manager,
        uint256 _price0,
        ExecuteOrder memory _execOrder,
        ExitOrder memory _order,
        uint256 index
    ) private returns (uint256) {
        uint256 diff;

        if (_price0 > _order.price) {
            diff = _price0.sub(_order.price).mulDivDown(PRECISION, _price0.add(_order.price).div(2));
        } else {
            diff = _order.price.sub(_price0).mulDivDown(PRECISION, _price0.add(_order.price).div(2));
        }

        if (diff > deviation || _order.stage != 1) {
            return _order.stage; // Do nothing stage created
        }

        uint256 _shares;
        uint256 _position;

        if (_order.compound) {
            if (compounder.balanceOf(_execOrder.user) < _order.amount) {
                return 3; // Remove stage (User spend his amount)
            }
            _shares = _order.amount;
            _position = compounder.redeem(_shares, _execOrder.user);
        } else {
            if (_order.rewardOption == 0) {
                if (tracker.stakedAmount(_execOrder.user) < _order.amount) {
                    return 3; // Remove stage (User spend his amount)
                }
                _position = _order.amount;
                tracker.withdraw(_execOrder.user, _position);
            } else if (_order.rewardOption == 1) {
                if (trackerZero.stakedAmount(_execOrder.user) < _order.amount) {
                    return 3; // Remove stage (User spend his amount)
                }
                _position = _order.amount;
                trackerZero.withdraw(_execOrder.user, _position);
            } else {
                if (trackerOne.stakedAmount(_execOrder.user) < _order.amount) {
                    return 3; // Remove stage (User spend his amount)
                }
                _position = _order.amount;
                trackerOne.withdraw(_execOrder.user, _position);
            }

            emit Transfer(_execOrder.user, address(0), _position);
        }

        // Burn liquidity; amounts will send to receiver
        (uint256 amount0, uint256 amount1, uint256 amount0AfterRetention, uint256 amount1AfterRetention) =
            _manager.redeemLiquidity(_position, _order.receiver);

        // Check min Amount
        require(amount0 >= _execOrder.minAmount0[index] && amount1 >= _execOrder.minAmount1[index], "Not Enough Amount");

        // Burn Position
        _manager.burn(address(this), _position);

        emit OrderExecuted(
            _execOrder.user,
            _order.blockNumber,
            _price0,
            _position,
            _shares,
            amount0AfterRetention,
            amount1AfterRetention
        );
        return 2; // Executed stage
    }

    modifier whenNotPaused() {
        require(!_paused, "P");
        _;
    }
}
