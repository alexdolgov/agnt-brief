// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";

import "../library/SafeToken.sol";

import "../interfaces/IVaultVenusBridge.sol";
import "../interfaces/IPancakeRouter02.sol";
import "../interfaces/IVenusDistribution.sol";
import "../interfaces/IVBNB.sol";


contract VaultVenusBridge is IVaultVenusBridge {
    using SafeBEP20 for IBEP20;
    using SafeToken for address;

    /* ========== CONSTANTS ============= */

    IPancakeRouter02 private constant PANCAKE_ROUTER = IPancakeRouter02(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);
    IVenusDistribution private constant VENUS_UNITROLLER = IVenusDistribution(0xfD36E2c2a6789Db23113685031d7F16329158384);

    address private constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    IBEP20 private constant XVS = IBEP20(0xcF6BB5389c92Bdda8a3747Ddb454cB7a64626C63);
    IVBNB public constant vBNB = IVBNB(0xA07c5b74C9B40447a954e1466938b865b6BBea36);

    /* ========== STATE VARIABLES ========== */

    address payable public venusVault;
    address payable public bunnyBank;

    /* ========== MODIFIERS ========== */

    modifier onlyVenusVault {
        require(msg.sender == venusVault, 'VaultVenusBridge: caller is not the venus vault');
        _;
    }

    /* ========== INITIALIZER ========== */

    receive() external payable {}

    constructor(address payable _venusVault) public {
        require(_venusVault != address(0), "VaultVenusBridge: venus vault must be non-zero address");
        venusVault = _venusVault;

        XVS.safeApprove(address(PANCAKE_ROUTER), uint(- 1));

        address[] memory venusMarkets = new address[](1);
        venusMarkets[0] = address(vBNB);
        VENUS_UNITROLLER.enterMarkets(venusMarkets);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function claimToStakingToken() external override onlyVenusVault {
        VENUS_UNITROLLER.claimVenus(address(this));
        uint xvsBalance = XVS.balanceOf(address(this));
        if (xvsBalance > 0) {
            address[] memory path = new address[](2);
            path[0] = address(XVS);
            path[1] = WBNB;
            PANCAKE_ROUTER.swapExactTokensForETH(xvsBalance, 0, path, address(this), block.timestamp);
        }
    }

    function migrateTo(address payable target) external override onlyVenusVault {
        require(venusVault == VaultVenusBridge(target).venusVault(), "VaultVenusBridge: venus vault is not equal");
        SafeToken.safeTransferETH(target, address(this).balance);
    }

    function withdrawTo(address account, uint amount) external override onlyVenusVault {
        SafeToken.safeTransferETH(account, amount);
    }

    /* ========== VENUS FUNCTIONS ========== */

    function mint(uint amount) external override onlyVenusVault {
        vBNB.mint{value : amount}();
    }

    function redeem(uint amount) external override onlyVenusVault {
        vBNB.redeem(amount);
    }

    function redeemUnderlying(uint amount) external override onlyVenusVault {
        vBNB.redeemUnderlying(amount);
    }

    function borrow(uint amount) external override onlyVenusVault {
        vBNB.borrow(amount);
    }

    function repayBorrow(uint amount) external override onlyVenusVault {
        vBNB.repayBorrow{value : amount}();
    }
}
