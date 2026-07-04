// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "./exchange/IExchangeAdapter.sol";
import "./interfaces/IMinimaxStaking.sol";
import "./MinimaxStaking.sol";
import "./pool/IPoolAdapter.sol";
import "./interfaces/IERC20Decimals.sol";
import "./interfaces/IPriceOracle.sol";
import "./interfaces/IPancakeRouter.sol";
import "./interfaces/ISmartChef.sol";
import "./interfaces/IGelatoOps.sol";
import "./interfaces/IWrapped.sol";
import "./ProxyCaller.sol";
import "./ProxyCallerApi.sol";
import "./ProxyPool.sol";
import "./market/Market.sol";
import "./PositionInfo.sol";
import "./PositionExchangeLib.sol";
import "./PositionBalanceLib.sol";
import "./PositionLib.sol";
import "./interfaces/IMinimaxMain.sol";

/*
    MinimaxMain
*/
contract MinimaxMain is IMinimaxMain, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using ProxyCallerApi for ProxyCaller;

    event PositionWasCreated(uint indexed positionIndex);
    event PositionWasModified(uint indexed positionIndex);
    event PositionWasClosed(uint indexed positionIndex);

    uint public constant FEE_MULTIPLIER = 1e8;
    uint public constant SLIPPAGE_MULTIPLIER = 1e8;
    uint public constant POSITION_PRICE_LIMITS_MULTIPLIER = 1e8;

    address public cakeAddress; // TODO: remove when deploy clean version

    // BUSD for BSC, USDT for POLYGON
    address public busdAddress; // TODO: rename to stableToken when deploy clean version

    address public minimaxStaking;

    uint public lastPositionIndex;

    // Use mapping instead of array for upgradeability of PositionInfo struct
    mapping(uint => PositionInfo) public positions;

    mapping(address => bool) public isLiquidator;

    ProxyCaller[] public proxyPool;
    using ProxyPool for ProxyCaller[];

    // Fee threshold
    struct FeeThreshold {
        uint fee;
        uint stakedAmountThreshold;
    }

    FeeThreshold[] public depositFees;

    /// @custom:oz-renamed-from poolAdapters
    mapping(address => IPoolAdapter) public poolAdaptersDeprecated;

    mapping(IERC20Upgradeable => IPriceOracle) public priceOracles;

    // TODO: deprecated
    mapping(IERC20Upgradeable => IExchangeAdapter) public tokenExchanges;

    // gelato
    IGelatoOps public gelatoOps;

    address payable public gelatoPayee;

    mapping(address => uint256) public gelatoLiquidateFee; // TODO: remove when deploy clean version
    uint256 public stakeGelatoFee; // TODO: rename to stakeGelatoFee
    address public gelatoFeeToken; // TODO: remove when deploy clean version

    // If token present in tokenExchanges -- use it. Otherwise use defaultExchange.
    IExchangeAdapter public defaultExchange;

    // poolAdapters by bytecode hash
    mapping(uint256 => IPoolAdapter) public poolAdapters;

    IMarket public market;

    address public wrappedNative;

    address public oneInchRouter;

    //
    //
    // Storage section ends!
    //
    //

    function setGasTankThreshold(uint256 value) external onlyOwner {
        stakeGelatoFee = value;
    }

    function setGelatoOps(address _gelatoOps) external onlyOwner {
        gelatoOps = IGelatoOps(_gelatoOps);
    }

    function setLastPositionIndex(uint newLastPositionIndex) external onlyOwner {
        require(newLastPositionIndex >= lastPositionIndex, "last position index may only be increased");
        lastPositionIndex = newLastPositionIndex;
    }

    function getPoolAdapterKey(address pool) public view returns (uint256) {
        return uint256(keccak256(pool.code));
    }

    function getPoolAdapter(address pool) public view returns (IPoolAdapter) {
        uint256 key = getPoolAdapterKey(pool);
        return poolAdapters[key];
    }

    function getPoolAdapterSafe(address pool) public view returns (IPoolAdapter) {
        IPoolAdapter adapter = getPoolAdapter(pool);
        require(address(adapter) != address(0), "pool adapter not found");
        return adapter;
    }

    function getPoolAdapters(address[] calldata pools)
        public
        view
        returns (IPoolAdapter[] memory adapters, uint256[] memory keys)
    {
        adapters = new IPoolAdapter[](pools.length);
        keys = new uint256[](pools.length);
        for (uint i = 0; i < pools.length; i++) {
            uint256 key = getPoolAdapterKey(pools[i]);
            keys[i] = key;
            adapters[i] = poolAdapters[key];
        }
    }

    // Staking pool adapters
    function setPoolAdapters(address[] calldata pools, IPoolAdapter[] calldata adapters) external onlyOwner {
        require(pools.length == adapters.length, "pools and adapters parameters should have the same length");
        for (uint32 i = 0; i < pools.length; i++) {
            uint256 key = getPoolAdapterKey(pools[i]);
            poolAdapters[key] = adapters[i];
        }
    }

    // Price oracles
    function setPriceOracles(IERC20Upgradeable[] calldata tokens, IPriceOracle[] calldata oracles) external onlyOwner {
        require(tokens.length == oracles.length, "tokens and oracles parameters should have the same length");
        for (uint32 i = 0; i < tokens.length; i++) {
            priceOracles[tokens[i]] = oracles[i];
        }
    }

    function getPriceOracleSafe(IERC20Upgradeable token) public view returns (IPriceOracle) {
        IPriceOracle oracle = priceOracles[token];
        require(address(oracle) != address(0), "price oracle not found");
        return oracle;
    }

    function setMarket(IMarket _market) external onlyOwner {
        market = _market;
    }

    function setWrappedNative(address _native) external onlyOwner {
        wrappedNative = _native;
    }

    function setOneInchRouter(address _router) external onlyOwner {
        oneInchRouter = _router;
    }

    modifier onlyAutomator() {
        require(msg.sender == address(gelatoOps) || isLiquidator[address(msg.sender)], "onlyAutomator");
        _;
    }

    using SafeERC20Upgradeable for IERC20Upgradeable;

    function initialize(
        address _minimaxStaking,
        address _busdAddress,
        address _gelatoOps
    ) external initializer {
        minimaxStaking = _minimaxStaking;
        busdAddress = _busdAddress;
        gelatoOps = IGelatoOps(_gelatoOps);

        __Ownable_init();
        __ReentrancyGuard_init();

        // staking pool
        depositFees.push(
            FeeThreshold({
                fee: 100000, // 0.1%
                stakedAmountThreshold: 1000 * 1e18 // all stakers <= 1000 MMX would have 0.1% fee for deposit
            })
        );

        depositFees.push(
            FeeThreshold({
                fee: 90000, // 0.09%
                stakedAmountThreshold: 5000 * 1e18
            })
        );

        depositFees.push(
            FeeThreshold({
                fee: 80000, // 0.08%
                stakedAmountThreshold: 10000 * 1e18
            })
        );

        depositFees.push(
            FeeThreshold({
                fee: 70000, // 0.07%
                stakedAmountThreshold: 50000 * 1e18
            })
        );
        depositFees.push(
            FeeThreshold({
                fee: 50000, // 0.05%
                stakedAmountThreshold: 10000000 * 1e18 // this level doesn't matter
            })
        );
    }

    receive() external payable {}

    function getSlippageMultiplier() public pure returns (uint) {
        return SLIPPAGE_MULTIPLIER;
    }

    function getUserFee(address user) public view returns (uint) {
        IMinimaxStaking staking = IMinimaxStaking(minimaxStaking);

        uint amountPool2 = staking.getUserAmount(2, user);
        uint amountPool3 = staking.getUserAmount(3, user);
        uint totalStakedAmount = amountPool2 + amountPool3;

        uint length = depositFees.length;

        for (uint bucketId = 0; bucketId < length; ++bucketId) {
            uint threshold = depositFees[bucketId].stakedAmountThreshold;
            if (totalStakedAmount <= threshold) {
                return depositFees[bucketId].fee;
            }
        }

        return depositFees[length - 1].fee;
    }

    function getUserFeeAmount(address user, uint amount) public view returns (uint) {
        uint userFeeShare = getUserFee(user);
        return (amount * userFeeShare) / FEE_MULTIPLIER;
    }

    function getPositionInfo(uint positionIndex) external view returns (PositionInfo memory) {
        return positions[positionIndex];
    }

    function fillProxyPool(uint amount) external onlyOwner {
        proxyPool.add(amount);
    }

    function cleanProxyPool() external onlyOwner {
        delete proxyPool;
    }

    function transferTo(
        address token,
        address to,
        uint amount
    ) external onlyOwner {
        address nativeToken = address(0);
        if (token == nativeToken) {
            (bool success, ) = to.call{value: amount}("");
            require(success, "transferTo: BNB transfer failed");
        } else {
            SafeERC20Upgradeable.safeTransfer(IERC20Upgradeable(token), to, amount);
        }
    }

    function setDepositFee(uint poolIdx, uint feeShare) external onlyOwner {
        require(poolIdx < depositFees.length, "wrong pool index");
        depositFees[poolIdx].fee = feeShare;
    }

    function setMinimaxStakingAddress(address stakingAddress) external onlyOwner {
        minimaxStaking = stakingAddress;
    }

    function getPositionBalances(uint[] calldata positionIndexes)
        public
        returns (PositionBalanceLib.PositionBalance[] memory)
    {
        return PositionBalanceLib.getMany(positions, poolAdapters, positionIndexes);
    }

    function _stakeToken(
        PositionLib.StakeParams memory stakeParams,
        uint swapKind,
        bytes memory swapParams
    ) private returns (uint) {
        require(msg.value >= stakeGelatoFee, "gasTankThreshold");

        uint positionIndex = lastPositionIndex;
        lastPositionIndex += 1;

        PositionInfo memory position = PositionLib.stake(
            this,
            proxyPool.acquire(),
            positionIndex,
            stakeParams,
            swapKind,
            swapParams
        );

        position.gelatoLiquidateTaskId = _gelatoCreateTask(positionIndex);
        depositGasTank(position.callerAddress);
        positions[positionIndex] = position;
        emit PositionWasCreated(positionIndex);
        return positionIndex;
    }

    function stake(
        uint inputAmount,
        IERC20Upgradeable inputToken,
        uint stakingAmountMin,
        IERC20Upgradeable stakingToken,
        address stakingPool,
        uint maxSlippage,
        uint stopLossPrice,
        uint takeProfitPrice,
        uint swapKind,
        bytes calldata swapParams
    ) public payable nonReentrant returns (uint) {
        return
            _stakeToken(
                PositionLib.StakeParams(
                    inputAmount,
                    inputToken,
                    stakingAmountMin,
                    stakingToken,
                    stakingPool,
                    maxSlippage,
                    stopLossPrice,
                    takeProfitPrice
                ),
                swapKind,
                swapParams
            );
    }

    function stakeToken(
        IERC20Upgradeable stakingToken,
        address stakingPool,
        uint tokenAmount,
        uint maxSlippage,
        uint stopLossPrice,
        uint takeProfitPrice
    ) public payable nonReentrant returns (uint) {
        return
            _stakeToken(
                PositionLib.StakeParams(
                    tokenAmount,
                    stakingToken,
                    tokenAmount,
                    stakingToken,
                    stakingPool,
                    maxSlippage,
                    stopLossPrice,
                    takeProfitPrice
                ),
                PositionLib.StakeSimpleKind,
                ""
            );
    }

    function swapStakeToken(
        IERC20Upgradeable inputToken,
        IERC20Upgradeable stakingToken,
        address stakingPool,
        uint inputTokenAmount,
        uint stakingTokenAmountMin,
        uint maxSlippage,
        uint stopLossPrice,
        uint takeProfitPrice,
        bytes memory hints
    ) public payable nonReentrant returns (uint) {
        return
            _stakeToken(
                PositionLib.StakeParams(
                    inputTokenAmount,
                    inputToken,
                    stakingTokenAmountMin,
                    stakingToken,
                    stakingPool,
                    maxSlippage,
                    stopLossPrice,
                    takeProfitPrice
                ),
                PositionLib.StakeSwapMarketKind,
                abi.encode((hints))
            );
    }

    function swapStakeTokenOneInch(
        IERC20Upgradeable inputToken,
        IERC20Upgradeable stakingToken,
        address stakingPool,
        uint inputTokenAmount,
        uint maxSlippage,
        uint stopLossPrice,
        uint takeProfitPrice,
        bytes memory oneInchCallData
    ) public payable nonReentrant returns (uint) {
        return
            _stakeToken(
                PositionLib.StakeParams(
                    inputTokenAmount,
                    inputToken,
                    0,
                    stakingToken,
                    stakingPool,
                    maxSlippage,
                    stopLossPrice,
                    takeProfitPrice
                ),
                PositionLib.StakeSwapOneInchKind,
                abi.encode((oneInchCallData))
            );
    }

    function swapStakeTokenEstimate(
        address inputToken,
        address stakingToken,
        uint inputTokenAmount,
        bool tokenInPair,
        bool tokenOutPair
    ) public view returns (uint amountOut, bytes memory hints) {
        require(address(market) != address(0), "no market");
        return market.estimateOut(inputToken, stakingToken, inputTokenAmount);
    }

    function swapEstimate(
        address inputToken,
        address stakingToken,
        uint inputTokenAmount
    ) public view returns (uint amountOut, bytes memory hints) {
        require(address(market) != address(0), "no market");
        return market.estimateOut(inputToken, stakingToken, inputTokenAmount);
    }

    function deposit(uint positionIndex, uint amount) external nonReentrant {
        PositionInfo storage position = positions[positionIndex];

        PositionLib.deposit(this, position, positionIndex, amount);
        emit PositionWasModified(positionIndex);
    }

    function setLiquidator(address user, bool value) external onlyOwner {
        isLiquidator[user] = value;
    }

    function withdrawAll(uint positionIndex) external nonReentrant {
        PositionInfo storage position = positions[positionIndex];
        bool shouldClose = PositionLib.withdraw(this, position, positionIndex, 0, true);
        if (shouldClose) {
            closePosition(positionIndex);
        } else {
            emit PositionWasModified(positionIndex);
        }
    }

    function alterPositionParams(
        uint positionIndex,
        uint newAmount,
        uint newStopLossPrice,
        uint newTakeProfitPrice,
        uint newSlippage
    ) external nonReentrant {
        PositionInfo storage position = positions[positionIndex];
        bool shouldClose = PositionLib.alterPositionParams(
            this,
            position,
            positionIndex,
            newAmount,
            newStopLossPrice,
            newTakeProfitPrice,
            newSlippage
        );
        if (shouldClose) {
            closePosition(positionIndex);
        } else {
            emit PositionWasModified(positionIndex);
        }
    }

    function withdraw(uint positionIndex, uint amount) external nonReentrant {
        PositionInfo storage position = positions[positionIndex];
        bool shouldClose = PositionLib.withdraw(
            this, // main
            position,
            positionIndex,
            amount,
            false // amountAll
        );
        if (shouldClose) {
            closePosition(positionIndex);
        } else {
            emit PositionWasModified(positionIndex);
        }
    }

    // Always emits `PositionWasClosed`
    function liquidateByIndexImpl(
        uint positionIndex,
        uint amountOutMin,
        bytes memory marketHints
    ) private {
        PositionInfo storage position = positions[positionIndex];
        require(isOpen(position), "isOpen");

        position.callerAddress.withdrawAll(
            getPoolAdapterSafe(position.poolAddress),
            position.poolAddress,
            abi.encode(position.stakedToken) // pass stakedToken for aave pools
        );

        uint stakedAmount = IERC20Upgradeable(position.stakedToken).balanceOf(address(position.callerAddress));

        position.callerAddress.approve(position.stakedToken, address(market), stakedAmount);
        position.callerAddress.swap(
            market, // adapter
            address(position.stakedToken), // tokenIn
            busdAddress, // tokenOut
            stakedAmount, // amountIn
            amountOutMin, // amountOutMin
            positions[positionIndex].owner, // to
            marketHints // hints
        );

        // Firstly, 'transfer', then 'dumpRewards': order is important here when (rewardToken == CAKE)
        position.callerAddress.transferAll(position.rewardToken, position.owner);

        closePosition(positionIndex);
    }

    function closePosition(uint positionIndex) private {
        PositionInfo storage position = positions[positionIndex];

        position.closed = true;

        if (isModernProxy(position.callerAddress)) {
            withdrawGasTank(position.callerAddress, position.owner);
            proxyPool.release(position.callerAddress);
        }

        _gelatoCancelTask(position.gelatoLiquidateTaskId);

        emit PositionWasClosed(positionIndex);
    }

    function depositGasTank(ProxyCaller proxy) private {
        address(proxy).call{value: msg.value}("");
    }

    function withdrawGasTank(ProxyCaller proxy, address owner) private {
        proxy.transferNativeAll(owner);
    }

    function isModernProxy(ProxyCaller proxy) public returns (bool) {
        return address(proxy).code.length == 945;
    }

    //
    // Gelato
    //

    struct AutomationParams {
        uint256 positionIndex;
        uint256 minAmountOut;
        bytes marketHints;
    }

    function isOpen(PositionInfo storage position) private view returns (bool) {
        return !position.closed && position.owner != address(0);
    }

    function automationResolve(uint positionIndex) public returns (bool canExec, bytes memory execPayload) {
        PositionInfo storage position = positions[positionIndex];

        canExec = isOpen(position);
        if (!canExec) {
            return (canExec, execPayload);
        }

        PositionBalanceLib.PositionBalance memory balance = PositionBalanceLib.get(poolAdapters, position);

        uint amountIn = balance.balance;
        (uint amountOut, bytes memory hints) = market.estimateOut(address(position.stakedToken), busdAddress, amountIn);

        canExec = PositionExchangeLib.isPriceOutsideRange(position, amountOut, amountIn);
        if (!canExec) {
            return (canExec, execPayload);
        }

        // if price oracle exists then double check
        // that price is outside range
        IPriceOracle oracle = priceOracles[position.stakedToken];
        if (address(oracle) != address(0)) {
            uint oracleMultiplier = 10**oracle.decimals();
            uint oraclePrice = uint(oracle.latestAnswer());
            canExec = PositionExchangeLib.isPriceOutsideRange(position, oraclePrice, oracleMultiplier);
            if (!canExec) {
                return (canExec, execPayload);
            }
        }

        uint minAmountOut = amountOut - (amountOut * position.maxSlippage) / SLIPPAGE_MULTIPLIER;
        AutomationParams memory params = AutomationParams(positionIndex, minAmountOut, hints);
        execPayload = abi.encodeWithSelector(this.automationExec.selector, abi.encode(params));
    }

    function automationExec(bytes calldata raw) public onlyAutomator {
        AutomationParams memory params = abi.decode(raw, (AutomationParams));
        gelatoPayFee(params.positionIndex);
        liquidateByIndexImpl(params.positionIndex, params.minAmountOut, params.marketHints);
    }

    function gelatoPayFee(uint positionIndex) private {
        (uint feeAmount, address feeToken) = gelatoOps.getFeeDetails();
        if (feeAmount == 0) {
            return;
        }

        require(feeToken == GelatoNativeToken);

        address feeDestination = gelatoOps.gelato();
        ProxyCaller proxy = positions[positionIndex].callerAddress;
        proxy.transferNative(feeDestination, feeAmount);
    }

    function _gelatoCreateTask(uint positionIndex) private returns (bytes32) {
        return
            gelatoOps.createTaskNoPrepayment(
                address(this), /* execAddress */
                this.automationExec.selector, /* execSelector */
                address(this), /* resolverAddress */
                abi.encodeWithSelector(this.automationResolve.selector, positionIndex), /* resolverData */
                GelatoNativeToken
            );
    }

    function _gelatoCancelTask(bytes32 gelatoTaskId) private {
        gelatoOps.cancelTask(gelatoTaskId);
    }
}
