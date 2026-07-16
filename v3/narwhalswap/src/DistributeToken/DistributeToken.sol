pragma solidity 0.6.12;


interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}


contract DistributeToken {
   
    function disperseTokenSimple(IERC20 token,address[] memory recipients, uint256 values) external {
        for (uint256 i = 0; i < recipients.length; i++)
            require(token.transferFrom(msg.sender, recipients[i], values));
    }
}