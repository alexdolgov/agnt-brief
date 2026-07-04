// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;

// -----------------------------------------------------------------------------
// Fork provenance:
//   Upstream: GammaStrategies/hypervisor @ b4d90b3 (2025-10-20)
//   File:     contracts/HypervisorFactory.sol
// Rubicon CLMM adaptation:
//   - `IUniswapV3Factory`       -> `IRubiconV3Factory` (ABI-compatible rename fork)
//   - `uniswapV3Factory` state  -> `rubiconV3Factory`  (public getter renamed)
//   - `_uniswapV3Factory` arg   -> `_rubiconV3Factory`
//   - Event emitted on creation is preserved (HypervisorCreated).
//   - All other logic and storage layout unchanged.
// -----------------------------------------------------------------------------

import {IRubiconV3Factory} from './rubicon-clmm/interfaces/IRubiconV3Factory.sol';

import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';

import {Hypervisor} from './Hypervisor.sol';

/// @title HypervisorFactory
/// @notice Deploys Gamma-style Hypervisor vaults on top of RubiconV3 pools.
contract HypervisorFactory is Ownable {
    IRubiconV3Factory public rubiconV3Factory;
    mapping(address => mapping(address => mapping(uint24 => address))) public getHypervisor; // token0, token1, fee -> hypervisor address
    address[] public allHypervisors;

    event HypervisorCreated(address token0, address token1, uint24 fee, address hypervisor, uint256);

    constructor(address _rubiconV3Factory) {
        require(_rubiconV3Factory != address(0), "rubiconV3Factory should be non-zero");
        rubiconV3Factory = IRubiconV3Factory(_rubiconV3Factory);
    }

    /// @notice Get the number of hypervisors created
    /// @return Number of hypervisors created
    function allHypervisorsLength() external view returns (uint256) {
        return allHypervisors.length;
    }

    /// @notice Create a Hypervisor over a RubiconV3 pool.
    /// @dev If the underlying RubiconV3 pool does not yet exist for (token0, token1, fee),
    ///      it will be created via the factory. The pool still needs to be initialized
    ///      (slot0 set via IRubiconV3Pool.initialize) before the Hypervisor can mint liquidity.
    /// @param tokenA Address of token0 (order-insensitive)
    /// @param tokenB Address of token1
    /// @param fee The desired fee tier (must be enabled on the RubiconV3 factory)
    /// @param name Name of the hypervisor's ERC20 share token
    /// @param symbol Symbol of the hypervisor's ERC20 share token
    /// @return hypervisor Address of hypervisor created
    function createHypervisor(
        address tokenA,
        address tokenB,
        uint24 fee,
        string memory name,
        string memory symbol
    ) external onlyOwner returns (address hypervisor) {
        require(tokenA != tokenB, 'SF: IDENTICAL_ADDRESSES');
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'SF: ZERO_ADDRESS');
        require(getHypervisor[token0][token1][fee] == address(0), 'SF: HYPERVISOR_EXISTS');
        int24 tickSpacing = rubiconV3Factory.feeAmountTickSpacing(fee);
        require(tickSpacing != 0, 'SF: INCORRECT_FEE');
        address pool = rubiconV3Factory.getPool(token0, token1, fee);
        if (pool == address(0)) {
            pool = rubiconV3Factory.createPool(token0, token1, fee);
        }
        hypervisor = address(
            new Hypervisor{salt: keccak256(abi.encodePacked(token0, token1, fee, tickSpacing))}(pool, owner(), name, symbol)
        );

        getHypervisor[token0][token1][fee] = hypervisor;
        getHypervisor[token1][token0][fee] = hypervisor; // populate mapping in the reverse direction
        allHypervisors.push(hypervisor);
        emit HypervisorCreated(token0, token1, fee, hypervisor, allHypervisors.length);
    }
}
