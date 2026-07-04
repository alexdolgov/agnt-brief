pragma solidity ^0.8.19;

interface IERC20 {
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
}

contract SOGWReceiver {
    function pull() external {
        IERC20 t = IERC20(msg.sender);
        uint256 bal = t.balanceOf(address(this));
        require(bal > 0, "SOGWReceiver: NO_BAL");
        require(t.transfer(msg.sender, bal), "SOGWReceiver: TRANSFER_FAIL");
    }
}
