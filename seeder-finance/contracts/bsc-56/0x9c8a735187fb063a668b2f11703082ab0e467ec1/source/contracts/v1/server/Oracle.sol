// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../interface/IOracle.sol";
import "../interface/IClient.sol";
import "../../utils/Prophetable.sol";
import "../../utils/SafeMath.sol";

contract Oracle is IOracle, Prophetable {
    using SafeMath for uint256;

    event MinimumGasChanged(uint256 newMinimumGas);
    event ServiceStatusChanged(bool isOpen);
    event PartnerChanged(address address_, bool isPartner);

    event ProphetResponse(address requester, uint256 requestId);
    event ErrorOnProphetResponse(address requester, uint256 requestId);
    event Refund(address requester, uint256 requestId);
    event InsufficientProvidedGas(address requster, uint256 requestId, uint256 requiredGas);

    event RequestRandomNumber(address requester, uint256 requestId, uint256 minNumber, uint256 maxNumber, uint256 requiredNumber, uint256 provideGas);
    event RequestRandomSeedmon(address requester, uint256 requestId, uint256 packId, uint256 minNumber, uint256 maxNumber, uint256 provideGas);

    uint256 public minimumGas;
    bool public isOpen;

    mapping(address => mapping(uint256 => uint256)) public requesterAndIdToProvidedGas;
    mapping(address => mapping(uint256 => uint256)) public requesterAndIdToBlockNumber;

    modifier onlyOpen() {
        require(isOpen, "Oracle: Service is under maintenance");
        _;
    }

    modifier requireGas() {
        require(msg.value >= minimumGas, "Oracle: Minimum gas must be provided");
        _;
    }

    function initialize(uint256 minimumGas_, bool isOpen_) external initializer {
        __Prophetable_init();
        
        setMinimumGas(minimumGas_);
        setIsOpen(isOpen_);
    }

    function getTotalBalance() public view returns (uint256 totalProvidedGas) {
        return address(this).balance;
    }

    function isRequestPending(address requester, uint256 requestId) public view override returns (bool result) {
        result = requesterAndIdToProvidedGas[requester][requestId] > 0;
    }

    // In case the prophet cannot provide job in your time limit 
    // then you can request for the refund by yourself
    function refund(uint256 requestId) external override {
        require(isRequestPending(msg.sender, requestId), "Oracle: Transaction was refunded or responded"); 
        
        uint256 providedGas = requesterAndIdToProvidedGas[msg.sender][requestId];
        delete requesterAndIdToProvidedGas[msg.sender][requestId];  

        IClient(msg.sender).onRefund{value: providedGas}(requestId);

        emit Refund(msg.sender, requestId);
    }

    function requestRandomNumber(uint256 requestId, uint256 minNumber, uint256 maxNumber, uint256 requiredNumber) onlyOpen requireGas payable override external {
        require(requestId > 0, "Oracle: Invalid request is zero");
        require(maxNumber > minNumber, "Oracle: Max number must exceed min number");
        require(requiredNumber <= 6, "Oracle: 6 is max required number");
        require(!isRequestPending(msg.sender, requestId), "Oracle: Get duplicated processing request"); 

        address requester = msg.sender;
        uint256 providedGas = msg.value;

        requesterAndIdToProvidedGas[requester][requestId] = providedGas;

        emit RequestRandomNumber(requester, requestId, minNumber, maxNumber, requiredNumber, providedGas);
    }

    function requestRandomSeedmon(uint256 requestId, uint256 packId, uint256 minBonusStat, uint256 maxBonusStat) onlyOpen requireGas payable override external {
        require(requestId > 0, "Oracle: Invalid request is zero");
        require(maxBonusStat >= minBonusStat, "Oracle: Max number must exceed min number");
        require(!isRequestPending(msg.sender, requestId), "Oracle: Get duplicated processing request"); 

        address requester = msg.sender;
        uint256 providedGas = msg.value;

        requesterAndIdToProvidedGas[requester][requestId] = providedGas;

        emit RequestRandomSeedmon(requester, requestId, packId, minBonusStat, maxBonusStat, providedGas);
    }

    // =============== Prophet method ================

    // This is method is going to be used in case the provided gas is insufficient
    // certianly we pay gas to process so the provided gas is not going to be refunded
    function alertInsufficientGas(address requester, uint256 requestId, uint256 requiredGas) external onlyProphet {
        require(isRequestPending(requester, requestId), "Oracle: Transaction was refunded or responded"); 
        delete requesterAndIdToProvidedGas[requester][requestId];  

        uint256 providedGas = requesterAndIdToProvidedGas[requester][requestId];
        payable(msg.sender).transfer(providedGas);

        emit InsufficientProvidedGas(requester, requestId, requiredGas);
    }

    // This method is going to be used by only trust prophet
    // After they done their job that the provided gas can be transfered to conpensate their advances usage
    function provideRandomNumber(address requester, uint256 requestId, uint256[] calldata randomNumbers) external onlyProphet {
        require(isRequestPending(requester, requestId), "Oracle: Transaction was refunded or responded"); 
        
        uint256 providedGas = requesterAndIdToProvidedGas[requester][requestId];
        delete requesterAndIdToProvidedGas[requester][requestId];  

        try IClient(requester).onRandomNumberReceived(requestId, randomNumbers) {
        } catch {
            emit ErrorOnProphetResponse(requester, requestId);
        }

        payable(msg.sender).transfer(providedGas);

        emit ProphetResponse(requester, requestId);  
    }

    // This method is going to be used by only trust prophet
    // After they done their job that the provided gas can be transfered to conpensate their advances usage
    function provideRandomSeedmon(address requester, uint256 requestId, bytes32 seedmonName,  uint256[] memory bonusStats) external onlyProphet {
        require(isRequestPending(requester, requestId), "Oracle: Transaction was refunded or responded"); 
        
        uint256 providedGas = requesterAndIdToProvidedGas[requester][requestId];
        delete requesterAndIdToProvidedGas[requester][requestId];  

        IClient(requester).onRandomSeedmonReceived(requestId, seedmonName, bonusStats);
        payable(msg.sender).transfer(providedGas);

        emit ProphetResponse(requester, requestId);  
    }

    // =============== Owner method =================

    // This method is to set lower of minimum gas to ensure the prophercy can be provided
    // since the average gas price is changed on daily basis
    function setMinimumGas(uint256 minimumGas_) public onlyOwner {
        minimumGas = minimumGas_;

        emit MinimumGasChanged(minimumGas);
    }

    // This method is to ensure why the service is under maintenance the user is not get much impact
    function setIsOpen(bool isOpen_) public onlyOwner {
        isOpen = isOpen_;

        emit ServiceStatusChanged(isOpen);
    }
}