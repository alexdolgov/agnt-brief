// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;


interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}


contract PacmoonAirdrop2 {
    IERC20 token = IERC20(0x5ffd9EbD27f2fcAB044c0f0a26A45Cb62fa29c06);

    function sendPac(address[] calldata recipients, uint256[] calldata values) external {
        require(recipients.length == values.length);

        uint256 total = 0;
        for (uint256 i = 0; i < recipients.length; i++)
            total += values[i];
        require(token.transferFrom(msg.sender, address(this), total));
        for (uint256 i = 0; i < recipients.length; i++)
            require(token.transfer(recipients[i], values[i]));
    }
}