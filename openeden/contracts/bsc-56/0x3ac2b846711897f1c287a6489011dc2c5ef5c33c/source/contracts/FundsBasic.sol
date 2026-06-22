// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./lib/TransferHelper.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

abstract contract FundsBasic {
    address internal constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    using TransferHelper for address;
    bool internal locked;

    modifier noReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }

    event Push(address token, uint256 amt);
    event Pull(address token, uint256 amt, address to);

    function push(address _token, uint256 _amt) external payable virtual returns (uint256 amt);

    function pull(
        address _token,
        uint256 _amt,
        address _to
    ) external virtual returns (uint256 amt);

    function _push(address _token, uint256 _amt) internal virtual returns (uint256 amt) {
        amt = _amt;

        if (_token != ETH_ADDRESS) {
            _token.safeTransferFrom(msg.sender, address(this), _amt);
        } else {
            require(msg.value == _amt, "ByfiWeb3Swap: Invalid Ether Amount");
        }
        emit Push(_token, _amt);
    }

    function _pull(
        address _token,
        uint256 _amt,
        address _to
    ) internal noReentrant returns (uint256 amt) {
        amt = _amt;
        if (_token == ETH_ADDRESS) {
            (bool retCall, ) = _to.call{ value: _amt }("");
            require(retCall != false, "ByfiWeb3Swap: pull ETH from account fail");
        } else {
            _token.safeTransfer(_to, _amt);
        }
        emit Pull(_token, _amt, _to);
    }

    function getBalance(IERC20[] memory _tokens) external view returns (uint256, uint256[] memory) {
        uint256[] memory array = new uint256[](_tokens.length);

        for (uint256 i = 0; i < _tokens.length; i++) {
            array[i] = _tokens[i].balanceOf(address(this));
        }
        return (address(this).balance, array);
    }

    receive() external payable {}
}
