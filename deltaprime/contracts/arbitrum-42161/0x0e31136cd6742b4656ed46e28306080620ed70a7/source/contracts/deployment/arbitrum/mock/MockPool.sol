// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: 7654e8c2acb24eb72df2cf53015e7063478e5964;
pragma solidity 0.8.17;

import "../../../Pool.sol";


/**
 * @title UsdtPool
 * @dev Contract allowing user to deposit to and borrow USDT from a dedicated user account
 */
contract MockPool is Pool {
    function name() public virtual override pure returns(string memory _name){
        _name = "MockPool";
    }

    function symbol() public virtual override pure returns(string memory _symbol){
        _symbol = "MCKPOOL";
    }

    function decimals() public virtual override pure returns(uint8 decimals){
        decimals = 18;
    }
}