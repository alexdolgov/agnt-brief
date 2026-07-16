// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IGauge {
    function claimFees() external;
}

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

interface IFeeCollector {
    function collectProtocolFees(address _pool) external;
}

interface IVoter {
    function length() external view returns (uint256);

    function pools(uint256) external view returns (address);

    function gauges(address _pool) external view returns (address);
}

interface IERC20 {
    function balanceOf(address) external view returns (uint256);
}

contract MinimalizedFeePusher {
    IVoter private constant VOTER =
        IVoter(0xAAAf3D9CDD3602d117c67D80eEC37a160C8d9869);
    IFeeCollector private constant COLLECTOR =
        IFeeCollector(0xAAA2A49958a443Dc9d19FdDEe873B5D1d6e84A2f);

    ///@notice claim batched fees, regardless of v1 or CL status
    function batchClaim(address[] calldata _pools) external {
        for (uint256 i = 0; i < _pools.length; ++i) {
            try IPool(_pools[i]).fee() {
                COLLECTOR.collectProtocolFees(_pools[i]);
            } catch {
                IGauge(VOTER.gauges(_pools[i])).claimFees();
            }
        }
    }

    ///@notice shows the pending fees for a CL pool
    function pendingFees(address _pool)
        public
        view
        returns (
            address _poolID,
            address[] memory _tokens,
            uint128[] memory _amounts
        )
    {
        address[] memory localTokens = new address[](2);
        uint128[] memory localAmounts = new uint128[](2);

        localTokens[0] = IPool(_pool).token0();
        localTokens[1] = IPool(_pool).token1();

        (uint128 amount0, uint128 amount1) = IPool(_pool).protocolFees();
        localAmounts[0] = amount0;
        localAmounts[1] = amount1;

        return (_pool, localTokens, localAmounts);
    }

    ///@notice shows pending fees for legacy (v1) pools
    function pendingLegacyFees(address _pool)
        public
        view
        returns (
            address _poolID,
            address[] memory _tokens,
            uint256[] memory _amounts
        )
    {
        address[] memory localTokens = new address[](2);
        uint256[] memory localAmounts = new uint256[](2);

        localTokens[0] = IPool(_pool).token0();
        localTokens[1] = IPool(_pool).token1();

        localAmounts[0] = IERC20(localTokens[0]).balanceOf(IPool(_pool).fees());
        localAmounts[1] = IERC20(localTokens[1]).balanceOf(IPool(_pool).fees());

        return (_pool, localTokens, localAmounts);
    }
}