// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../library/ETHAndERC20.sol';
import './ProtocolFeeManagerStorage.sol';

contract ProtocolFeeManagerImplementationSonic is ProtocolFeeManagerStorage {

    using ETHAndERC20 for address;

    address public constant USDC = 0x29219dd400f2Bf60E5a23d13Be72B486D4038894;
    address public immutable arbitrumProtocolFeeManager;

    modifier _onlyOperator_() {
        require(isOperator[msg.sender], 'Only Operator');
        _;
    }

    constructor(
        address arbitrumProtocolFeeManager_
    ) {
        arbitrumProtocolFeeManager = arbitrumProtocolFeeManager_;
    }

    function setOperator(address operator_, bool isActive) external _onlyAdmin_ {
        isOperator[operator_] = isActive;
    }

    function claim(address to, uint256 amount) external _onlyAdmin_ {
        require(USDC.balanceOfThis() >= amount, 'Insufficient balance');
        USDC.transferOut(to, amount);
    }

}
