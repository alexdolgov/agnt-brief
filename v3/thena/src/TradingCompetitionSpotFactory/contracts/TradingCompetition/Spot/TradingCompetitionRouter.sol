// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./ITradingCompetitionManager.sol";
import "./IOpenOceanCaller.sol";
import "./IOpenOcean.sol";
import "./I1InchRouter.sol";
import "./IAlgebraRouter.sol";

//import "hardhat/console.sol";

abstract contract TradingCompetitionRouter {

    using SafeERC20 for IERC20;
    uint256 MAX_INT = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    
    /// @notice OpenOcean router
    address public manager;

    function _swap(IOpenOceanCaller caller,IOpenOcean.SwapDescription memory desc,IOpenOceanCaller.CallDescription[] calldata calls) internal returns(uint256 returnAmount) {
        IERC20 token = desc.srcToken;
        address target = ITradingCompetitionManager(manager).OORouter();
        //if(desc.srcReceiver != address(this)) desc.srcReceiver = address(this);
        if(desc.dstReceiver != address(this)) desc.dstReceiver = address(this); //force dstReceiver to be this address

        token.safeApprove(address(target), 0);
        token.safeApprove(address(target), MAX_INT);

        returnAmount = IOpenOcean(target).swap(caller,desc,calls);
    }
 

}
