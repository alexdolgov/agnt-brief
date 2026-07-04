// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseStrategy.sol";
import "./interface/ICErc20Delegator.sol";
import "./interface/IComptroller.sol";
import "./interface/IAerodromeRouter.sol";
import "./WETHelperETH.sol";

contract StrategySonneLending is BaseStrategy{

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public cerc20Delegator; 
    address public comptroller; 
    WETHelperETH public wethelpereth;
    IAerodromeRouter.Route[] public earnedToWantAddressPath;

    function initialize(
        address[] memory _addresses,
        address cerc20Delegator_,
        address comptroller_,
        IAerodromeRouter.Route[] memory _earnedToWantAddressPath
    ) public virtual initializer {
        BaseStrategy.initialize(
            _addresses, 0,
            true, true,
            new address[](0), new address[](0));
        cerc20Delegator = cerc20Delegator_;
        comptroller = comptroller_;
        wethelpereth = new WETHelperETH();
        for (uint i; i < _earnedToWantAddressPath.length; ++i) {
            earnedToWantAddressPath.push(_earnedToWantAddressPath[i]);
        }
    }
    
    function _vaultDeposit(uint256 _amount) internal  override returns (uint256)
    {
        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        if(_amount > 0){
            if(wantAddress == wethAddress) {
                IERC20(wantAddress).safeTransfer(address(wethelpereth), wantAmt);
                wethelpereth._mint(wantAddress,cerc20Delegator,wantAmt);
            }else{
                IERC20(wantAddress).safeApprove(cerc20Delegator, wantAmt);
                ICErc20Delegator(cerc20Delegator).mint(wantAmt);
            } 
        }   
        return  _amount;
    }


    function _vaultWithdraw(uint256 _amount) internal override
    {
        if (wantAddress == wethAddress){
            uint256 exchangeRate = ICErc20Delegator(cerc20Delegator).exchangeRateStored();
            uint cethAmount = _amount.mul(1e18).div(exchangeRate);
            IERC20(cerc20Delegator).transfer(address(wethelpereth),cethAmount);
            wethelpereth.withdraw(wantAddress,cerc20Delegator, address(this), _amount);
        }else{
            ICErc20Delegator(cerc20Delegator).redeemUnderlying(_amount);
        }
    }

    function _vaultUserInfo()
        public
        virtual override
        view
        returns (uint)
    {
        uint256 exchangeRate = ICErc20Delegator(cerc20Delegator).exchangeRateStored();
        uint redeemTokens = IERC20(cerc20Delegator).balanceOf(address(this));
        uint redeemAmount = redeemTokens.mul(exchangeRate).div(1e18);
        return redeemAmount;
    }

    function earnSonne() public {
        if (onlyGov) {
            require(msg.sender == govAddress, "!gov");
        }
        IComptroller(comptroller).claimComp(address(this));
        IERC20(earnedAddress).safeApprove(uniRouterAddress, IERC20(earnedAddress).balanceOf(address(this)));
        IAerodromeRouter(uniRouterAddress).swapExactTokensForTokens(
            IERC20(earnedAddress).balanceOf(address(this)), 0, earnedToWantAddressPath, address(this), block.timestamp
        );
        _vaultDeposit(IERC20(wantAddress).balanceOf(address(this)));

    }

    function _vaultHarvest() internal virtual override
    {
    }

    function _vaultPending() public override view returns (uint256 pending, uint256 pending1)
    {
        (,uint256 _amount, , ) = ICErc20Delegator(cerc20Delegator).getAccountSnapshot(address(this));
        pending =  (IComptroller(comptroller).compSupplyState(cerc20Delegator).index - IComptroller(comptroller).compSupplierIndex(cerc20Delegator, address(this))) * _amount / 1e36 + IComptroller(comptroller).compAccrued(address(this));
        pending1 = 0;
        return(pending, pending1);
    }

    function _vaultEmergencyWithdraw() internal override
    {
    }

    function _vaultEmergencyDeposit() internal override
    {
    }
}
