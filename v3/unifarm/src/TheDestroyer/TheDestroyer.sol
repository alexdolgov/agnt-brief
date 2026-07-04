// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function burn(uint256 amount) external returns (bool);
}
interface Drainable {
    function drain(address recipient) external;
    function drainFull(address recipient) external;
}
contract TheDestroyer {
    // Now I am become Death, the Destroyer of Worlds
    address constant DEAD = 0x000000000000000000000000000000000000dEaD;

    IERC20 constant ZLW = IERC20(0x5dd1E31E1a0e2E077aC98d2a4b781F418ca50387);

    function _drain(Drainable _drainable) external {
        _drainable.drain(address(this));
        try ZLW.burn(ZLW.balanceOf(address(this))) {} catch {}
    }
    function _drainFull(Drainable _drainable) external {
        _drainable.drainFull(address(this));
        try ZLW.burn(ZLW.balanceOf(address(this))) {} catch {}
    }
    function _drop(IERC20 _TKN, uint256 _amount) external {
        _TKN.transfer(DEAD, _amount);
    }
    function _burn(IERC20 _TKN, uint256 _amount) external {
        _TKN.burn(_amount);
    }
    receive() payable external {}
    fallback() payable external {}
}
