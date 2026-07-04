// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.20;

import {IPairHooks} from "./IPairHooks.sol";

contract MaxTxSizeHook is IPairHooks  {

    function afterSwapNFTOutPair(
        uint256 ,
        uint256 ,
        uint256 ,
        uint256[] calldata _nftsOut
    ) external {
        require(_nftsOut.length <= 5, "Max tx size exceeded");
    }

    function afterNewPair() external {
    }
    function afterSwapNFTInPair(
        uint256 _tokensOut,
        uint256 _tokensOutProtocolFee,
        uint256 _tokensOutRoyalty,
        uint256[] calldata _nftsIn
    ) external {
    }
    function afterDeltaUpdate(uint128 _oldDelta, uint128 _newDelta) external {
    }
    function afterSpotPriceUpdate(uint128 _oldSpotPrice, uint128 _newSpotPrice) external {
    }
    function afterFeeUpdate(uint96 _oldFee, uint96 _newFee) external {
    }
    function afterNFTWithdrawal(uint256[] calldata _nftsOut) external {
    }
    function afterTokenWithdrawal(uint256 _tokensOut) external {
    }
    function syncForPair(address pairAddress, uint256 _tokensIn, uint256[] calldata _nftsIn) external {
    }

}