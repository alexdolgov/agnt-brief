// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.8.0 <0.9.0;

import "../base/AdapterBase.sol";

contract OneInchV5Adapter is AdapterBase {
    constructor(address _adapterManager, address _timelock) AdapterBase(_adapterManager, _timelock, "1InchV5Adapter") {}

    address public constant oneInchRouter = 0x1111111254EEB25477B68fb85Ed929f73A960582;

    function swap(bytes memory callArgs, uint256 amountETH) external onlyDelegation {
        (bool success, bytes memory returnData) = oneInchRouter.call{value: amountETH}(callArgs);
        require(success, string(returnData));
    }
}
