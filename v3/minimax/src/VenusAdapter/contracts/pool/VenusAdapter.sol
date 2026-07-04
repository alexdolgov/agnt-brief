// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IPoolAdapter.sol";
import "../interfaces/IWBNB.sol";

interface IVenusPool {
    function mint() external payable;

    function mint(uint mintAmount) external returns (uint);

    function redeemUnderlying(uint redeemAmount) external returns (uint);

    function balanceOfUnderlying(address owner) external returns (uint);

    function underlying() external view returns (address);
}

contract VenusAdapter is IPoolAdapter {
    address private immutable wbnbAddress;

    constructor(address _wbnbAddress) {
        wbnbAddress = _wbnbAddress;
    }

    function stakingBalanceImpl(address pool) private returns (uint256) {
        return IVenusPool(pool).balanceOfUnderlying(address(this));
    }

    function stakingBalance(address pool, bytes memory) external returns (uint256) {
        return stakingBalanceImpl(pool);
    }

    function rewardBalance(address, bytes memory) external pure returns (uint256) {
        return 0;
    }

    function isBnbAdapter() private view returns (bool) {
        return wbnbAddress != address(0);
    }

    function deposit(
        address pool,
        uint256 amount,
        bytes memory
    ) external {
        if (isBnbAdapter()) {
            IWBNB(wbnbAddress).withdraw(amount);
            IVenusPool(pool).mint{value: amount}();
        } else {
            uint returnCode = IVenusPool(pool).mint(amount);
            require(returnCode == 0, "got non-zero return code");
        }
    }

    function withdrawImpl(address pool, uint256 amount) private {
        uint returnCode = IVenusPool(pool).redeemUnderlying(amount);
        require(returnCode == 0, "got non-zero return code");
        if (isBnbAdapter()) {
            IWBNB(wbnbAddress).deposit{value: amount}();
        }
    }

    function withdraw(
        address pool,
        uint256 amount,
        bytes memory
    ) external {
        withdrawImpl(pool, amount);
    }

    function withdrawAll(
        address pool,
        bytes memory /* args */
    ) external {
        withdrawImpl(pool, stakingBalanceImpl(pool));
    }

    function underlying(address pool) private view returns (address) {
        if (isBnbAdapter()) {
            return wbnbAddress;
        }
        return IVenusPool(pool).underlying();
    }

    function stakedToken(address pool) external view returns (address) {
        return underlying(pool);
    }

    function rewardToken(address pool) external view returns (address) {
        return underlying(pool);
    }
}
