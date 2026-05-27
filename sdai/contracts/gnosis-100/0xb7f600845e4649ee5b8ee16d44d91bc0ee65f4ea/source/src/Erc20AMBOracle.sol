// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "./interfaces/IERC20.sol";
import "./base/BasicAMBInformationReceiver.sol";

contract Erc20AMBOracle is BasicAMBInformationReceiver {
    mapping(bytes32 => uint256) public response;

    
    /*//////////////////////////////////////////////////////////////
                       CONSTRUCTOR & INITIALIZER
    //////////////////////////////////////////////////////////////*/

    constructor(IHomeAMB _bridge) AMBInformationReceiverStorage(_bridge) {
    }

    
    /*//////////////////////////////////////////////////////////////
                       REMOTE CALL LOGIC
    //////////////////////////////////////////////////////////////*/
    
    function sendRemoteEthCall(bytes memory _data) internal {
        bytes32 selector = keccak256("eth_call(address,bytes)");
        lastMessageId = bridge.requireToGetInformation(selector, _data);
        status[lastMessageId] = Status.Pending;
    }

    /*//////////////////////////////////////////////////////////////
                       REQUEST DATA
    //////////////////////////////////////////////////////////////*/
    
    function requestERC20TotalSupply(IERC20 _token) external {
        bytes memory method = abi.encodeWithSelector(IERC20(address(0)).totalSupply.selector);
        bytes memory data = abi.encode(_token, method);
        sendRemoteEthCall(data);
    }

    function requestERC20BalanceOf(IERC20 _token, address _account) external {
        bytes memory method = abi.encodeWithSelector(IERC20(address(0)).balanceOf.selector, _account);
        bytes memory data = abi.encode(_token, method);
        sendRemoteEthCall(data);
    }

    function requestERC20Allowance(IERC20 _token, address _owner, address _spender) external {
        bytes memory method = abi.encodeWithSelector(IERC20(address(0)).allowance.selector, _owner, _spender);
        bytes memory data = abi.encode(_token, method);
        sendRemoteEthCall(data);
    }
    
    /*//////////////////////////////////////////////////////////////
                       HANDLE RESPONSE
    //////////////////////////////////////////////////////////////*/


    function unwrap(bytes memory _result) pure internal returns(bytes memory unwrapped_response) {
        unwrapped_response = abi.decode(_result, (bytes));
    }
    
    function onResultReceived(bytes32 _messageId, bytes memory _result) internal override {
        bytes memory unwrapped = unwrap(_result);
        require(unwrapped.length == 32);
        response[_messageId] = abi.decode(unwrapped, (uint256));
    }
}