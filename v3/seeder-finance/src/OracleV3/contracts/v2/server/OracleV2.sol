// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "../../utils/SafeMath.sol";
import "../interface/IOracleV2.sol";
import "../interface/IClientV2.sol";
import "../../v1/server/Oracle.sol";

contract OracleV2 is IOracleV2, Oracle { 
    using SafeMath for uint256;

    event RequestBurnableTree(address requester, uint256 requestId, address treeOwner, uint256 provideGas);

    function requestBurnableTree(uint256 requestId, address treeOwner) onlyOpen requireGas payable override external {
        require(requestId > 0, "Oracle: Invalid request is zero");
        require(treeOwner != address(0), "Oracle: tree owner address cannot be zero");
        require(!isRequestPending(msg.sender, requestId), "Oracle: Get duplicated processing request"); 

        address requester = msg.sender;
        uint256 providedGas = msg.value;

        requesterAndIdToProvidedGas[requester][requestId] = providedGas;

        emit RequestBurnableTree(requester, requestId, treeOwner, providedGas);
    }

    // =============== Prophet method ================

    // This method is going to be used by only trust prophet
    // After they done their job that the provided gas can be transfered to conpensate their advances usage
    function provideBurnableTree(address requester, uint256 requestId, uint256 availbleTree) external onlyProphet {
        require(isRequestPending(requester, requestId), "Oracle: Transaction was refunded or responded"); 
        
        uint256 providedGas = requesterAndIdToProvidedGas[requester][requestId];
        delete requesterAndIdToProvidedGas[requester][requestId];  

        IClientV2(requester).onBurnableTreeReceived(requestId, availbleTree);
        payable(msg.sender).transfer(providedGas);

        emit ProphetResponse(requester, requestId);  
    }

}