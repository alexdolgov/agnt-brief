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

    function protocolFees()
        external
        view
        returns (uint128 token0, uint128 token1);

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
    // Immutable addresses for core contracts
    IVoter private constant VOTER =
        IVoter(0xAAAf3D9CDD3602d117c67D80eEC37a160C8d9869);
    IFeeCollector private constant COLLECTOR =
        IFeeCollector(0xAAA2A49958a443Dc9d19FdDEe873B5D1d6e84A2f);

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
                (uint128 t0, uint128 t1) = IPool(pool).protocolFees();

                if (t0 > 1 && t1 > 1) {
                    COLLECTOR.collectProtocolFees(pool);
                }
            } catch {
                // Pool is V1 type
                address gauge = VOTER.gauges(pool);
                if (gauge != address(0)) {
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
