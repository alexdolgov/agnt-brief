pragma solidity 0.8.9;


interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}


contract Disperse {

    event TokenDispersed(address indexed token, address indexed from, address indexed to, uint256 amount);
    function disperseTokenSimple(IERC20 token, address[] calldata recipients, uint256[] calldata values) external {
        for (uint256 i = 0; i < recipients.length; i++) {
            emit TokenDispersed(address(token), msg.sender, recipients[i], values[i]);
            require(token.transferFrom(msg.sender, recipients[i], values[i]));
        }
    }
}