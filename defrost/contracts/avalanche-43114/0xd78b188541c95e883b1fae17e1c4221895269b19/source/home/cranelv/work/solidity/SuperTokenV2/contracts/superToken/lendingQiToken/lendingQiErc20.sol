// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.7.0;
import "../superQiToken/superQiErc20.sol";
import "../lendingSuperToken.sol";
// lendingQiErc20 is a combination of super benqi ERC20 token and lending pool.
//
// This contract will benefit from mining income and loan interest income.
contract lendingQiErc20 is superQiErc20,lendingSuperToken {
    using SafeMath for uint256;
    constructor(address multiSignature,address origin0,address origin1,address _stakeToken,
    address payable _swapHelper,address payable _feePool,address leverageFactory,uint256 _assetFloor)
        superQiErc20(multiSignature,origin0,origin1,_stakeToken,_swapHelper,_feePool) 
        lendingSuperToken(leverageFactory,_assetFloor) {
        setTokenInfo("Lending ","L");
    }
    function getTotalAssets() internal virtual override view returns (uint256){
        return getAvailableBalance().add(totalAssetAmount());
    }
}