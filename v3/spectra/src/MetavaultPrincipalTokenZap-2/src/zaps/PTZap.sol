// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IERC20} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPrincipalToken} from "src/interfaces/IPrincipalToken.sol";
import {ISpectra4626Wrapper} from "src/interfaces/ISpectra4626Wrapper.sol";

contract MetavaultPrincipalTokenZap {
    using SafeERC20 for IERC20;

    error InsufficientIBTs(uint256 received, uint256 required);
    error InsufficientAssets(uint256 received, uint256 required);

    function redeemPTsInIBTs(
        address pt,
        uint256 shares,
        uint256 minTokenOut,
        bool isUnwrap
    ) public {
        if (shares == 0) {
            return;
        }
        _redeemPTsInIBTs(pt, shares);
        address ibt = IPrincipalToken(pt).getIBT();
        if (isUnwrap) {
            ISpectra4626Wrapper(ibt).unwrap(
                IERC20(ibt).balanceOf(address(this)),
                address(this),
                address(this)
            );
            address vaultShare = ISpectra4626Wrapper(ibt).vaultShare();
            uint256 vaultShareBalance = IERC20(vaultShare).balanceOf(address(this));
            if (vaultShareBalance < minTokenOut) {
                revert InsufficientIBTs(vaultShareBalance, minTokenOut);
            }
            IERC20(vaultShare).transfer(msg.sender, vaultShareBalance);
        } else {
            uint256 ibtBalance = IERC20(ibt).balanceOf(address(this));
            if (IERC20(ibt).balanceOf(address(this)) < minTokenOut) {
                revert InsufficientIBTs(ibtBalance, minTokenOut);
            }
            IERC20(ibt).transfer(msg.sender, ibtBalance);
        }
    }

    function redeemPTsInAssets(address pt, uint256 shares, uint256 minTokenOut) public {
        if (shares == 0) {
            return;
        }
        _redeemPTsInIBTs(pt, shares);
        address ibt = IPrincipalToken(pt).getIBT();
        IERC4626(ibt).redeem(IERC20(ibt).balanceOf(address(this)), address(this), address(this));
        address asset = IERC4626(ibt).asset();
        if (IERC20(asset).balanceOf(address(this)) < minTokenOut) {
            revert InsufficientAssets(IERC20(asset).balanceOf(address(this)), minTokenOut);
        }
        IERC20(asset).transfer(msg.sender, IERC20(asset).balanceOf(address(this)));
    }

    function _redeemPTsInIBTs(address pt, uint256 shares) internal {
        IERC20(pt).safeTransferFrom(msg.sender, address(this), shares);
        bool isPTBeforeMaturity = block.timestamp < IPrincipalToken(pt).maturity();
        if (isPTBeforeMaturity) {
            address yt = IPrincipalToken(pt).getYT();
            IERC20(yt).safeTransferFrom(msg.sender, address(this), shares);
        }
        IPrincipalToken(pt).redeemForIBT(shares, address(this), address(this), 0);
    }
}
