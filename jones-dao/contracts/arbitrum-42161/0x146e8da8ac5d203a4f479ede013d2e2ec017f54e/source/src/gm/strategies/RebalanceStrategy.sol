// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {OwnableUpgradeable} from "openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";
import {IRebalance} from "src/interfaces/strategy/IRebalance.sol";
import {IExchangeRouter} from "src/interfaces/gmx/IExchangeRouter.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";
import {IWithdrawalCallbackReceiver, Withdrawal, EventUtils} from "src/interfaces/gmx/IWithdrawalCallbackReceiver.sol";
import {IDepositCallbackReceiver, Deposit} from "src/interfaces/gmx/IDepositCallbackReceiver.sol";
import {IReader, Market, MarketUtils} from "src/interfaces/gmx/IReader.sol";
import {ISwapPricingUtils} from "src/interfaces/gmx/ISwapPricingUtils.sol";

contract RebalanceStrategy is IRebalance, IDepositCallbackReceiver, IWithdrawalCallbackReceiver, OwnableUpgradeable {
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;

    /* -------------------------------------------------------------------------- */
    /*                                   STRUCTS                                  */
    /* -------------------------------------------------------------------------- */

    /// @notice Pending GMX Interactions
    struct Pending {
        bytes32 key;
        address marketToken;
        uint256 amount;
    }

    /// @notice stack too depp
    struct Vars {
        uint256 numOfRebalance;
        address[] paths;
        address thisAddress;
        uint256 length;
        IExchangeRouter gmxRouter;
        address gmxDepositVault;
        IReader reader;
        uint256 i;
        bytes32 key;
    }

    /// @notice Stack too Deep
    struct Init {
        uint8 length;
        address routerAddress;
        uint256 max;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    /// @notice rebalance counter => withdraw counter
    mapping(uint256 => uint256) public withdrawCounter;
    /// @notice rebalance counter => deposit counter
    mapping(uint256 => uint256) public depositCounter;
    /// @notice rebalance counter => rebalance data array
    mapping(uint256 => Rebalance[]) public rebalances;
    /// @notice key => rebalance counter
    mapping(bytes32 => uint256) public keyToRebalance;

    /// @notice rebalance counter => pending withdraws
    mapping(uint256 => Pending[]) public pendingWithdraws;
    /// @notice rebalance counter => pending deposits
    mapping(uint256 => Pending[]) public pendingDeposits;

    /// @notice Token In => Token Out => Swap Contract
    mapping(address => mapping(address => ITokenSwapper)) public swappers;

    ITokenSwapper public defaultSwapper;

    address public keeper;
    IGMStrategy public gmxStrategy;
    bool public rebalanceLock;

    address public constant USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;
    uint256 public constant BASIS = 1e12;
    uint256 public slippage;
    uint256 public numOfRebalance;

    IExchangeRouter public gmxRouter;
    address public gmxDepositVault;
    address public gmxWithdrawVault;
    IReader public gmxReader;

    bytes32 public constant CONTROLLER = keccak256(abi.encode("CONTROLLER"));

    address private constant _ARB = 0x912CE59144191C1204E64559FE8253a0e49E6548;

    address public rewardsReceiver;
    address public rewardsDistributor;

    /* -------------------------------------------------------------------------- */
    /*                                  INITIALIZE                                */
    /* -------------------------------------------------------------------------- */
    function initialize(IGMStrategy.GMToken[] memory _markets, address _swapper, address _keeper, address _strategy)
        external
        initializer
    {
        __Ownable_init(msg.sender);

        Init memory init;

        gmxRouter = IExchangeRouter(0x69C527fC77291722b52649E45c838e41be8Bf5d5);
        gmxDepositVault = 0xF89e77e8Dc11691C9e8757e84aaFbCD8A67d7A55;
        gmxWithdrawVault = 0x0628D46b5D145f183AdB6Ef1f2c97eD1C4701C55;
        gmxReader = IReader(0x5Ca84c34a381434786738735265b9f3FD814b824);

        init.length = uint8(_markets.length);

        keeper = _keeper;
        gmxStrategy = IGMStrategy(_strategy);

        init.routerAddress = address(gmxRouter.router());

        init.max = ~uint256(0);

        for (uint8 i; i < init.length;) {
            IERC20(_markets[i].token).approve(init.routerAddress, init.max);
            IERC20(_markets[i].long).approve(_swapper, init.max);

            unchecked {
                ++i;
            }
        }

        slippage = BASIS.mulDivDown(993, 1000); // 0.7%

        defaultSwapper = ITokenSwapper(_swapper);
        IERC20(USDC).approve(init.routerAddress, init.max);
    }

    /* -------------------------------------------------------------------------- */
    /*                                    VIEW                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Return Swap Contract
     * @param tokenIn Token In
     * @param tokenOut Token Out
     * @return Swap Contract
     */
    function getSwapper(address tokenIn, address tokenOut) public view returns (ITokenSwapper) {
        ITokenSwapper swapper = swappers[tokenIn][tokenOut];
        if (address(swapper) == address(0)) {
            return defaultSwapper;
        }
        return swapper;
    }

    /**
     * @notice Calculate min amount out from a market token and a usdc amount
     * @param usdcAmount Amount In.
     * @param marketToken market token address.
     * @param prices Prices of GM Token.
     * @return Min amount out
     */
    function getMinAmountOut(uint256 usdcAmount, address marketToken, MarketUtils.MarketPrices memory prices)
        external
        view
        returns (uint256)
    {
        return _minAmountOut(usdcAmount, marketToken, prices);
    }

    /**
     * @notice Apply slippage to specific amount.
     */
    function applySlippage(uint256 _amount) public view returns (uint256) {
        return _amount.mulDivDown(slippage, BASIS);
    }

    /**
     * @notice Add slippage to specific amount.
     */
    function addSlippage(uint256 _amount) public view returns (uint256) {
        return _amount.mulDivDown(BASIS, slippage);
    }

    function onlyControllerOrKeeper(address sender) public view {
        if (!gmxRouter.roleStore().hasRole(sender, CONTROLLER) && sender != keeper) {
            revert Unauthorized();
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                 ONLY OPERATORS                             */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Start Rebalance, withdraw first
     * @param _withdraws Array of withdraw data.
     */
    function startRebalance(GMWithdraw[] memory _withdraws) external payable {
        _onlyKeeper();

        if (rebalanceLock || gmxStrategy.operationOnGoing()) {
            revert OngoingRebalance();
        }

        if (gmxStrategy.rebalanceStage() == 1) {
            gmxStrategy.nextRebalanceStage();
        }

        if (gmxStrategy.rebalanceStage() != 2) {
            revert InvalidStage();
        }

        IGMRouter(gmxStrategy.router()).gmxWithdrawalCheck();

        rebalanceLock = true;
        uint256 _numOfRebalance = numOfRebalance + 1;

        address thisAddress = address(this);

        uint256 length = _withdraws.length;

        for (uint256 i; i < length;) {
            gmxStrategy.rebalanceInput(_withdraws[i].marketToken, _withdraws[i].amount);

            gmxRouter.sendWnt{value: _withdraws[i].executionFee}(gmxWithdrawVault, _withdraws[i].executionFee);
            gmxRouter.sendTokens(_withdraws[i].marketToken, gmxWithdrawVault, _withdraws[i].amount);

            bytes32 key = gmxRouter.createWithdrawal(
                IExchangeRouter.CreateWithdrawalParams({
                    receiver: thisAddress,
                    callbackContract: thisAddress,
                    uiFeeReceiver: address(0),
                    market: _withdraws[i].marketToken,
                    longTokenSwapPath: _withdraws[i].longPath,
                    shortTokenSwapPath: _withdraws[i].shortPath,
                    minLongTokenAmount: _withdraws[i].minLongOut,
                    minShortTokenAmount: _withdraws[i].minShortOut,
                    shouldUnwrapNativeToken: false,
                    executionFee: _withdraws[i].executionFee,
                    callbackGasLimit: _withdraws[i].extraGas
                })
            );

            keyToRebalance[key] = _numOfRebalance;
            withdrawCounter[_numOfRebalance] = withdrawCounter[_numOfRebalance] + 1;

            emit GmWithdraw(key, _withdraws[i].marketToken, _withdraws[i].amount);

            unchecked {
                ++i;
            }
        }

        numOfRebalance = _numOfRebalance;
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
        onlyControllerOrKeeper(msg.sender);

        if (gmxStrategy.rebalanceStage() != 2) {
            revert InvalidStage();
        }

        uint256 _numOfRebalance = keyToRebalance[key];

        if (_numOfRebalance == 0) {
            revert Unauthorized();
        }

        Rebalance memory _rebalance = Rebalance({
            marketToken: withdrawal.addresses.market,
            gmAmount: withdrawal.numbers.marketTokenAmount,
            usdcAmount: eventData.uintItems.items[1].value + eventData.uintItems.items[0].value,
            purchase: false
        });

        rebalances[_numOfRebalance].push(_rebalance);

        withdrawCounter[_numOfRebalance] = withdrawCounter[_numOfRebalance] - 1;

        if (withdrawCounter[_numOfRebalance] == 0) {
            gmxStrategy.nextRebalanceStage();
        }

        emit WithdrawRebalance(key, _numOfRebalance, _rebalance);
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
        onlyControllerOrKeeper(msg.sender);

        if (gmxStrategy.rebalanceStage() != 2) {
            revert InvalidStage();
        }

        uint256 _numOfRebalance = keyToRebalance[key];

        if (_numOfRebalance == 0) {
            revert Unauthorized();
        }

        pendingWithdraws[_numOfRebalance].push(
            Pending({key: key, marketToken: withdrawal.addresses.market, amount: withdrawal.numbers.marketTokenAmount})
        );

        delete keyToRebalance[key];

        emit NewPendingWithdraw(key, withdrawal.addresses.market, withdrawal.numbers.marketTokenAmount);
    }

    /**
     * @notice Execute pendings Withdraws in case some of it it was cancelled.
     * @param _withdraws Array of withdraw data.
     */
    function executePendingWithdraw(GMWithdraw[] memory _withdraws) external payable {
        _onlyKeeper();

        if (!rebalanceLock) {
            revert OngoingRebalance();
        }

        if (gmxStrategy.rebalanceStage() != 2) {
            revert InvalidStage();
        }

        IGMRouter(gmxStrategy.router()).gmxWithdrawalCheck();

        uint256 _numOfRebalance = numOfRebalance;

        Pending[] storage pendings = pendingWithdraws[_numOfRebalance];

        address thisAddress = address(this);

        uint256 length = _withdraws.length;

        for (uint256 y = length; y >= 1;) {
            uint256 i = y - 1;
            if (pendings[i].amount != _withdraws[i].amount || pendings[i].marketToken != _withdraws[i].marketToken) {
                revert InvalidParams();
            }

            gmxRouter.sendWnt{value: _withdraws[i].executionFee}(gmxWithdrawVault, _withdraws[i].executionFee);
            gmxRouter.sendTokens(_withdraws[i].marketToken, gmxWithdrawVault, _withdraws[i].amount);

            bytes32 key = gmxRouter.createWithdrawal(
                IExchangeRouter.CreateWithdrawalParams({
                    receiver: thisAddress,
                    callbackContract: thisAddress,
                    uiFeeReceiver: address(0),
                    market: _withdraws[i].marketToken,
                    longTokenSwapPath: _withdraws[i].longPath,
                    shortTokenSwapPath: _withdraws[i].shortPath,
                    minLongTokenAmount: _withdraws[i].minLongOut,
                    minShortTokenAmount: _withdraws[i].minShortOut,
                    shouldUnwrapNativeToken: false,
                    executionFee: _withdraws[i].executionFee,
                    callbackGasLimit: _withdraws[i].extraGas
                })
            );

            keyToRebalance[key] = _numOfRebalance;

            pendings.pop();

            emit GmWithdraw(key, _withdraws[i].marketToken, _withdraws[i].amount);

            unchecked {
                --y;
            }
        }
    }

    /**
     * @notice Purchase GM tokens for Rebalance.
     * @param _deposits Array of deposit data.
     */
    function purchaseRebalance(GMDeposit[] memory _deposits) external payable {
        _onlyKeeper();

        if (!rebalanceLock) {
            revert OngoingRebalance();
        }

        if (gmxStrategy.rebalanceStage() != 3) {
            revert InvalidStage();
        }

        IGMRouter(gmxStrategy.router()).gmxDepositCheck();

        gmxStrategy.nextRebalanceStage();

        uint256 _numOfRebalance = numOfRebalance;

        address[] memory paths;
        address thisAddress = address(this);

        uint256 length = _deposits.length;

        for (uint256 i; i < length;) {
            Market.Props memory market = gmxReader.getMarket(gmxRouter.dataStore(), _deposits[i].marketToken);

            gmxRouter.sendWnt{value: _deposits[i].executionFee}(gmxDepositVault, _deposits[i].executionFee);
            gmxRouter.sendTokens(USDC, gmxDepositVault, _deposits[i].amount);

            bytes32 key = gmxRouter.createDeposit(
                IExchangeRouter.CreateDepositParams({
                    receiver: thisAddress,
                    callbackContract: thisAddress,
                    uiFeeReceiver: address(0),
                    market: _deposits[i].marketToken,
                    initialLongToken: market.longToken,
                    initialShortToken: market.shortToken,
                    longTokenSwapPath: paths,
                    shortTokenSwapPath: paths,
                    minMarketTokens: _deposits[i].minAmountOut,
                    shouldUnwrapNativeToken: false,
                    executionFee: _deposits[i].executionFee,
                    callbackGasLimit: _deposits[i].extraGas
                })
            );

            keyToRebalance[key] = _numOfRebalance;
            depositCounter[_numOfRebalance] = depositCounter[_numOfRebalance] + 1;

            emit GmDeposit(key, _deposits[i].marketToken, _deposits[i].amount);

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
        onlyControllerOrKeeper(msg.sender);

        if (gmxStrategy.rebalanceStage() != 4) {
            revert InvalidStage();
        }

        uint256 _numOfRebalance = keyToRebalance[key];

        if (_numOfRebalance == 0) {
            revert Unauthorized();
        }

        Rebalance memory _rebalance = Rebalance({
            marketToken: deposit.addresses.market,
            gmAmount: eventData.uintItems.items[0].value,
            usdcAmount: 0,
            purchase: true
        });

        rebalances[_numOfRebalance].push(_rebalance);

        depositCounter[_numOfRebalance] = depositCounter[_numOfRebalance] - 1;

        if (depositCounter[_numOfRebalance] == 0) {
            Rebalance[] memory _rebalances = rebalances[_numOfRebalance];
            uint256 length = _rebalances.length;

            for (uint256 i; i < length;) {
                if (_rebalances[i].purchase) {
                    IERC20(_rebalances[i].marketToken).transfer(address(gmxStrategy), _rebalances[i].gmAmount);
                }

                unchecked {
                    ++i;
                }
            }
            gmxStrategy.nextRebalanceStage();

            rebalanceLock = false;
        }

        emit DepositRebalance(key, _numOfRebalance, _rebalance);
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
        onlyControllerOrKeeper(msg.sender);

        if (gmxStrategy.rebalanceStage() != 4) {
            revert InvalidStage();
        }

        uint256 _numOfRebalance = keyToRebalance[key];

        if (_numOfRebalance == 0) {
            revert Unauthorized();
        }

        pendingDeposits[_numOfRebalance].push(
            Pending({key: key, marketToken: deposit.addresses.market, amount: deposit.numbers.initialShortTokenAmount})
        );

        delete keyToRebalance[key];

        emit NewPendingDeposit(key, deposit.addresses.market, deposit.numbers.initialShortTokenAmount);
    }

    /**
     * @notice Execute pending deposits in case some of it it was cancelled.
     * @param _deposits Array of deposit data.
     */
    function executePendingDeposit(GMDeposit[] memory _deposits) external payable {
        _onlyKeeper();

        if (!rebalanceLock) {
            revert OngoingRebalance();
        }

        if (gmxStrategy.rebalanceStage() != 4) {
            revert InvalidStage();
        }

        IGMRouter(gmxStrategy.router()).gmxDepositCheck();

        Vars memory vars;

        vars.numOfRebalance = numOfRebalance;

        Pending[] storage pendings = pendingDeposits[vars.numOfRebalance];

        vars.thisAddress = address(this);

        vars.length = _deposits.length;

        vars.gmxRouter = gmxRouter;
        vars.gmxDepositVault = gmxDepositVault;
        vars.reader = gmxReader;

        for (uint256 y = vars.length; y >= 1;) {
            vars.i = y - 1;
            if (
                pendings[vars.i].amount != _deposits[vars.i].amount
                    || pendings[vars.i].marketToken != _deposits[vars.i].marketToken
            ) {
                revert InvalidParams();
            }

            Market.Props memory market =
                vars.reader.getMarket(vars.gmxRouter.dataStore(), _deposits[vars.i].marketToken);

            vars.gmxRouter.sendWnt{value: _deposits[vars.i].executionFee}(
                vars.gmxDepositVault, _deposits[vars.i].executionFee
            );
            vars.gmxRouter.sendTokens(USDC, vars.gmxDepositVault, _deposits[vars.i].amount);

            vars.key = vars.gmxRouter.createDeposit(
                IExchangeRouter.CreateDepositParams({
                    receiver: vars.thisAddress,
                    callbackContract: vars.thisAddress,
                    uiFeeReceiver: address(0),
                    market: _deposits[vars.i].marketToken,
                    initialLongToken: market.longToken,
                    initialShortToken: market.shortToken,
                    longTokenSwapPath: vars.paths,
                    shortTokenSwapPath: vars.paths,
                    minMarketTokens: _deposits[vars.i].minAmountOut,
                    shouldUnwrapNativeToken: false,
                    executionFee: _deposits[vars.i].executionFee,
                    callbackGasLimit: _deposits[vars.i].extraGas
                })
            );

            keyToRebalance[vars.key] = vars.numOfRebalance;

            pendings.pop();

            emit GmDeposit(vars.key, _deposits[vars.i].marketToken, _deposits[vars.i].amount);

            unchecked {
                --y;
            }
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                   ONLY OWNER                               */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Toggle RebalanceLock
     */
    function toggleRebalanceLock() external onlyOwner {
        rebalanceLock = !rebalanceLock;
    }

    /**
     * @notice Add Swapper Contract
     * @param tokenIn Token In
     * @param tokenOut Token Out.
     * @param swapper Swap Contract
     */
    function addSwapper(address tokenIn, address tokenOut, address swapper) external onlyOwner {
        address previewsSwapper = address(swappers[tokenIn][tokenOut]);
        if (previewsSwapper != address(0)) {
            IERC20(tokenIn).approve(address(swappers[tokenIn][tokenOut]), 0);
        }
        IERC20(tokenIn).approve(swapper, type(uint256).max);
        swappers[tokenIn][tokenOut] = ITokenSwapper(swapper);
    }

    /**
     * @notice Update defaul swapper contract
     * @param swapper new swap contract
     */
    function updateDefaultSwapper(address swapper) external onlyOwner {
        if (rebalanceLock || gmxStrategy.operationOnGoing()) {
            revert OngoingRebalance();
        }

        address oldDefaultSwapper = address(defaultSwapper);

        uint8 _length = gmxStrategy.numOfGMs();

        for (uint8 i; i < _length;) {
            IGMStrategy.GMToken memory gm = gmxStrategy.getTokenList(i + 1);

            IERC20(gm.long).approve(oldDefaultSwapper, 0);
            IERC20(gm.long).approve(swapper, type(uint256).max);

            unchecked {
                ++i;
            }
        }

        defaultSwapper = ITokenSwapper(swapper);
    }

    /**
     * @notice Update GMX V2 Contracts
     */
    function updateGmxVariables(
        address _gmxRouter,
        address _gmxDepositVault,
        address _gmxWithdrawVault,
        address _gmxReader
    ) external onlyOwner {
        if (rebalanceLock || gmxStrategy.operationOnGoing()) {
            revert OngoingRebalance();
        }

        address oldGmTokenAddress = address(gmxRouter.router());
        gmxRouter = IExchangeRouter(_gmxRouter);
        address newGmTokenAddress = address(gmxRouter.router());

        uint8 _length = gmxStrategy.numOfGMs();

        for (uint8 i; i < _length;) {
            IGMStrategy.GMToken memory gm = gmxStrategy.getTokenList(i + 1);

            IERC20(gm.token).approve(oldGmTokenAddress, 0);
            IERC20(gm.token).approve(newGmTokenAddress, type(uint256).max);

            unchecked {
                ++i;
            }
        }

        IERC20(USDC).approve(oldGmTokenAddress, 0);
        IERC20(USDC).approve(newGmTokenAddress, type(uint256).max);

        gmxDepositVault = _gmxDepositVault;
        gmxWithdrawVault = _gmxWithdrawVault;
        gmxReader = IReader(_gmxReader);
    }

    /**
     * @notice Update Internal Contracts and Variables
     */
    function updateInternalVariables(address _keeper, address _strategy, uint256 _slippage) external onlyOwner {
        if (rebalanceLock || gmxStrategy.operationOnGoing()) {
            revert OngoingRebalance();
        }

        keeper = _keeper;
        gmxStrategy = IGMStrategy(_strategy);
        slippage = _slippage;
    }

    /**
     * @notice Batch Approve Assets
     */
    function approveAssets(address[] memory _assets, address[] memory _contracts, uint256[] memory _amounts)
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
     * @notice Revert if msg.sender is not keeper.
     */
    function _onlyKeeper() private view {
        if (msg.sender != keeper) {
            revert Unauthorized();
        }
    }

    /**
     * @notice Calculate min amount out from a market token and a usdc amount
     * @param usdcAmount Amount In
     * @param marketToken Market token address
     * @param prices Prices of GM Token.
     * @return Min amount out
     */
    function _minAmountOut(uint256 usdcAmount, address marketToken, MarketUtils.MarketPrices memory prices)
        private
        view
        returns (uint256)
    {
        Market.Props memory market = gmxReader.getMarket(gmxRouter.dataStore(), marketToken);

        return applySlippage(
            gmxReader.getDepositAmountOut(
                gmxRouter.dataStore(),
                market,
                prices,
                0,
                usdcAmount,
                address(0),
                ISwapPricingUtils.SwapPricingType.TwoStep,
                true
            )
        );
    }
}
