// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {OwnableUpgradeable} from "openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";
import {IRebalance} from "src/interfaces/strategy/IRebalance.sol";
import {IExchangeRouter} from "src/interfaces/gmx/IExchangeRouter.sol";

import {ILeverageCallback} from "src/interfaces/leverage/ILeverageCallback.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";
import {IWithdrawalCallbackReceiver, Withdrawal, EventUtils} from "src/interfaces/gmx/IWithdrawalCallbackReceiver.sol";
import {IDepositCallbackReceiver, Deposit} from "src/interfaces/gmx/IDepositCallbackReceiver.sol";
import {IReader, Market, Price, MarketUtils} from "src/interfaces/gmx/IReader.sol";

import {IArbSys} from "src/interfaces/IArbSys.sol";

contract GMStrategy is IGMStrategy, IDepositCallbackReceiver, IWithdrawalCallbackReceiver, OwnableUpgradeable {
    using FixedPointMathLib for uint256;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    /// @notice Stack too Deep
    struct Info {
        uint8 length;
        address thisAddress;
        IExchangeRouter gmxRouter;
        address gmxDepositVault;
        address gmxWithdrawVault;
        IReader reader;
        Deposit.Props deposit;
        Withdrawal.Props withdraw;
        address[] paths;
        ITokenSwapper swapper;
        GMToken gm;
        uint256 totalSpend;
        uint256 amount;
        uint256 executionFee;
        uint256 vaultAmount;
        uint256 tokenAmount;
        uint256 totalUSDValue;
        uint256 longAmount;
        uint256 shortAmount;
        bytes32 key;
        bytes32 opHash;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    address public protocol;
    address public router;
    IRebalance public rebalance;
    ILeverageCallback public levStrategy;

    /// @notice Hash(arbsys.arbBlockNumber(), address user) => Data
    mapping(bytes32 => Data) public gmxData;

    /// @notice GMX Key => Hash(block.timestamp, address user)
    mapping(bytes32 => bytes32) public keys;

    /// @notice GM Token List
    mapping(uint8 => GMToken) private tokenList;

    /// @notice GM Token Address => place in the token list
    mapping(address => uint8) private tokenIndex;

    /// @notice Number of GM Tokens used in this strategy
    uint8 public numOfGMs;

    /// @notice Rebalance Stage
    /// @notice 1: Default Stage; No Rebalance.
    /// @notice 2: Start Withdrawal Stage.
    /// @notice 3: Withdrawal Finish.
    /// @notice 4: Start Purchase Stage.

    uint8 public rebalanceStage;

    uint256 public constant BASIS = 1e12;

    /// @notice GM Token => Amount in rebalance contract
    mapping(address => uint256) public rebalanceAmounts;

    address[] public rebalanceTokens;

    address public constant USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;

    bool public operationOnGoing;
    bool public compoundOnGoing;

    IArbSys private constant arbsys = IArbSys(0x0000000000000000000000000000000000000064);

    address public constant WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;

    address private constant _ARB = 0x912CE59144191C1204E64559FE8253a0e49E6548;

    address public rewardsReceiver;

    address public rewardsDistributor;

    /* -------------------------------------------------------------------------- */
    /*                                  INITIALIZE                                */
    /* -------------------------------------------------------------------------- */
    function initialize(address _router, GMToken[] memory _markets, address _rebalance, address _protocol)
        external
        initializer
    {
        __Ownable_init(msg.sender);

        uint8 length = uint8(_markets.length);

        protocol = _protocol;
        router = _router;
        rebalance = IRebalance(_rebalance);

        uint256 sumTargets;

        for (uint8 i; i < length;) {
            uint8 loop = i + 1;
            tokenList[loop] = _markets[i];

            tokenIndex[_markets[i].token] = loop;

            sumTargets = sumTargets + _markets[i].target;

            unchecked {
                ++i;
            }
        }

        if (sumTargets != BASIS) {
            revert InvalidTarget();
        }

        numOfGMs = length;
        rebalanceStage = 1;
    }

    /* -------------------------------------------------------------------------- */
    /*                                    VIEW                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Revert if there is an ongoing operation
     */
    function operationCheck() public view {
        if (operationOnGoing) {
            revert OngoingOperation();
        }
    }

    /**
     * @notice Get GM token
     * @param _index index of GM Token
     * @return Gm Token
     */
    function getTokenList(uint8 _index) external view returns (GMToken memory) {
        return tokenList[_index];
    }

    /**
     * @notice Get GM token
     * @param marketToken market token address
     * @return Gm Token
     */
    function getGMToken(address marketToken) external view returns (GMToken memory) {
        return tokenList[tokenIndex[marketToken]];
    }

    /* -------------------------------------------------------------------------- */
    /*                                 ONLY OPERATORS                             */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Deposit usdc to gmx v2 to get gm tokens based on their targets.
     * @param _receiver Who will receive the shares.
     * @param _amount Amount of USDC to been deposited.
     * @param _shares Shares that will be minted.
     * @param _data Signed Data.
     */
    function strategyDeposit(address _receiver, uint256 _amount, uint256 _shares, GMData[] memory _data)
        external
        payable
    {
        _onlyRouter();

        operationCheck();

        Info memory info;

        info.length = uint8(_data.length);
        info.thisAddress = address(this);
        info.opHash = keccak256(abi.encode(arbsys.arbBlockNumber(), _receiver));
        Data storage data = gmxData[info.opHash];
        data.user = _receiver;
        data.shares = _shares;
        data.callbackCounter = info.length;

        operationOnGoing = true;

        info.gmxRouter = rebalance.gmxRouter();
        info.gmxDepositVault = rebalance.gmxDepositVault();

        for (uint8 i; i < info.length;) {
            info.gm = tokenList[_data[i].gmTokenIndex];

            info.gmxRouter.sendWnt{value: _data[i].executionFee}(info.gmxDepositVault, _data[i].executionFee);

            if (i != info.length - 1) {
                info.amount = _amount.mulDivDown(_data[i].amount, BASIS);
            } else {
                info.amount = _amount - info.totalSpend;
            }

            IERC20(USDC).approve(address(info.gmxRouter.router()), info.amount);
            info.gmxRouter.sendTokens(USDC, info.gmxDepositVault, info.amount);

            info.key = info.gmxRouter.createDeposit(
                IExchangeRouter.CreateDepositParams({
                    receiver: info.thisAddress,
                    callbackContract: info.thisAddress,
                    uiFeeReceiver: address(0),
                    market: info.gm.token,
                    initialLongToken: info.gm.long,
                    initialShortToken: info.gm.short,
                    longTokenSwapPath: _data[i].longPath,
                    shortTokenSwapPath: _data[i].shortPath,
                    minMarketTokens: _data[i].longMinAmountOut,
                    shouldUnwrapNativeToken: false,
                    executionFee: _data[i].executionFee,
                    callbackGasLimit: _data[i].callbackGasLimit
                })
            );

            keys[info.key] = info.opHash;

            info.totalSpend = info.totalSpend + info.amount;

            emit GmDeposit(info.key, info.gm.token, info.amount);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Callback of Executed Deposit.
     * @param key Deposit key or id.
     * @param deposit Deposiot data.
     * @param eventData Event data.
     */
    function afterDepositExecution(
        bytes32 key,
        Deposit.Props calldata deposit,
        EventUtils.EventLogData calldata eventData
    ) external {
        rebalance.onlyControllerOrKeeper(msg.sender);

        if (!operationOnGoing) {
            revert OperationNotStarted();
        }

        Data storage data = gmxData[keys[key]];

        data.callbackCounter = data.callbackCounter - 1;

        if (data.callbackCounter == 0) {
            if (!compoundOnGoing) {
                IGMRouter(address(router)).vault().mint(data.shares, data.user);

                emit DepositExecuted(data.user, data.shares);

                if (address(levStrategy) != address(0)) {
                    levStrategy.depositCallback(data.shares);
                }
            } else {
                compoundOnGoing = false;
            }

            operationOnGoing = false;
        }
    }

    /**
     * @notice Callback of Cancelled Deposit.
     * @param key Deposit key or id.
     * @param deposit Deposiot data.
     */
    function afterDepositCancellation(
        bytes32 key,
        Deposit.Props calldata deposit,
        EventUtils.EventLogData calldata /*eventData*/
    ) external {
        rebalance.onlyControllerOrKeeper(msg.sender);

        if (keys[key] == 0) {
            revert Unauthorized();
        }

        if (!operationOnGoing) {
            revert OperationNotStarted();
        }

        emit NewPendingDeposit(key, deposit.addresses.market, deposit.numbers.initialShortTokenAmount);
    }

    /**
     * @notice Execute Single deposit in the case a deposit it was cancelled.
     * @param key Deposit key or id.
     * @param marketToken market token address.
     * @param amount amount of usdc to deposit.
     * @param minAmountOut min amount of gm token expected.
     * @param executionFee deposit fee in eth.
     * @param extraGas Gas needed for callback in eth.
     */
    function executeSingleDeposit(
        bytes32 key,
        address marketToken,
        uint256 amount,
        uint256 minAmountOut,
        address[] memory longPath,
        address[] memory shortPath,
        uint256 executionFee,
        uint256 extraGas
    ) external payable {
        _onlyKeeper();

        if (!operationOnGoing) {
            revert OperationNotStarted();
        }

        if (keys[key] == 0) {
            revert Unauthorized();
        }

        IGMRouter(address(router)).gmxDepositCheck();

        Info memory info;

        info.thisAddress = address(this);

        info.gmxRouter = rebalance.gmxRouter();
        info.gmxDepositVault = rebalance.gmxDepositVault();

        info.gmxRouter.sendWnt{value: executionFee}(info.gmxDepositVault, executionFee);
        IERC20(USDC).approve(address(info.gmxRouter.router()), amount);
        info.gmxRouter.sendTokens(USDC, info.gmxDepositVault, amount);

        Market.Props memory market = rebalance.gmxReader().getMarket(info.gmxRouter.dataStore(), marketToken);

        info.key = info.gmxRouter.createDeposit(
            IExchangeRouter.CreateDepositParams({
                receiver: info.thisAddress,
                callbackContract: info.thisAddress,
                uiFeeReceiver: address(0),
                market: marketToken,
                initialLongToken: market.longToken,
                initialShortToken: market.shortToken,
                longTokenSwapPath: longPath,
                shortTokenSwapPath: shortPath,
                minMarketTokens: minAmountOut,
                shouldUnwrapNativeToken: false,
                executionFee: executionFee,
                callbackGasLimit: extraGas
            })
        );

        keys[info.key] = keys[key];

        emit GmDeposit(info.key, marketToken, amount);
    }

    /**
     * @notice Withdraw gm tokens to get usdc.
     * @param _receiver Who will receive the usdc.
     * @param _assets amount of expected USD.
     * @param _shares amount shares to be burnt.
     * @param _data Signed Data.
     */
    function strategyWithdraw(address _receiver, uint256 _assets, uint256 _shares, GMData[] memory _data)
        external
        payable
    {
        _onlyRouter();

        operationCheck();

        Info memory info;

        info.length = uint8(_data.length);
        info.thisAddress = address(this);
        info.opHash = keccak256(abi.encode(arbsys.arbBlockNumber(), _receiver));
        Data storage data = gmxData[info.opHash];
        data.user = _receiver;
        data.callbackCounter = info.length;
        data.assets = _assets;
        data.shares = _shares;

        operationOnGoing = true;

        info.gmxRouter = rebalance.gmxRouter();
        info.gmxWithdrawVault = rebalance.gmxWithdrawVault();
        info.reader = rebalance.gmxReader();

        for (uint8 i; i < info.length;) {
            info.gm = tokenList[_data[i].gmTokenIndex];
            Market.Props memory market = info.reader.getMarket(info.gmxRouter.dataStore(), info.gm.token);

            info.gmxRouter.sendWnt{value: _data[i].executionFee}(info.gmxWithdrawVault, _data[i].executionFee);
            IERC20(info.gm.token).approve(address(info.gmxRouter.router()), _data[i].amount);
            info.gmxRouter.sendTokens(info.gm.token, info.gmxWithdrawVault, _data[i].amount);

            info.key = info.gmxRouter.createWithdrawal(
                IExchangeRouter.CreateWithdrawalParams({
                    receiver: info.thisAddress,
                    callbackContract: info.thisAddress,
                    uiFeeReceiver: address(0),
                    market: info.gm.token,
                    longTokenSwapPath: _data[i].longPath,
                    shortTokenSwapPath: _data[i].shortPath,
                    minLongTokenAmount: _data[i].longMinAmountOut,
                    minShortTokenAmount: _data[i].shortMinAmountOut,
                    shouldUnwrapNativeToken: false,
                    executionFee: _data[i].executionFee,
                    callbackGasLimit: _data[i].callbackGasLimit
                })
            );

            keys[info.key] = info.opHash;

            emit GmWithdraw(info.key, info.gm.token, _data[i].amount);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Callback of Executed Withdraw.
     * @param key Withdrawal key or id.
     * @param withdrawal Withdrawal data.
     * @param eventData Event data.
     */
    function afterWithdrawalExecution(
        bytes32 key,
        Withdrawal.Props calldata withdrawal,
        EventUtils.EventLogData calldata eventData
    ) external {
        rebalance.onlyControllerOrKeeper(msg.sender);

        if (!operationOnGoing) {
            revert OperationNotStarted();
        }

        if (keys[key] == 0) {
            revert Unauthorized();
        }

        Market.Props memory market =
            rebalance.gmxReader().getMarket(rebalance.gmxRouter().dataStore(), withdrawal.addresses.market);

        Data storage data = gmxData[keys[key]];

        data.usdc = data.usdc + eventData.uintItems.items[0].value + eventData.uintItems.items[1].value;
        data.callbackCounter = data.callbackCounter - 1;

        if (data.callbackCounter == 0) {
            // usdc is in range ?
            data.usdc = _isInRange(data.assets, data.usdc);

            // burn shares here
            IGMRouter(address(router)).vault().burn(address(this), data.shares);
            IERC20(USDC).transfer(data.user, data.usdc);

            if (address(levStrategy) != address(0)) {
                levStrategy.withdrawalCallback(data.usdc);
            }

            operationOnGoing = false;
        }

        emit WithdrawExecuted(key, market.marketToken, data.usdc);
    }

    /**
     * @notice Callback of Cancelled Withdraw.
     * @param key Withdrawal key or id.
     * @param withdrawal Withdrawal data.
     */
    function afterWithdrawalCancellation(
        bytes32 key,
        Withdrawal.Props calldata withdrawal,
        EventUtils.EventLogData calldata /*eventData*/
    ) external {
        rebalance.onlyControllerOrKeeper(msg.sender);

        if (!operationOnGoing) {
            revert OperationNotStarted();
        }

        if (keys[key] == 0) {
            revert Unauthorized();
        }

        emit NewPendingWithdraw(key, withdrawal.addresses.market, withdrawal.numbers.marketTokenAmount);
    }

    /**
     * @notice Execute Single withdraw in the case a withdraw it was cancelled.
     * @param key Deposit key or id.
     * @param marketToken market token address.
     * @param amount amount of gm tokens to withdraw.
     * @param _minLongTokens min amount of long token expected.
     * @param _minShortTokens min amount of short token expected.
     * @param executionFee deposit fee in eth.
     * @param extraGas Gas needed for callback in eth.
     */
    function executeSingleWithdraw(
        bytes32 key,
        address marketToken,
        uint256 amount,
        uint256 _minLongTokens,
        uint256 _minShortTokens,
        address[] memory longPath,
        address[] memory shortPath,
        uint256 executionFee,
        uint256 extraGas
    ) external payable {
        _onlyKeeper();

        if (!operationOnGoing) {
            revert OperationNotStarted();
        }

        if (keys[key] == 0) {
            revert Unauthorized();
        }

        IGMRouter(address(router)).gmxWithdrawalCheck();

        Info memory info;
        info.thisAddress = address(this);

        info.gmxRouter = rebalance.gmxRouter();
        info.gmxWithdrawVault = rebalance.gmxWithdrawVault();

        info.gmxRouter.sendWnt{value: executionFee}(info.gmxWithdrawVault, executionFee);
        IERC20(marketToken).approve(address(info.gmxRouter.router()), amount);
        info.gmxRouter.sendTokens(marketToken, info.gmxWithdrawVault, amount);

        info.key = info.gmxRouter.createWithdrawal(
            IExchangeRouter.CreateWithdrawalParams({
                receiver: info.thisAddress,
                callbackContract: info.thisAddress,
                uiFeeReceiver: address(0),
                market: marketToken,
                longTokenSwapPath: longPath,
                shortTokenSwapPath: shortPath,
                minLongTokenAmount: _minLongTokens,
                minShortTokenAmount: _minShortTokens,
                shouldUnwrapNativeToken: false,
                executionFee: executionFee,
                callbackGasLimit: extraGas
            })
        );

        keys[info.key] = keys[key];

        emit GmWithdraw(info.key, marketToken, amount);
    }

    function refundGas(address _to) external {
        _onlyKeeper();
        IERC20(WETH).transfer(_to, IERC20(WETH).balanceOf(address(this)));
    }

    /**
     * @notice Send GM Token to rebalance contract.
     * @param marketToken market token address.
     * @param amount amount of gm tokens to withdraw.
     */
    function rebalanceInput(address marketToken, uint256 amount) external {
        _onlyRebalance();

        if (rebalanceStage == 2) {
            operationOnGoing = true;
        } else {
            revert OngoingRebalance();
        }

        if (rebalanceAmounts[marketToken] == 0) {
            rebalanceTokens.push(marketToken);
        }

        rebalanceAmounts[marketToken] = rebalanceAmounts[marketToken] + amount;

        IERC20(marketToken).transfer(address(rebalance), amount);
    }

    /**
     * @notice Move to the next rebalance stage.
     */
    function nextRebalanceStage() external {
        _onlyRebalance();

        if (rebalanceStage < 4) {
            rebalanceStage = rebalanceStage + 1;
        } else {
            IGMRouter(address(router)).increaseNonce();
            rebalanceStage = 1;
            operationOnGoing = false;

            uint256 lenght = rebalanceTokens.length;

            for (uint256 i; i < lenght;) {
                rebalanceAmounts[rebalanceTokens[i]] = 0;

                unchecked {
                    ++i;
                }
            }

            delete rebalanceTokens;
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                   ONLY OWNER                               */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Update Internal Contracts.
     */
    function updateInternalVariables(address _protocol, address _router, address _rebalance, address _strategy)
        external
        onlyOwner
    {
        operationCheck();

        protocol = _protocol;
        router = _router;
        rebalance = IRebalance(_rebalance);
        levStrategy = ILeverageCallback(_strategy);
    }

    /**
     * @notice Update States
     */
    function updateStates(bool _operationOnGoing, bool _compoundOnGoing) external onlyOwner {
        operationOnGoing = _operationOnGoing;
        compoundOnGoing = _compoundOnGoing;
    }

    /**
     * @notice Batch Approve Assets
     */
    function approveAssets(address[] calldata _assets, address[] calldata _contracts, uint256[] calldata _amounts)
        external
        onlyOwner
    {
        uint256 _length = _assets.length;

        for (uint256 i; i < _length;) {
            IERC20(_assets[i]).approve(_contracts[i], _amounts[i]);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Update GM token
     */
    function updateGMMarket(uint8 _index, GMToken memory _market) external onlyOwner {
        operationCheck();

        tokenList[_index] = _market;
    }

    /**
     * @notice Update GM token targets
     */
    function updateTargets(uint64[] memory targets) external onlyOwner {
        operationCheck();

        uint8 _length = numOfGMs;

        uint256 sumTargets;

        for (uint8 i; i < _length;) {
            uint8 y = i + 1;

            tokenList[y].target = targets[i];

            sumTargets = sumTargets + targets[i];

            unchecked {
                ++i;
            }
        }

        if (sumTargets != BASIS) {
            revert InvalidTarget();
        }
    }

    /**
     * @notice Add GM token
     */
    function addGM(GMToken memory _market, uint64[] memory targets) external onlyOwner {
        operationCheck();

        uint8 _length = numOfGMs;

        uint256 sumTargets;

        for (uint8 i; i < _length;) {
            uint8 y = i + 1;

            tokenList[y].target = targets[i];

            sumTargets = sumTargets + targets[i];

            unchecked {
                ++i;
            }
        }

        sumTargets = sumTargets + _market.target;

        if (sumTargets != BASIS) {
            revert InvalidTarget();
        }

        tokenList[_length + 1] = _market;
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyOwner {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert FailSendETH();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    function setRewardsReceiverAndDistributor(address _receiver, address _distributor) external onlyOwner {
        rewardsReceiver = _receiver;
        rewardsDistributor = _distributor;
    }

    function sendToRewardsReceiver(uint256 amount) external {
        if (msg.sender != rewardsDistributor) revert Unauthorized();

        if (rewardsReceiver == address(0)) revert();

        IERC20(_ARB).transfer(rewardsReceiver, amount);
    }

    /* -------------------------------------------------------------------------- */
    /*                                    PRIVATE                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Revert if msg.sender is not router.
     */
    function _onlyRouter() private view {
        if (msg.sender != router) {
            revert Unauthorized();
        }
    }

    /**
     * @notice Revert if msg.sender is not rebalance.
     */
    function _onlyRebalance() private view {
        if (msg.sender != address(rebalance)) {
            revert Unauthorized();
        }
    }

    /**
     * @notice Revert if msg.sender is not keeper.
     */
    function _onlyKeeper() private view {
        if (msg.sender != rebalance.keeper()) {
            revert Unauthorized();
        }
    }

    /**
     * @notice Verify if some amount is in between slippage range
     * @param _idealUSDC Reference amount
     * @param _actualUSDC Real amount
     * @return USDC to be transfered to the user
     */
    function _isInRange(uint256 _idealUSDC, uint256 _actualUSDC) private returns (uint256) {
        if (_actualUSDC > _idealUSDC) {
            IERC20(USDC).transfer(protocol, _actualUSDC - _idealUSDC);
            return _idealUSDC;
        }
        return _actualUSDC;
    }
}
