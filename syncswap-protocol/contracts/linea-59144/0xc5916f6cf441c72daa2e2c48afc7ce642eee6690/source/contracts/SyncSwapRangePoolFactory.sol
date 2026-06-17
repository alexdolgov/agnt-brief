// SPDX-License-Identifier: GPL-2.0-or-later

pragma solidity =0.7.6;
pragma abicoder v2;

import "./interfaces/ISyncSwapRangePoolFactory.sol";
import "./interfaces/IVoter.sol";
import "./interfaces/IFeeProvider.sol";
import "./interfaces/IFeeManagerV3.sol";

import "./libraries/external/Clones.sol";
import "./libraries/external/Ownable.sol";
import "./libraries/external/ExcessivelySafeCall.sol";

import "./SyncSwapRangePool.sol";

/// @title Canonical CL factory
/// @notice Deploys CL pools and manages ownership and control over pool protocol fees
contract SyncSwapRangePoolFactory is ISyncSwapRangePoolFactory, Ownable {
    using ExcessivelySafeCall for address;

    /// @dev the pool master
    address public immutable override master;

    /// @dev the pool implementation
    address public immutable override poolImplementation;

    /// @dev the fee manager
    address public override feeManager;

    /// @dev the fee collector
    address public override feeCollector;

    /// @dev the pool creator
    address public override poolCreator;

    /// @dev the gauge factory
    address public override gaugeFactory;

    /// @inheritdoc ISyncSwapRangePoolFactory
    mapping(int24 => uint24) public override defaultSwapFeeByTickSpacing;

    /// @inheritdoc ISyncSwapRangePoolFactory
    mapping(address => mapping(address => mapping(int24 => address))) public override getPool;

    struct PoolInfo {
        address pool;
        int24 tickSpacing;
    }

    mapping(address => mapping(address => PoolInfo[])) public pairPools;

    /// @dev Returns if an address is a pool created by the factory
    mapping(address => bool) public override isPool;

    /// @inheritdoc ISyncSwapRangePoolFactory
    address[] public override allPools;

    int24[] public _tickSpacings;

    event SetFeeCollector(address indexed previousValue, address indexed newValue);
    event SetPoolCreator(address indexed previousValue, address indexed newValue);
    event SetGaugeFactory(address indexed previousValue, address indexed newValue);
    //event SetFeeProvider(address indexed previousValue, address indexed newValue);
    event SetFeeManager(address indexed previousValue, address indexed newValue);
    event SetTickSpacingDefaultSwapFee(int24 indexed tickSpacing, uint24 indexed fee);

    constructor(address _master, address _poolImplementation, address _feeManager) {
        require(_master != address(0) && _poolImplementation != address(0), "Invalid address");
        master = _master;
        poolImplementation = _poolImplementation;

        feeCollector = msg.sender;
        poolCreator = msg.sender;

        // set fee manager
        _setFeeManager(_feeManager);

        // enable default tick spacings
        // 1 - 0.01%
        _enableTickSpacing(1, 100);

        // 50 - 0.05%
        _enableTickSpacing(50, 500);

        // 100 - 0.05%
        _enableTickSpacing(100, 500);

        // 200 - 0.3%
        _enableTickSpacing(200, 3000);

        // 2000 - 0.1%
        _enableTickSpacing(2000, 10000);
    }

    function tickSpacings() external view override returns (int24[] memory) {
        return _tickSpacings;
    }

    function tickSpacingsLength() external view returns (uint) {
        return _tickSpacings.length;
    }

    function allPoolsLength() external view override returns (uint) {
        return allPools.length;
    }

    function getPairPools(address tokenA, address tokenB) external view returns (PoolInfo[] memory) {
        return pairPools[tokenA][tokenB];
    }

    function pairPoolsLength(address tokenA, address tokenB) external view returns (uint) {
        return pairPools[tokenA][tokenB].length;
    }

    function isPair(address pool) external view override returns (bool) {
        return isPool[pool];
    }

    function createPool(
        bytes calldata data
    ) external returns (address pool) {
        (address tokenA, address tokenB, int24 tickSpacing, uint160 sqrtPriceX96) =
            abi.decode(data, (address, address, int24, uint160));

        pool = createPool(tokenA, tokenB, tickSpacing, sqrtPriceX96);
    }

    /// @dev Creates a pool
    function createPool(
        address tokenA,
        address tokenB,
        int24 tickSpacing,
        uint160 sqrtPriceX96
    ) public override returns (address pool) {
        // check creator
        require(msg.sender == poolCreator, "Not pool creator");

        // check tokens
        require(tokenA != tokenB, "Identical token");
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), "Invalid token");

        // check tick spacing
        require(defaultSwapFeeByTickSpacing[tickSpacing] != 0, "Tick spacing not enabled");

        // check pool
        require(getPool[token0][token1][tickSpacing] == address(0));

        // create pool contract via clone
        pool = Clones.cloneDeterministic({
            master: poolImplementation,
            salt: keccak256(abi.encode(token0, token1, tickSpacing))
        });

        // initialize pool
        SyncSwapRangePool(pool).initialize({
            _factory: address(this),
            _token0: token0,
            _token1: token1,
            _tickSpacing: tickSpacing,
            _sqrtPriceX96: sqrtPriceX96
        });

        // add to all pools list
        allPools.push(pool);

        // update mappings
        isPool[pool] = true;
        getPool[token0][token1][tickSpacing] = pool;
        getPool[token1][token0][tickSpacing] = pool; // populate mapping in the reverse direction

        PoolInfo memory info = PoolInfo(pool, tickSpacing);
        pairPools[token0][token1].push(info);
        pairPools[token1][token0].push(info); // populate mapping in the reverse direction

        // register with pool master
        IPoolMaster(master).registerPool(
            pool,
            4, // pool type
            abi.encode(token0, token1, tickSpacing),
            token0,
            token1
        );

        emit PoolCreated(token0, token1, tickSpacing, pool);
    }

    function getProtocolFee(address _pool) external view override returns (uint24) {
        return IFeeManagerV3(feeManager).getProtocolFee(_pool);
    }

    /// @dev Returns swap fee for a pool
    function getSwapFee(
        address _pool,
        address _sender,
        address _tokenIn,
        address _tokenOut,
        bytes memory _data
    ) external view override returns (uint24) {
        address _feeManager = feeManager;
        if (_feeManager != address(0)) {
            try IFeeManagerV3(_feeManager).getSwapFee(
                _pool,
                _sender,
                _tokenIn,
                _tokenOut,
                _data
            ) returns (uint24 _fee) {
                return _fee;
            } catch {}
        }

        // use default fee of tick spacing
        int24 poolTickSpacing = SyncSwapRangePool(_pool).tickSpacing();
        return defaultSwapFeeByTickSpacing[poolTickSpacing];
    }

    /// @dev Updates fee collector
    function setFeeCollector(address _feeCollector) external onlyOwner {
        address _previous = feeCollector;
        feeCollector = _feeCollector;
        emit SetFeeCollector(_previous, _feeCollector);
    }

    /// @dev Updates pool creator
    function setPoolCreator(address _poolCreator) external onlyOwner {
        address _previous = poolCreator;
        poolCreator = _poolCreator;
        emit SetPoolCreator(_previous, _poolCreator);
    }

    /// @dev Updates fee manager
    function setFeeManager(address _feeManager) external onlyOwner {
        _setFeeManager(_feeManager);
    }

    function _setFeeManager(address _feeManager) private {
        address _previous = _feeManager;
        feeManager = _feeManager;
        emit SetFeeManager(_previous, _feeManager);
    }

    /// @dev Enables a tick spacing
    function enableTickSpacing(int24 _tickSpacing, uint24 _fee) public onlyOwner {
        _enableTickSpacing(_tickSpacing, _fee);
    }

    function _enableTickSpacing(int24 _tickSpacing, uint24 _fee) private {
        // tick spacing is capped at 16384 to prevent the situation where tickSpacing is so large that
        // TickBitmap#nextInitializedTickWithinOneWord overflows int24 container from a valid tick
        // 16384 ticks represents a >5x price change with ticks of 1 bips
        require(_tickSpacing > 0 && _tickSpacing < 16384, "Invalid tick spacing");
        require(defaultSwapFeeByTickSpacing[_tickSpacing] == 0, "Already enabled");

        _tickSpacings.push(_tickSpacing);

        _setDefaultSwapFeeForTickSpacing(_tickSpacing, _fee);

        emit TickSpacingEnabled(_tickSpacing, _fee);
    }

    /// @dev Updates default swap fee for a tick spacing
    function setDefaultSwapFeeForTickSpacing(int24 _tickSpacing, uint24 _fee) external onlyOwner {
        require(defaultSwapFeeByTickSpacing[_tickSpacing] != 0, "Tick spacing not enabled");
        _setDefaultSwapFeeForTickSpacing(_tickSpacing, _fee);
    }

    function _setDefaultSwapFeeForTickSpacing(int24 _tickSpacing, uint24 _fee) private {
        require(_fee > 0 && _fee <= 100000, "Invalid fee");
        defaultSwapFeeByTickSpacing[_tickSpacing] = _fee;
        emit SetTickSpacingDefaultSwapFee(_tickSpacing, _fee);
    }

    /// @dev Updates gauge factory
    function setGaugeFactory(address _gaugeFactory) external onlyOwner {
        address _previous = gaugeFactory;
        gaugeFactory = _gaugeFactory;
        emit SetGaugeFactory(_previous, _gaugeFactory);
    }
}