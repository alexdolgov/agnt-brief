// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.7.0;
import "../superSwitchToken/superSwitchAVAX.sol";
import "../lendingSuperToken.sol";
// lendingAaveAVAX is a combination of super aave AVAX token and lending pool.
//
// This contract will benefit from mining income and loan interest income.
contract lendingSwitchAVAX is superSwitchAVAX,lendingSuperToken {
    using SafeMath for uint256;
    constructor(address multiSignature,address origin0,address origin1,address _aavaToken,address _qiToken,
    address payable _swapHelper,address payable _feePool,uint8 _lendingSwitch,address leverageFactory)
        superSwitchAVAX(multiSignature,origin0,origin1,_aavaToken,_qiToken,_swapHelper,_feePool,_lendingSwitch)
        lendingSuperToken(leverageFactory) {
        setTokenInfo("Lending ","L");
    }
    //Add mining income and loan interest income.
    function getTotalAssets() internal virtual override(superSwitchAVAX,superTokenInterface) view returns (uint256){
        return getAvailableBalance().add(totalAssetAmount());
    }
}