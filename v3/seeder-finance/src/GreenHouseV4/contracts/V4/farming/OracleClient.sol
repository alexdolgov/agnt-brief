// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../../interface/IClient.sol";
import "../../interface/IOracle.sol";

abstract contract OracleClient is IClient {
    event RequestBurnTreeAvailible(uint256 indexed requestId, address indexed treeOwner);

    IOracle public oracle;

    modifier onlyOracle() {
        require(address(oracle) == msg.sender, "Oracle Client: Caller is not the oracle");
        _;
    }

    function __randomOracle_init(IOracle oracleAddress) internal {
        oracle = oracleAddress;
    }

    // ============ Client Request ============

    function requestBurnTreeAvailable(uint256 requestId, address treeOwner, uint256 providedGas) internal{
        require(requestId > 0, "OracleClient: Invalid request Id for requesting burn tree available");

        oracle.requestBurnableTree{value: providedGas}(requestId, treeOwner);
    }

    function refund(uint256 requestId) internal {
        require(requestId > 0, "OracleClient: Invalid request Id for requesting refund");
        bool isRequestPending = oracle.isRequestPending(address(this), requestId);
        require(isRequestPending == true, "OracleClient: request Id is completed");
        
        oracle.refund(requestId);
    }

    // =========== Process ====================
    function processBurnRequest(uint256 requestId, uint256 availbleTree) internal virtual {
    }

    function processCancelBurnRequest(uint256 requestId, uint256 providedGas) internal virtual {
    }

    // ============ Prophet method ============
    function onBurnableTreeReceived(uint256 requestId, uint256 availbleTree) override external onlyOracle returns (bool isCompleted){
        processBurnRequest(requestId, availbleTree);
        isCompleted = true;
    }
   
    function onRefund(uint256 requestId) payable override external onlyOracle {
        processCancelBurnRequest(requestId, msg.value);
    }

}