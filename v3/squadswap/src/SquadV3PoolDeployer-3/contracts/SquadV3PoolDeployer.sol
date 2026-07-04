// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import './interfaces/ISquadV3PoolDeployer.sol';
import './SquadV3Pool.sol';
import './blast/interfaces/IBlast.sol';

contract SquadV3PoolDeployer is ISquadV3PoolDeployer {
    struct Parameters {
        address factory;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
    }

    /// @inheritdoc ISquadV3PoolDeployer
    Parameters public override parameters;

    address public factoryAddress;
    address private constant BLAST = 0x4300000000000000000000000000000000000002;

    /// @notice Emitted when factory address is set
    event SetFactoryAddress(address indexed factory);

    modifier onlyFactory() {
        require(msg.sender == factoryAddress, "only factory can call deploy");
        _;
    }

    constructor() {
        IBlast(BLAST).configureClaimableGas();
    }

    function setFactoryAddress(address _factoryAddress) external {
        require(factoryAddress == address(0), "already initialized");

        factoryAddress = _factoryAddress;

        emit SetFactoryAddress(_factoryAddress);
    }

    /// @dev Deploys a pool with the given parameters by transiently setting the parameters storage slot and then
    /// clearing it after deploying the pool.
    /// @param factory The contract address of the SquadSwap V3 factory
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
    ) external override onlyFactory returns (address pool) {
        parameters = Parameters({factory: factory, token0: token0, token1: token1, fee: fee, tickSpacing: tickSpacing});
        pool = address(new SquadV3Pool{salt: keccak256(abi.encode(token0, token1, fee))}());
        delete parameters;
    }

    function claimGas(address _recipient) external override onlyFactory returns (uint256 amount) {
        amount = IBlast(BLAST).claimMaxGas(address(this), _recipient);
    }
}
