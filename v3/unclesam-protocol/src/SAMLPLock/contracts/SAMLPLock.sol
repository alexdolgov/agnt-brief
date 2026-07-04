// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);

    function transfer(
        address recipient,
        uint256 amount
    ) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);
}

contract SAMLPLock {
    IERC20 public token;
    address public admin;
    uint256 public lockDuration;
    uint256 public lockTimestamp;

    constructor() {
        admin = msg.sender;
        token = IERC20(0xe7EB4d6D94C3165C9b04d06d62D7C00DD8a34143);
        lockDuration = 180 days;
    }

    function lock() public {
        require(msg.sender == admin, "Only owner can call this function");
        lockTimestamp = block.timestamp;
    }

    function redeem() public {
        require(msg.sender == admin, "Only owner can call this function");
        require(block.timestamp - lockTimestamp > lockDuration);
        token.transfer(admin, token.balanceOf(address(this)));
    }
}
