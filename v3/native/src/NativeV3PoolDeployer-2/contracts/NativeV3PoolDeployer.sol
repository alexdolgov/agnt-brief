// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;

import './interfaces/INativeV3PoolDeployer.sol';

import './NativeV3Pool.sol';

contract NativeV3PoolDeployer is INativeV3PoolDeployer {
    struct Parameters {
        address factory;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
    }

    /// @inheritdoc INativeV3PoolDeployer
    Parameters public override parameters;

    address public factory;

    /// @notice Emitted when factory address is set
    event SetFactory(address indexed factory);

    modifier onlyFactory() {
        require(msg.sender == factory, 'only Native V3 factory');
        _;
    }

    function setFactory(address _factory) external {
        require(factory == address(0), 'already initialized');

        factory = _factory;

        emit SetFactory(_factory);
    }

    /// @dev Deploys a pool with the given parameters by transiently setting the parameters storage slot and then
    /// clearing it after deploying the pool.
    /// @param _factory The contract address of the Native V3 factory
    /// @param _token0 The first token of the pool by address sort order
    /// @param _token1 The second token of the pool by address sort order
    /// @param _fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @param _tickSpacing The spacing between usable ticks
    function deploy(
        address _factory,
        address _token0,
        address _token1,
        uint24 _fee,
        int24 _tickSpacing
    ) external override onlyFactory returns (address pool) {
        parameters = Parameters({
            factory: _factory,
            token0: _token0,
            token1: _token1,
            fee: _fee,
            tickSpacing: _tickSpacing
        });
        pool = address(new NativeV3Pool{salt: keccak256(abi.encode(_token0, _token1, _fee))}());
        delete parameters;
    }
}
