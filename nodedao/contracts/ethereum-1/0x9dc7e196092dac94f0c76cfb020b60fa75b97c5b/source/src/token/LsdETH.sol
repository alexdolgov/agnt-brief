// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "openzeppelin-contracts/token/ERC20/ERC20.sol";
import "src/interfaces/ILsdETH.sol";
import {Errors} from "src/libraries/Errors.sol";
import "openzeppelin-contracts/access/Ownable.sol";

/**
 * @title NodeDao lsdETH Contract
 * @author NodeDAO
 */
contract LsdETH is ERC20, Ownable, ILsdETH {
    address public pool;

    modifier onlyPool() {
        if (msg.sender != pool) revert Errors.PermissionDenied();
        _;
    }

    constructor(string memory _name, string memory _symbol, address _pool) ERC20(_name, _symbol) {
        pool = _pool;
    }

    /**
     * @notice mint nETHH
     * @param _amount mint amount
     * @param _account mint account
     */
    function whiteListMint(uint256 _amount, address _account) external onlyPool {
        _mint(_account, _amount);
    }

    /**
     * @notice burn nETHH
     * @param _amount burn amount
     * @param _account burn account
     */
    function whiteListBurn(uint256 _amount, address _account) external onlyPool {
        _burn(_account, _amount);
    }

    function changePool(address _pool) public onlyOwner {
        emit PoolChanged(pool, _pool);
        pool = payable(_pool);
    }
}
