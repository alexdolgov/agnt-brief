// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./refs/CoreRef.sol";
import "./interfaces/IPancakeswapFarm.sol";
import "./interfaces/IStrategy.sol";

interface IWBNB is IERC20 {
    function deposit() external payable;
}

abstract contract MarsStratX2 is IStrategy, ReentrancyGuard, CoreRef {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    bool public isCAKEStaking;
    address public farmContractAddress;
    uint256 public pid;
    address public wantAddress;
    address public earnedAddress;
    address public devAddress;
    address public wbnbAddress;
    address public marsFarmAddress;
    uint256 public override sharesTotal = 0;

    event SetDevAddress(address _devAddress);

    constructor(address _core) public CoreRef(_core) {}

    function deposit(uint256 _wantAmt)
        public
        virtual
        override
        onlyFarms
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        IERC20(wantAddress).safeTransferFrom(
            address(msg.sender),
            address(this),
            _wantAmt
        );

        sharesTotal = sharesTotal.add(_wantAmt);

        _farm();
        _collect();

        return _wantAmt;
    }

    function _farm() internal virtual {
        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        IERC20(wantAddress).safeIncreaseAllowance(farmContractAddress, wantAmt);
        if (isCAKEStaking) {
            IPancakeswapFarm(farmContractAddress).enterStaking(wantAmt);
        } else {
            IPancakeswapFarm(farmContractAddress).deposit(pid, wantAmt);
        }
    }

    function _unfarm(uint256 _wantAmt) internal virtual {
        if (isCAKEStaking) {
            IPancakeswapFarm(farmContractAddress).leaveStaking(_wantAmt);
        } else {
            IPancakeswapFarm(farmContractAddress).withdraw(pid, _wantAmt);
        }
    }

    function withdraw(uint256 _wantAmt)
        public
        override
        virtual
        onlyFarms
        nonReentrant
        returns (uint256)
    {
        require(_wantAmt > 0, "MarsStratX2::withdraw: Zero _wantAmt");
        if (_wantAmt > sharesTotal) {
            _wantAmt = sharesTotal;
        }
        sharesTotal = sharesTotal.sub(_wantAmt);

        _unfarm(_wantAmt);

        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        if (_wantAmt > wantAmt) {
            _wantAmt = wantAmt;
        }

        IERC20(wantAddress).safeTransfer(marsFarmAddress, _wantAmt);
        _collect();
        return _wantAmt;
    }

    function earn()
        public
        virtual
        override
        nonReentrant
        whenNotPaused
    {
        _unfarm(0);
        _collect();
    }

    function _collect() internal virtual {
        if (earnedAddress == wbnbAddress) {
            _wrapBNB();
        }

        uint256 earnedAmt = IERC20(earnedAddress).balanceOf(address(this));
        if (earnedAmt > 0 && devAddress != address(0)) {
            IERC20(earnedAddress).safeTransfer(devAddress, earnedAmt);
        }
    }

    function setDevAddress(address _devAddress)
        public
        virtual
        onlyGovernor
    {
        devAddress = _devAddress;
        emit SetDevAddress(_devAddress);
    }

    function _wrapBNB() internal virtual {
        uint256 bnbBal = address(this).balance;
        if (bnbBal > 0) {
            IWBNB(wbnbAddress).deposit{value: bnbBal}();
        }
    }
}
