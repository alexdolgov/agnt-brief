// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import './interfaces/IDackieV3PoolDeployer.sol';

import './DackieV3Pool.sol';

contract DackieV3PoolDeployer is IDackieV3PoolDeployer {
    struct Parameters {
        address factory;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
    }

    Parameters public override parameters;

    address public immutable override factoryAddress;

    address private constant BLAST = 0x4300000000000000000000000000000000000002;

    constructor(address _factoryAddress) {
        IBlast(BLAST).configureClaimableGas();
        factoryAddress = _factoryAddress;
    }

    modifier onlyFactory() {
        require(msg.sender == factoryAddress, "only factory can call deploy");
        _;
    }

    function deploy(
        address factory,
        address token0,
        address token1,
        uint24 fee,
        int24 tickSpacing
    ) external override onlyFactory returns (address pool) {
        parameters = Parameters({factory: factory, token0: token0, token1: token1, fee: fee, tickSpacing: tickSpacing});
        pool = address(new DackieV3Pool{salt: keccak256(abi.encode(token0, token1, fee))}());
        delete parameters;
    }

    function claimGas(address _recipient) external override onlyFactory returns (uint256 amount) {
        amount = IBlast(BLAST).claimMaxGas(address(this), _recipient);
    }
}
