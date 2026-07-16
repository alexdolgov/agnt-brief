// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";

import "pantherswap-peripheral/contracts/interfaces/IPantherRouter02.sol";
import '@pantherswap-libs/panther-swap-core/contracts/interfaces/IPantherPair.sol';
import '@pantherswap-libs/panther-swap-core/contracts/interfaces/IPantherFactory.sol';
import "../interfaces/IPantherToken.sol";

import "hardhat/console.sol";

abstract contract SimpleVaultZap {
    using SafeMath for uint;
    using SafeBEP20 for IBEP20;

    IPantherRouter02 private constant ROUTER = IPantherRouter02(0x24f7C33ae5f77e2A9ECeed7EA858B4ca2fa1B7eC);
    IPantherRouter02 private constant BSW_ROUTER = IPantherRouter02(0x3a6d8cA21D1CF76F653A67577FA0D27453350dD8);

    address internal constant panther = 0x1f546aD641B56b86fD9dCEAc473d1C7a357276B7;
    address internal constant bsw = 0x965F527D9159dCe6288a2219DB51fc6Eef120dD1;
    address private constant _wbnb = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address private constant _jaws = 0xdD97AB35e3C0820215bc85a395e13671d84CCBa2;
    address private constant _pirate = 0x63041a8770c4CFE8193D784f3Dc7826eAb5B7Fd2;
    address private constant _busd = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address private constant _cake = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;
    IPantherFactory private constant factory = IPantherFactory(0x670f55c6284c629c23baE99F585e3f17E8b9FC31);

    function zapToWBNB(address _from, uint _amount) internal returns (uint) {
        if (_from == _wbnb) return 0;
        if (_amount == 0) return 0;

        address[] memory path;
        path = new address[](2);
        path[0] = _from;
        path[1] = _wbnb;

        _approveTokenIfNeeded(_from);

        if (_from == panther) {
            uint before = IBEP20(_wbnb).balanceOf(address(this));
            ROUTER.swapExactTokensForTokensSupportingFeeOnTransferTokens(_amount, 0, path, address(this), block.timestamp);
            uint toBalance = IBEP20(_wbnb).balanceOf(address(this)).sub(before);
            return toBalance;
        } else {
            uint[] memory amounts = ROUTER.swapExactTokensForTokens(_amount, 0, path, address(this), block.timestamp);
            return amounts[amounts.length - 1];
        }
    }

    // @dev we will always zap from PANTHER rewards into LP tokens
    function zapToFlip(address _from, uint _amount, address _to) internal returns (uint) {
        require(_from == panther || _from == bsw, "unexpected token");
        require(keccak256(abi.encodePacked(IPantherPair(_to).symbol())) == keccak256("PANTHER-LP"), "not flip");
        if (_amount == 0) return 0;
        uint flipBeforeAmt = IPantherPair(_to).balanceOf(address(this));

        address token0 = IPantherPair(_to).token0();
        address token1 = IPantherPair(_to).token1();

        if (_from == bsw) {
            console.log("Swapping to BSW");
            _amount = _swapBSW(_from, _amount, _wbnb, address(this));
            _from = _wbnb;
        }

        // if we are going from PANTHER to PANTHER-XXX LPs, we need to swap more PANTHER into XXX due to tax
        if (_from == token0 || _from == token1) {
            address _other = _from == token0 ? token1 : token0;
            // If swapping from PANTHER
            // Else if we swappin from WBNB, we div by 2
            
            uint pantherSwapAmount = _from == panther ? fromPantherToOther(_from, _amount) : _amount.div(2);
            uint otherAmount = _swap(_from, pantherSwapAmount, _other, address(this));
            _approveTokenIfNeeded(_from);
            _approveTokenIfNeeded(_other);
            ROUTER.addLiquidity(_from, _other, _amount.sub(pantherSwapAmount), otherAmount, 0, 0, address(this), block.timestamp);
            return IPantherPair(_to).balanceOf(address(this)).sub(flipBeforeAmt);
        } else {
            // if we are going from PANTHER to XXX-XXX LPs, we do this step
            // We basically divide cleanly into 2 same amounts
            // address _other0 = _from == token0 ? token1 : token0;
            // address _other1 = _other0 == token0 ? token1 : token0;
            uint pantherSwapAmount = _amount.div(2);
            uint otherAmount = _amount.sub(pantherSwapAmount);
            console.log("Swap 1", _from, pantherSwapAmount, token0);
            uint resultAmount0 = _swap(_from, pantherSwapAmount, token0, address(this));
            console.log("Swap 2", _from, otherAmount, token1);
            uint resultAmount1 = _swap(_from, otherAmount, token1, address(this));

            _approveTokenIfNeeded(token0);
            _approveTokenIfNeeded(token1);
            ROUTER.addLiquidity(token0, token1, resultAmount0, resultAmount1, 0, 0, address(this), block.timestamp);
            return IPantherPair(_to).balanceOf(address(this)).sub(flipBeforeAmt);
        }
    }

    // taxes are out of a basis points of 10,000 -> 500 / 10000 => 5%
    function fromPantherToOther(address _from, uint _amount) internal view returns (uint) {
        uint base = 10000;
        uint tax = base.mul(2).sub(IPantherToken(_from).transferTaxRate()); // 20000 - 500
        uint resultAmount = _amount.div(tax).mul(base.sub(IPantherToken(_from).transferTaxRate())); // 200 / 19500 * 9500 / 10000
        return _amount.sub(resultAmount);
    }

    /* ========== Private Functions ========== */

    function _swap(address _from, uint amount, address _to, address receiver) internal returns (uint) {
        if (_from == _to) return amount;
        _approveTokenIfNeeded(_from);
        address[] memory path;
        
        if (_to != address(_jaws) && _to != address(_pirate)) {
            // [PANTHER, XXX]
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else if (_from == address(_cake)) {
            path = new address[](3);
            path[0] = _from;
            path[1] = _wbnb;
            path[2] = _to;
        } else if (_from == _wbnb) {
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else {
            // [PANTHER, JAWS]
            path = new address[](3);
            path[0] = _from;
            path[1] = _wbnb;
            path[2] = _to;
        }

        if (_from == panther) {
            uint before = IBEP20(_to).balanceOf(receiver);
            ROUTER.swapExactTokensForTokensSupportingFeeOnTransferTokens(amount, 0, path, receiver, block.timestamp);
            uint toBalance = IBEP20(_to).balanceOf(receiver).sub(before);
            return toBalance;
        } else {
            uint before = IBEP20(_to).balanceOf(receiver);
            ROUTER.swapExactTokensForTokens(amount, 0, path, receiver, block.timestamp);
            uint toBalance = IBEP20(_to).balanceOf(receiver).sub(before);
            return toBalance;
        }
    }

    function _swapBSW(address _from, uint amount, address _to, address receiver) internal returns (uint) {
        console.log("_swapBSW", _from, amount, _to);
        if (_from == _to) return amount;
        _approveBSWTokenIfNeeded(_from);
        address[] memory path;
        
        if (_to == address(_wbnb)) {
            // [BSW, XXX]
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else {
            // [BSW, XXX]
            path = new address[](3);
            path[0] = _from;
            path[1] = _wbnb;
            path[2] = _to;
        }

        if (_from == bsw) {
            uint before = IBEP20(_to).balanceOf(receiver);
            BSW_ROUTER.swapExactTokensForTokensSupportingFeeOnTransferTokens(amount, 0, path, receiver, block.timestamp);
            uint toBalance = IBEP20(_to).balanceOf(receiver).sub(before);
            return toBalance;
        } else {
            uint before = IBEP20(_to).balanceOf(receiver);
            BSW_ROUTER.swapExactTokensForTokens(amount, 0, path, receiver, block.timestamp);
            uint toBalance = IBEP20(_to).balanceOf(receiver).sub(before);
            return toBalance;
        }
    }

    function _approveTokenIfNeeded(address token) internal {
        if (IBEP20(token).allowance(address(this), address(ROUTER)) == 0) {
            IBEP20(token).safeApprove(address(ROUTER), uint(~0));
        }
    }

    function _approveBSWTokenIfNeeded(address token) internal {
        if (IBEP20(token).allowance(address(this), address(BSW_ROUTER)) == 0) {
            IBEP20(token).safeApprove(address(BSW_ROUTER), uint(~0));
        }
    }
}