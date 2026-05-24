// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICommandCenter {
    function reviveGauge(address) external;

    function renounceRole(bytes32 _role, address) external;
}

contract Revivoor {
    address private owner = 0xCAfc58De1E6A071790eFbB6B83b35397023E1544;

    bytes32 private constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    ICommandCenter private cc =
        ICommandCenter(0xAAA11500dDdB2B67a90d1a154dfB7eaBB518EAE6);

    constructor() {}

    function loop(address[] calldata _pool) external {
        /// @dev check ownership
        require(msg.sender == owner);
        /// @dev loop through  from 0 to array length
        for (uint256 i = 0; i < _pool.length; ++i) {
            cc.reviveGauge(_pool[i]);
        }
    }

    function renounce() external {
        require(msg.sender == owner);
        cc.renounceRole(OPERATOR_ROLE, address(this));
    }
}