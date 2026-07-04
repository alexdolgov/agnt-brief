// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IGuardian {
    function beforeExecute(
        address _accountSender,
        address _token,
        uint256 _amount,
        bytes calldata _data,
        bool _isExecuteOwner
    ) external returns (bool, bytes memory);

    function afterExecute(bytes memory _data) external;
}
