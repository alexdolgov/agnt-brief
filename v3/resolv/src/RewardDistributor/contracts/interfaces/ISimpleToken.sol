// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface ISimpleToken {

    error IdempotencyKeyAlreadyExist(bytes32 idempotencyKey);

    function mint(address account, uint256 amount) external;

    function mint(bytes32 idempotencyKey, address account, uint256 amount) external;

    function burn(address account, uint256 amount) external;

    function burn(bytes32 idempotencyKey, address account, uint256 amount) external;
}
