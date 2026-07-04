// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./interface/ICErc20Delegator.sol";
import "../openzeppelin/uniswapv2/interfaces/IWETH.sol";
import "../openzeppelin/erc20/SafeERC20.sol";
interface IWETHelper {
    function withdraw(uint) external;
}

contract WETHelperETH {

    using SafeERC20 for IERC20;
    
    receive() external payable {
    }

    function _mint(address _eth,address cerc20Delegator,uint256 _amount) public payable returns (uint256)
    {
        if (_amount > 0 ) {
            IWETHelper(_eth).withdraw(_amount);
        }
        ICErc20Delegator(cerc20Delegator).mint{value:_amount}();
        uint256 cethAmount = IERC20(cerc20Delegator).balanceOf(address(this));
        IERC20(cerc20Delegator).safeTransfer(address(msg.sender), cethAmount);
        return  _amount;
    }

    function safeTransferWETH(address _eth,address to, uint256 _amount) internal {
        IERC20(_eth).safeTransfer(to, _amount);
    }

    function withdraw(address _eth,address cerc20Delegator,address _to, uint256 _amount) public {
        uint result = ICErc20Delegator(cerc20Delegator).redeemUnderlying(_amount);
        IWETH(_eth).deposit{value: _amount}();
        safeTransferWETH(_eth, _to, _amount);
    }
}

