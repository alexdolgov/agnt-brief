// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
import "./proxyOwner.sol";
import "./IERC20.sol";
import "./safeErc20.sol";
abstract contract debugger is proxyOwner {
    using SafeERC20 for IERC20;
    modifier isDebugger {
        require(isOrigin(), "debugger : account-not-authorized");
        _;
    }
    /**
     * @dev Withdraw asset.
     * @param _assetAddress Asset to be withdrawn.
     */
    function withdraw(address _assetAddress) public isDebugger {
        uint assetBalance;
        if (_assetAddress == address(0)) {
            address self = address(this); // workaround for a possible solidity bug
            assetBalance = self.balance;
            msg.sender.transfer(assetBalance);
        } else {
            assetBalance = IERC20(_assetAddress).balanceOf(address(this));
            IERC20(_assetAddress).safeTransfer(msg.sender, assetBalance);
        }
    }
}