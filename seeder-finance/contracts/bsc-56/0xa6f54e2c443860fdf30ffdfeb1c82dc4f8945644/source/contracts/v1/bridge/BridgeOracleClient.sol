// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "../../interface/IBridgeClient.sol";
import "../../interface/IOracle.sol";

abstract contract BridgeOracleClient is IBridgeClient {
    
    IOracle public oracle;

    modifier onlyOracle() {
        require(address(oracle) == msg.sender, "Oracle Client: Caller is not the oracle");
        _;
    }

    function __randomOracle_init(IOracle oracleAddress) internal {
        oracle = oracleAddress;
    }

    function requestWithdrawSeedmons(uint256 requestId, uint256[] memory tokenIds, uint256 providedGas) internal {
        require(requestId > 0, "OracleClient: Invalid request Id for requesting withdraw seedmon");
        oracle.requestWithdrawSeedmons{value: providedGas} (requestId, tokenIds, msg.sender);
    }

    function requestWithdrawSeed(uint256 requestId, uint256 requestAmount, address withdrawer, uint256 providedGas) internal {
        require(requestId > 0, "OracleClient: Invalid request Id for requesting withdraw seed token");
        oracle.requestWithdrawSeed{value: providedGas} (requestId, requestAmount, withdrawer);
    }

    function requestCancelWithdrawSeed(uint256 requestId) internal {
        require(requestId > 0, "OracleClient: Invalid request Id for requesting cancel withdraw seed token");
        bool isRequestPending = oracle.isRequestPending(address(this), requestId);
        require(isRequestPending == true, "OracleClient: request Id is completed");

        oracle.cancelWithdrawSeed(requestId);
    }

    function requestCancelWithdrawSeedmon(uint256 requestId) internal {
        require(requestId > 0, "OracleClient: Invalid request Id for requesting cancel withdraw Seedmon");
        bool isRequestPending = oracle.isRequestPending(address(this), requestId);
        require(isRequestPending == true, "OracleClient: request Id is completed");

        oracle.cancelWithdrawSeedmon(requestId);
    }


    // =========== Process ====================
    function processWithdrawSeedmons(uint256 requestId, uint256[] memory tokenIds, uint256[] memory exps, bool isSuccess) internal virtual {}
    function processWithdrawSeed(uint256 requestId, uint256 tokenBalance, bool isSuccess) internal virtual {}
    function processCancelWithdrawSeed(uint256 requestId, uint256 providedGas) internal virtual {}
    function processCancelWithdrawSeedmon(uint256 requestId, uint256 providedGas) internal virtual {}

    // ============ Prophet method ============
    function onWithdrawSeedmonsReceived(
        uint256 requestId, 
        uint256[] memory tokenIds, 
        uint256[] memory exps, 
        bool isSuccess
    ) 
        external 
        override 
        onlyOracle 
    {
        processWithdrawSeedmons(requestId, tokenIds, exps, isSuccess);
    }

    function onWithdrawSeedReceived(
        uint256 requestId, 
        uint256 tokenBalance, 
        bool isSuccess
    ) 
        external 
        override 
        onlyOracle 
        returns (bool isCompleted) 
    {
        processWithdrawSeed(requestId, tokenBalance, isSuccess);
        isCompleted = true;
    }

    function onCancelWithdrawSeedReceived(uint256 requestId) external payable override onlyOracle {
        processCancelWithdrawSeed(requestId, msg.value);
    }

    function onCancelWithdrawSeedmonReceived(uint256 requestId) external payable override onlyOracle {
        processCancelWithdrawSeedmon(requestId, msg.value);
    }

}