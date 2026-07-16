// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.19;

import {IslandRouter} from "./IslandRouter.sol";
import {IBaultFactory} from "./interfaces/IBaultFactory.sol";
import {IBault} from "./interfaces/IBault.sol";
import {IERC20} from "@openzeppelin-8/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin-8/contracts/token/ERC20/utils/SafeERC20.sol";
import {IWETH} from "./interfaces/IWETH.sol";
import {Multicall} from "./vendor/uniswap/lib/Multicall.sol";

contract BaultRouter is IslandRouter, Multicall {
    using SafeERC20 for IERC20;

    IBaultFactory public immutable baultFactory;

    modifier onlyLegitBault(address bault) {
        require(baultFactory.isLegitBault(bault), "BaultRouter: invalid bault");
        _;
    }

    constructor(IWETH _wBera, address _kodiakRouter, address _baultFactory) IslandRouter(_wBera, _kodiakRouter) {
        baultFactory = IBaultFactory(_baultFactory);
    }

    function depositIntoBault(address bault, uint256 assets, uint256 minSharesOut, address receiver) external onlyLegitBault(bault) returns (uint256 shares) {
        require(receiver != address(this), "BaultRouter: cannot deposit for self");
        address stakingToken = IBault(bault).stakingToken();
        // get staking token from user
        IERC20(stakingToken).safeTransferFrom(msg.sender, address(this), assets);
        IERC20(stakingToken).safeIncreaseAllowance(address(bault), assets);
        shares = IBault(bault).deposit(assets, receiver);
        require(shares >= minSharesOut, "BaultRouter: insufficient bault shares minted");
    }

    function depositIntoBaultSelf(address bault, uint256 minSharesOut, address receiver) external payable onlyLegitBault(bault) returns (uint256 shares) {
        require(receiver != address(this), "BaultRouter: cannot deposit for self");
        address stakingToken = IBault(bault).stakingToken();
        // assumes staking token is already owned by the router
        uint256 assets = IERC20(stakingToken).balanceOf(address(this));
        IERC20(stakingToken).safeIncreaseAllowance(address(bault), assets);
        shares = IBault(bault).deposit(assets, receiver);
        require(shares >= minSharesOut, "BaultRouter: insufficient bault shares minted");
    }

    function redeemFromBault(address bault, uint256 shares, uint256 minAssetsOut, address receiver) external onlyLegitBault(bault) returns (uint256 assets) {
        require(receiver != address(this), "BaultRouter: cannot redeem to self");
        // get shares from user
        IERC20(bault).safeTransferFrom(msg.sender, address(this), shares);
        assets = IBault(bault).redeem(shares, receiver, address(this));
        require(assets >= minAssetsOut, "BaultRouter: insufficient assets received");
    }
}
