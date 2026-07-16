// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IInfiniFIGateway, IERC20} from "../interfaces/external/infinifi/IInfiniFIGateway.sol";
import {Adapter} from "./Adapter.sol";

contract InifniFiAdapter is Adapter {
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

    function wrap() external {
        uint256 amount_ = usdc.balanceOf(address(this));
        _approveIfNeeded(usdc, address(gateway), amount_);
        gateway.mintAndStake(address(this), amount_);
    }

    function unwrap() external payable {
        uint256 _unstake = siusd.balanceOf(address(this));
        _approveIfNeeded(siusd, address(gateway), _unstake);
        gateway.unstake(address(this), _unstake);

        uint256 _redeem = iusd.balanceOf(address(this));
        _approveIfNeeded(iusd, address(gateway), _redeem);
        gateway.redeem(address(this), _redeem, 0);
    }
}
