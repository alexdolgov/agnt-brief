// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "./library/WhitelistUpgradeable.sol";

contract ProxyMeerkat is OwnableUpgradeable, WhitelistUpgradeable {
    using SafeBEP20 for IBEP20;

    IBEP20 private constant MMF = IBEP20(0x22a31bD4cB694433B6de19e0aCC2899E553e9481);

    function initialize() external initializer {
        __Ownable_init();
    }

    function safeMeerkatTransfer(address to, uint256 amount) external onlyWhitelisted returns (uint256) {
        uint256 meerkatBal = MMF.balanceOf(address(this));
        if (amount > meerkatBal) {
            MMF.transfer(to, meerkatBal);
            return meerkatBal;
        } else {
            MMF.transfer(to, amount);
            return amount;
        }
    }

    function recoverToken(IBEP20 _token, uint256 _amount, address _to) external onlyOwner {
        require(address(_token) != address(MMF));
        _token.safeTransfer(_to, _amount);
    }
}