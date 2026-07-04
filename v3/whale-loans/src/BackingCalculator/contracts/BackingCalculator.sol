// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import './lib/SafeMath.sol';
import './interfaces/IBackingCalculator.sol';

interface IERC20 {
    function decimals() external view returns(uint8);
    function balanceOf(address owner) external view returns(uint);
}

interface IPair is IERC20 {
    function getReserves() external view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
    function token0() external view returns (address);
    function token1() external view returns (address);
}

interface IHumpCirculation{
    function HUMPCirculatingSupply() external view returns ( uint );
}

contract BackingCalculator is IBackingCalculator {
    using SafeMath for uint;
    IPair public busdlp = IPair(0x63D9DEf04dcBf82870f46f50db5C1eFeCcb1Cd63);
    IERC20 public busd = IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    IERC20 public usdc = IERC20(0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d);
    address public HUMP;
    address public treasury;
    IHumpCirculation public humpCirculation;

    constructor (
        address _humpCirculation,
        address _treasury,
        address _HUMP
    ){
        require(_humpCirculation != address(0));
        require(_treasury != address(0));
        require(_HUMP != address(0));

        humpCirculation = IHumpCirculation(_humpCirculation);
        treasury = _treasury;
        HUMP = _HUMP;
    }

    function backing() external view override returns (uint _lpBacking, uint _treasuryBacking){
        (_lpBacking,_treasuryBacking,,,,) = backing_full();
    }

    function lpBacking() external view override returns (uint _lpBacking){
        (_lpBacking,,,,,) = backing_full();
    }

    function treasuryBacking() external view override returns (uint _treasuryBacking){
        (,_treasuryBacking,,,,) = backing_full();
    }

    //decimals for backing is 4
    function backing_full() public view override returns (
        uint _lpBacking, 
        uint _treasuryBacking,
        uint _totalStableReserve,
        uint _totalHumpReserve,
        uint _totalStableBal,
        uint _cirulatingHump
    ){
        // LP
        uint stableReserve;
        uint humpReserve;

        // BUSD LP
        (humpReserve, stableReserve) = humpStableAmount(busdlp);
        _totalStableReserve = _totalStableReserve.add(stableReserve);
        _totalHumpReserve = _totalHumpReserve.add(humpReserve);
        _lpBacking = _totalStableReserve.div(_totalHumpReserve).div(1e5);

        // Treasury
        _totalStableBal = _totalStableBal.add(toE18(busd.balanceOf(treasury), busd.decimals()));
        _totalStableBal = _totalStableBal.add(toE18(usdc.balanceOf(treasury), usdc.decimals()));
        _cirulatingHump = humpCirculation.HUMPCirculatingSupply().sub(_totalHumpReserve);
        _treasuryBacking = (_totalStableBal.add(_totalStableReserve.mul(2))).div(_cirulatingHump).div(1e5);
    }

    function humpStableAmount( IPair _pair ) public view returns (uint humpReserve, uint stableReserve){
        ( uint reserve0, uint reserve1, ) =  _pair .getReserves();
        uint8 stableDecimals;
        if ( _pair.token0() == HUMP ) {
            humpReserve = reserve0;
            stableReserve = reserve1;
            stableDecimals = IERC20(_pair.token1()).decimals();
        } else {
            humpReserve = reserve1;
            stableReserve = reserve0;
            stableDecimals = IERC20(_pair.token0()).decimals();
        }
        stableReserve = toE18(stableReserve,stableDecimals);
    }
    
    function toE18(uint amount, uint8 decimals) public pure returns (uint){
        if(decimals==18) return amount;
        else if(decimals>18) return amount.div(10**(decimals-18));
        else return amount.mul(10**(18-decimals));
    }
}