// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {TickMath} from "algebra-core/libraries/TickMath.sol";
import "algebra-core/interfaces/IAlgebraFactory.sol";
import "algebra-core/interfaces/IAlgebraPool.sol";
import "../PoolWithLPToken.sol";
import "contracts/lib/RPow.sol";
import "contracts/interfaces/IConverter.sol";
import "openzeppelin/utils/math/SafeCast.sol";
import "openzeppelin/proxy/ERC1967/ERC1967Upgrade.sol";

interface IUniswapPair {
    function burn(address to) external;
}

contract AlgebraConverter is IConverter, Pool {
    IAlgebraFactory immutable algebraFactory;
    address expectCallbackFrom;
    using TokenLib for Token;
    using SafeCast for uint256;
    using SafeCast for int256;
    using UncheckedMemory for Token[];
    using UncheckedMemory for int128[];

    constructor(
        IVault vault_,
        IAlgebraFactory algebraFactory_
    ) Pool(vault_, address(this), address(this)) {
        algebraFactory = algebraFactory_;
    }

    function velocore__convert(
        address,
        Token[] calldata t,
        int128[] memory r,
        bytes calldata
    ) external onlyVault {
        address pool = algebraFactory.poolByPair(t[0].addr(), t[1].addr());
        bool zeroToOne = r[0] != type(int128).max && r[0] > 0;
        expectCallbackFrom = pool;
        IAlgebraPool(pool).swap(
            address(vault),
            zeroToOne,
            zeroToOne ? r[0] : r[1],
            zeroToOne ? TickMath.MIN_SQRT_RATIO + 1 : TickMath.MAX_SQRT_RATIO - 1,
            abi.encode(t)
        );
    }

    receive() external payable {}

    function algebraSwapCallback(
        int256 amount0,
        int256 amount1,
        bytes calldata tokens_
    ) public {
        require(msg.sender == expectCallbackFrom);
        expectCallbackFrom = address(0);
        IERC20[] memory tokens = abi.decode(tokens_, (IERC20[]));
        if (amount0 > 0) {
            tokens[0].transfer(msg.sender, uint256(amount0));
        }
        if (amount1 > 0) {
            tokens[1].transfer(msg.sender, uint256(amount0));
        }
    }
}
