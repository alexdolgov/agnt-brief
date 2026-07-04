// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "../../utils/SafeMath.sol";
import "../interface/IOracleV3.sol";
import "../interface/IClientV3.sol";
import "../../v2/server/OracleV2.sol";

contract OracleV3 is IOracleV3, OracleV2 { 
    using SafeMath for uint256;
    
    event WithdrawSeedmonsRequested(
        address requester, 
        uint256 requestId, 
        uint256[] tokenIds, 
        address withdrawer, 
        uint256 providedGas
    );
    event WithdrawSeedRequested(
        address requester, 
        uint256 requestId, 
        uint256 requestAmount, 
        address withdrawer, 
        uint256 providedGas
    );
    event CancelWithdrawSeed(address requester, uint256 requestId, uint256 providedGas);
    event CancelWithdrawSeedmon(address requester, uint256 requestId, uint256 providedGas);

    function cancelWithdrawSeed(uint256 requestId) external override {
        require(isRequestPending(msg.sender, requestId), "Oracle: Transaction was refunded or responded"); 
        
        uint256 providedGas = requesterAndIdToProvidedGas[msg.sender][requestId];
        delete requesterAndIdToProvidedGas[msg.sender][requestId];  

        IClientV3(msg.sender).onCancelWithdrawSeedReceived{value: providedGas}(requestId);

        emit CancelWithdrawSeed(msg.sender, requestId, providedGas);
    }

    function cancelWithdrawSeedmon(uint256 requestId) external override {
        require(isRequestPending(msg.sender, requestId), "Oracle: Transaction was refunded or responded"); 
        
        uint256 providedGas = requesterAndIdToProvidedGas[msg.sender][requestId];
        delete requesterAndIdToProvidedGas[msg.sender][requestId];  

        IClientV3(msg.sender).onCancelWithdrawSeedmonReceived{value: providedGas}(requestId);

        emit CancelWithdrawSeedmon(msg.sender, requestId, providedGas);
    }

    function requestWithdrawSeedmons(uint256 requestId, uint256[] memory tokenIds, address withdrawer) 
        external 
        payable  
        override
        onlyOpen 
        requireGas 
    {
        require(requestId > 0, "Oracle: Invalid request is zero");
        require(!isRequestPending(msg.sender, requestId), "Oracle: Get duplicated withdraw Seedmons request"); 

        address requester = msg.sender;
        uint256 providedGas = msg.value;

        requesterAndIdToProvidedGas[requester][requestId] = providedGas;

        emit WithdrawSeedmonsRequested(requester, requestId, tokenIds, withdrawer, providedGas);
    }

    function requestWithdrawSeed(uint256 requestId, uint256 requestAmount, address withdrawer)
        external
        payable
        override
        onlyOpen
        requireGas
    {
        require(requestId > 0, "Oracle: Invalid request is zero");
        require(!isRequestPending(msg.sender, requestId), "Oracle: Get duplicated withdraw seed request"); 

        address requester = msg.sender;
        uint256 providedGas = msg.value;

        requesterAndIdToProvidedGas[requester][requestId] = providedGas;

        emit WithdrawSeedRequested(requester, requestId, requestAmount, withdrawer, providedGas);
    }

    // =============== Prophet method ================
    function provideWithdrawSeedmons(
        address requester, 
        uint256 requestId, 
        uint256[] memory tokenIds, 
        uint256[] memory exps, 
        bool isSuccess
    ) 
        external 
        onlyProphet 
    {
        require(isRequestPending(requester, requestId), "Oracle: Transaction was refunded or responded"); 
        
        uint256 providedGas = requesterAndIdToProvidedGas[requester][requestId];
        delete requesterAndIdToProvidedGas[requester][requestId];  

        IClientV3(requester).onWithdrawSeedmonsReceived(requestId, tokenIds, exps, isSuccess);
        payable(msg.sender).transfer(providedGas);

        emit ProphetResponse(requester, requestId);  
    }

    function provideWithdrawSeed(address requester, uint256 requestId, uint256 tokenBalance, bool isSuccess)
        external
        onlyProphet
    {
        require(isRequestPending(requester, requestId), "Oracle: Transaction was refunded or responded"); 
        
        uint256 providedGas = requesterAndIdToProvidedGas[requester][requestId];
        delete requesterAndIdToProvidedGas[requester][requestId];  

        IClientV3(requester).onWithdrawSeedReceived(requestId, tokenBalance, isSuccess);
        payable(msg.sender).transfer(providedGas);

        emit ProphetResponse(requester, requestId);  
    }
}