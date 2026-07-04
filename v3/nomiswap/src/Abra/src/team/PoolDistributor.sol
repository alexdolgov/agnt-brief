// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "../token/Abra.sol";


contract PoolDistributor is AccessManagedUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;

    Abra public immutable ABRA;
    uint256 public burnDebt;

    constructor(address _abra) {
        _disableInitializers();
        ABRA = Abra(_abra);
    }

    function initialize(address authority_) public initializer {
        __AccessManaged_init(authority_);
        __UUPSUpgradeable_init();
    }

    function burn(uint256 burnAmount) external restricted {
        doBurn(burnAmount);
    }

    function claim(uint amount) external restricted {
        doBurn(0);
        ABRA.transfer(msg.sender, amount);
    }

    function burn() external {
        doBurn(0);
    }

    function _authorizeUpgrade(address) internal override restricted {}

    function doBurn(uint256 burnAmount) private {
        burnAmount += burnDebt;

        uint256 abraBalance = ABRA.balanceOf(address(this));
        uint256 burnNow = Math.min(abraBalance, burnAmount);
        if (burnNow > 0) {
            ABRA.burn(burnNow);
        }
        burnDebt = burnAmount - burnNow;
    }

}