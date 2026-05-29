// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/INativeTreasury.sol";

// generic interface to treasury contract
contract NativeTreasury is INativeTreasury {
    using SafeERC20 for IERC20;

    address public token0;
    address public token1;

    uint128 internal reserve0; // uses single storage slot, accessible via getReserves
    uint128 internal reserve1; // uses single storage slot, accessible via getReserves

    address public pool;

    modifier onlyPool() {
        require(msg.sender == pool, "caller not Pool");
        _;
    }

    constructor(address _token0, address _token1) {
        token0 = _token0;
        token1 = _token1;
    }

    function syncReserve() public override onlyPool virtual {
        uint balance0 = IERC20(token0).balanceOf(address(this));
        uint balance1 = IERC20(token1).balanceOf(address(this));

        _update(balance0, balance1);
    }

    function getReserves() public view override returns (uint128 _reserve0, uint128 _reserve1) {
        _reserve0 = reserve0;
        _reserve1 = reserve1;
    }

    function setPoolAddress(address _pool) external {
        require(pool == address(0), "pool already set, cannot reset");
        pool = _pool;
        IERC20(token0).safeApprove(_pool, type(uint256).max);
        IERC20(token1).safeApprove(_pool, type(uint256).max);
    }

    // update reserves and, on the first call per block, price accumulators
    function _update(uint balance0, uint balance1) internal {
        require(
            balance0 <= type(uint128).max && balance1 <= type(uint128).max,
            "_update: OVERFLOW"
        );
        reserve0 = uint128(balance0);
        reserve1 = uint128(balance1);
        emit ReservesSynced(reserve0, reserve1);
    }
}
