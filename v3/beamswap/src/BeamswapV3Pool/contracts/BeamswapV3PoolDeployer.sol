// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import "./interfaces/IBeamswapV3PoolDeployer.sol";

import "./BeamswapV3Pool.sol";

contract BeamswapV3PoolDeployer is IBeamswapV3PoolDeployer {
    struct Parameters {
        address factory;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
    }

    /// @inheritdoc IBeamswapV3PoolDeployer
    Parameters public override parameters;

    address public factoryAddress;

    address private _deployer;

    /// @notice Emitted when factory address is set
    event SetFactoryAddress(address indexed factory);

    constructor() {
        _deployer = msg.sender;
    }

    function setFactoryAddress(address _factoryAddress) external {
        require(factoryAddress == address(0) && msg.sender == _deployer);

        factoryAddress = _factoryAddress;

        emit SetFactoryAddress(_factoryAddress);
    }

    /// @dev Deploys a pool with the given parameters by transiently setting the parameters storage slot and then
    /// clearing it after deploying the pool.
    /// @param factory The contract address of the Beamswap V3 factory
    /// @param token0 The first token of the pool by address sort order
    /// @param token1 The second token of the pool by address sort order
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @param tickSpacing The spacing between usable ticks
    function deploy(
        address factory,
        address token0,
        address token1,
        uint24 fee,
        int24 tickSpacing
    ) external override returns (address pool) {
        require(msg.sender == factoryAddress);
        parameters = Parameters({
            factory: factory,
            token0: token0,
            token1: token1,
            fee: fee,
            tickSpacing: tickSpacing
        });
        pool = address(
            new BeamswapV3Pool{
                salt: keccak256(abi.encode(token0, token1, fee))
            }()
        );
        delete parameters;
    }
}
