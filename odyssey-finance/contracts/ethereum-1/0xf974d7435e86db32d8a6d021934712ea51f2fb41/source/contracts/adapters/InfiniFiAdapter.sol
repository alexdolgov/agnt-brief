// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IInfiniFIGateway, IERC20} from "../interfaces/external/infinifi/IInfiniFIGateway.sol";
import {Adapter} from "./Adapter.sol";

contract InfiniFiAdapter is Adapter {
    IInfiniFIGateway public immutable gateway;
    IERC20 public immutable usdc;
    IERC20 public immutable siusd;
    IERC20 public immutable iusd;

    constructor(address usdc_, address gateway_) {
        usdc = IERC20(usdc_);
        gateway = IInfiniFIGateway(gateway_);
        siusd = IERC20(gateway.getAddress("stakedToken"));
        iusd = IERC20(gateway.getAddress("receiptToken"));
    }

    // USDC -> iUSD
    function mint() external {
        uint256 _amount = usdc.balanceOf(address(this));
        _approveIfNeeded(usdc, address(gateway), _amount);
        gateway.mint(address(this), _amount);
    }

    // iUSD -> siUSD
    function stake() external {
        uint256 _amount = iusd.balanceOf(address(this));
        _approveIfNeeded(iusd, address(gateway), _amount);
        gateway.stake(address(this), _amount);
    }

    // siUSD -> iUSD
    function unstake() external payable {
        uint256 _amount = siusd.balanceOf(address(this));
        _approveIfNeeded(siusd, address(gateway), _amount);
        gateway.unstake(address(this), _amount);
    }

    // iUSD -> USDC
    function redeem() external payable {
        uint256 _amount = iusd.balanceOf(address(this));
        _approveIfNeeded(iusd, address(gateway), _amount);
        gateway.redeem(address(this), _amount, 0);
    }
}
