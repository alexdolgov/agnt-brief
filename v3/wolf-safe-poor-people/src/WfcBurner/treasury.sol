// SPDX-License-Identifier: MIT
import "./safetoken-imports.sol";
pragma solidity 0.8.4;



contract WfcBurner is Ownable {
    using SafeERC20 for IERC20;

    IERC20 constant public wfc = IERC20(0xaCBEB7Dec67EA80c4F142767AE1F2D4CA6e3f7FD);
    address constant public dead = address(0x000000000000000000000000000000000000dEaD);

    function burn() public onlyOwner {
        uint256 bal = wfc.balanceOf(address(this));
        wfc.safeTransfer(dead, bal);
    }

    function recoverToken(address _token) public onlyOwner {
        uint256 amount = IERC20(_token).balanceOf(address(this));
        recoverToken(_token, amount, msg.sender);
    }

    function recoverToken(address _token, uint256 _amount, address _to) public onlyOwner {
        require(_token != address(wfc), "!wfc");
        uint256 amount = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(_to, _amount);
    }
}