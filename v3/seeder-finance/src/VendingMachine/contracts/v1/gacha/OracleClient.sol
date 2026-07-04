// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../../interface/IClient.sol";
import "../../interface/IOracle.sol";

abstract contract OracleClient is IClient {
    event RequestRandomSeedmon(uint256 indexed requestID, uint256 indexed packID, uint256 minBonus, uint256 maxBonus);

    IOracle public oracle;

    modifier onlyOracle() {
        require(address(oracle) == msg.sender, "Oracle Client: Caller is not the oracle");
        _;
    }

    function __randomOracle_init(IOracle oracleAddress) internal {
        oracle = oracleAddress;
    }

    // ============ Client Request ============
    function requestRandomNumber(uint256 requestId, uint256 min, uint256 max, uint256 requiredNumber, uint256 providedGas) internal {
        require(requestId > 0, "OracleClient: Invalid request Id for requesting random number");

        oracle.requestRandomNumber{value: providedGas}(requestId, min, max, requiredNumber);
    }

    function requestRandomSeedmon(uint256 requestId, uint256 packID, uint256 minBonus, uint256 maxBonus, uint256 providedGas) internal{
        require(requestId > 0, "OracleClient: Invalid request Id for requesting random seedmon");

        oracle.requestRandomSeedmon{value: providedGas}(requestId, packID, minBonus, maxBonus);
        emit RequestRandomSeedmon(requestId, packID, minBonus, maxBonus);
    }

    function refund(uint256 requestId) internal {
        require(requestId > 0, "OracleClient: Invalid request Id for requesting refund");
        bool isRequestPending = oracle.isRequestPending(address(this), requestId);
        require(isRequestPending == true, "OracleClient: request Id is completed");
        
        oracle.refund(requestId);
    }

    // =========== Process ====================
    function processRandomNumberReceived(uint256 requestId, uint256[] memory randomNumbers) internal virtual {
    }

    function processCreation(uint256 requestId, bytes32 seedmon, uint256[] memory stats) internal virtual {
    }

    function processRefund(uint256 requestId, uint256 providedGas) internal virtual {
    }

    // ============ Prophet method ============
    function onRandomNumberReceived(uint256 requestId, uint256[] memory randomNumbers) override external onlyOracle returns (bool isCompleted) {
        processRandomNumberReceived(requestId, randomNumbers);
        isCompleted = true;
    }
    function onRandomSeedmonReceived(uint256 requestId, bytes32 seedmon, uint256[] memory stats) override external onlyOracle returns (bool isCompleted) {
        processCreation(requestId, seedmon, stats);
        isCompleted = true;
    }
    function onRefund(uint256 requestId) payable override external onlyOracle { // test onlyOracle
        processRefund(requestId, msg.value);
    }

}