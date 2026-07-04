// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.6.11;

import "@openzeppelin/contracts-ethereum-package/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/utils/ReentrancyGuard.sol";
import "./lib/interfaces/IGlobalPool.sol";
import "./lib/interfaces/IWithdrawalPool.sol";

/*
 * Contract which receives CL partial and full withdrawals
 */
contract WithdrawalPool is IWithdrawalPool, ReentrancyGuardUpgradeSafe, OwnableUpgradeSafe {

    event PoolChanged(address prevValue, address newValue);
    event Withdrawn(uint256 amount);

    IGlobalPool internal _pool;

    modifier onlyGlobalPool() {
        require(msg.sender == address(_pool), "WithdrawalPool: only pool allowed");
        _;
    }

    function initialize(IGlobalPool pool) external initializer {
        __Ownable_init();
        __ReentrancyGuard_init();

        _pool = pool;
        emit PoolChanged(address(0), address(pool));
    }

    /*
     * @notice withdraw the whole balance to GlobalPool
     */
    function claim() external override nonReentrant onlyGlobalPool {
        uint256 balance = address(this).balance;
        address payable wallet = payable(address(_pool));
        (bool success, ) = wallet.call{value: balance}("");
        require(success, "WithdrawalPool: failed to claim");
        emit Withdrawn(balance);
    }

    function changePool(address newValue) external onlyOwner {
        require(newValue != address(0), "WithdrawalPool: address is zero");
        emit PoolChanged(address(_pool), newValue);
        _pool = IGlobalPool(newValue);
    }
}
