// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/**
 * @title IGauge Interface
 * @notice Interface for interacting with Gauge contracts
 */
interface IGauge {
    function claimFees() external;
}

/**
 * @title IPool Interface
 * @notice Interface for interacting with Pool contracts
 */
interface IPool {
    function token0() external view returns (address);
    function token1() external view returns (address);
    function fee() external view returns (uint24);
    function protocolFees() external view returns (uint128 token0, uint128 token1);
    function fees() external view returns (address _pairFees);
}

/**
 * @title IFeeCollector Interface
 * @notice Interface for collecting protocol fees
 */
interface IFeeCollector {
    function collectProtocolFees(address _pool) external;
}

/**
 * @title IVoter Interface
 * @notice Interface for accessing voter contract functionality
 */
interface IVoter {
    function length() external view returns (uint256);
    function pools(uint256) external view returns (address);
    function gauges(address _pool) external view returns (address);
}

/**
 * @title IERC20 Interface
 * @notice Standard ERC20 token interface for balance checks
 */
interface IERC20 {
    function balanceOf(address) external view returns (uint256);
}

/**
 * @title MinimalizedFeePusher
 * @notice Contract for managing and claiming fees from various pool types
 * @dev Handles both Concentrated Liquidity (CL) and V1 pools
 */
contract MinimalizedFeePusher {
    // sAVAX token address
    address private constant SAVAX = 0x2b2C81e08f1Af8835a78Bb2A90AE924ACE0eA4bE;
    // Immutable addresses for core contracts
    IVoter private constant VOTER = IVoter(0xAAA2564DEb34763E3d05162ed3f5C2658691f499);
    IFeeCollector private constant COLLECTOR = IFeeCollector(0xAA2ef8a3b34B414F8F7B47183971f18e4F367dC4);

    /**
     * @notice Claims fees from multiple pools in a single transaction
     * @param _pools Array of pool addresses to claim fees from
     * @dev Automatically detects pool type (CL or V1) and claims accordingly
     */
    function batchClaim(address[] calldata _pools) external {
        uint256 length = _pools.length;
        for (uint256 i = 0; i < length; ++i) {
            address pool = _pools[i];
            try IPool(pool).fee() {
                // Pool is CL type
                address token0 = IPool(pool).token0();
                address token1 = IPool(pool).token1();
                
                // Check if either token is sAVAX and verify balance
                if (token0 == SAVAX || token1 == SAVAX) {
                    (uint128 amount0, uint128 amount1) = IPool(pool).protocolFees();
                    require(
                        (token0 == SAVAX && amount0 > 0) || 
                        (token1 == SAVAX && amount1 > 0),
                        "No sAVAX fees to claim"
                    );
                }
                
                COLLECTOR.collectProtocolFees(pool);
            } catch {
                // Pool is V1 type
                address gauge = VOTER.gauges(pool);
                if (gauge != address(0)) {
                    address token0 = IPool(pool).token0();
                    address token1 = IPool(pool).token1();
                    
                    // Check if either token is sAVAX and verify balance
                    if (token0 == SAVAX || token1 == SAVAX) {
                        address feeAddress = IPool(pool).fees();
                        require(
                            (token0 == SAVAX && IERC20(token0).balanceOf(feeAddress) > 0) || 
                            (token1 == SAVAX && IERC20(token1).balanceOf(feeAddress) > 0),
                            "No sAVAX fees to claim"
                        );
                    }
                    
                    IGauge(gauge).claimFees();
                }
            }
        }
    }

    /**
     * @notice Retrieves pending fees for a Concentrated Liquidity pool
     * @param _pool Address of the CL pool
     * @return _poolID Address of the pool
     * @return _tokens Array of token addresses [token0, token1]
     * @return _amounts Array of pending fee amounts [amount0, amount1]
     */
    function pendingFees(address _pool)
        public
        view
        returns (
            address _poolID,
            address[] memory _tokens,
            uint128[] memory _amounts
        )
    {
        require(_pool != address(0), "Invalid pool address");
        
        address[] memory localTokens = new address[](2);
        uint128[] memory localAmounts = new uint128[](2);

        // Get token addresses
        localTokens[0] = IPool(_pool).token0();
        localTokens[1] = IPool(_pool).token1();

        // Get protocol fees
        (uint128 amount0, uint128 amount1) = IPool(_pool).protocolFees();
        localAmounts[0] = amount0;
        localAmounts[1] = amount1;

        return (_pool, localTokens, localAmounts);
    }

    /**
     * @notice Retrieves pending fees for a V1 (legacy) pool
     * @param _pool Address of the V1 pool
     * @return _poolID Address of the pool
     * @return _tokens Array of token addresses [token0, token1]
     * @return _amounts Array of pending fee amounts [amount0, amount1]
     */
    function pendingLegacyFees(address _pool)
        public
        view
        returns (
            address _poolID,
            address[] memory _tokens,
            uint256[] memory _amounts
        )
    {
        require(_pool != address(0), "Invalid pool address");
        
        address[] memory localTokens = new address[](2);
        uint256[] memory localAmounts = new uint256[](2);

        // Get token addresses
        localTokens[0] = IPool(_pool).token0();
        localTokens[1] = IPool(_pool).token1();

        // Get fee balances
        address feeAddress = IPool(_pool).fees();
        localAmounts[0] = IERC20(localTokens[0]).balanceOf(feeAddress);
        localAmounts[1] = IERC20(localTokens[1]).balanceOf(feeAddress);

        return (_pool, localTokens, localAmounts);
    }
}