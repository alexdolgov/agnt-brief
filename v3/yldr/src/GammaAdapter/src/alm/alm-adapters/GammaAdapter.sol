// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {BaseALMAdapter} from "./BaseALMAdapter.sol";
import {IUniProxy} from "@yldr-lending/core/src/interfaces/ext/IUniProxy.sol";
import {IHypervisor} from "@yldr-lending/core/src/interfaces/ext/IHypervisor.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @author YLDR <admin@apyflow.com>
contract GammaAdapter is BaseALMAdapter {
    IUniProxy public immutable uniProxy;

    constructor(IUniProxy _uniProxy) {
        uniProxy = _uniProxy;
    }

    function deposit(DepositParams memory params)
        public
        override
        returns (uint256 shares, uint256 amount0Used, uint256 amount1Used)
    {
        (uint256 total0, uint256 total1) = IHypervisor(params.vault).getTotalAmounts();
        amount0Used = Math.min(params.amount0Desired, params.amount1Desired * total0 / total1);
        amount1Used = Math.min(params.amount1Desired, amount0Used * total1 / total0);
        shares = uniProxy.deposit(
            amount0Used,
            amount1Used,
            params.receiver,
            params.vault,
            [uint256(0), uint256(0), uint256(0), uint256(0)]
        );
    }

    function withdraw(WithdrawParams memory params) public override returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = IHypervisor(params.vault).withdraw(
            params.shares, params.receiver, address(this), [uint256(0), uint256(0), uint256(0), uint256(0)]
        );
        require(amount0 >= params.amount0Min);
        require(amount1 >= params.amount1Min);
    }

    function getVaultTokens(address vault) public view override returns (address token0, address token1) {
        token0 = IHypervisor(vault).token0();
        token1 = IHypervisor(vault).token1();
    }

    function getVaultAmounts(address vault) public view override returns (uint256 total0, uint256 total1) {
        (total0, total1) = IHypervisor(vault).getTotalAmounts();
    }
}
