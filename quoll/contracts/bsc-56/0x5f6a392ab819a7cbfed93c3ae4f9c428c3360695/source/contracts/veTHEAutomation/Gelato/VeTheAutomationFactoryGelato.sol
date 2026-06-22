// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "@openzeppelin/contracts/access/Ownable.sol";
import "./VeTheAutomationBase.sol";


/// @title VeTHE vote automation
/// @author Prometheus - THENA
contract VeTheAutomationFactoryGelato is Ownable {

    // voter address
    address public voter = 0x3A1D0952809F4948d15EBCe8d345962A282C4fCb;

    // map automation contract address to a tokenId
    mapping(address => uint) public automationToTokenId;

    // map tokenId to a automation contract address
    mapping(uint => address) public tokenIdToAutomation;

    // map automation contract address to a boolean status
    mapping(address => bool) public isAutomation;

    // map tokenId to a boolean status
    mapping(uint => bool) public isAutomationTokenId;

    event CreateAutomation(uint indexed tokenId, address indexed owner, address indexed automationContract, uint startTimestamp, address[] pools, uint[] _weights);

    constructor()  {}

    /// @notice Create a Gelato Automation for veTHE voting
    /// @param _tokenId         tokenId to use, must be owner
    /// @param _startTimestamp  when the automation need to run the first time
    /// @param _pools           the pools (LP) to vote
    /// @param _weights         the weights of the pools
    function createAutomation(uint _tokenId, uint _startTimestamp, address[] calldata _pools, uint256[] calldata _weights) external returns(address automationContract){
        
        automationContract = address ( new VeTheAutomationBase(_tokenId, _startTimestamp, msg.sender, _pools, _weights) );
        require(!isAutomation[automationContract], 'VTAF: automation exists');

        automationToTokenId[automationContract] = _tokenId;
        tokenIdToAutomation[_tokenId] = automationContract;
        isAutomation[automationContract] = true;
        isAutomationTokenId[_tokenId] = true;
        
        emit CreateAutomation(_tokenId, msg.sender, automationContract, _startTimestamp, _pools, _weights);
    }

    /// @notice Set the voter
    /// @param _voter   new voter address
    function setVoter(address _voter) external onlyOwner {
        require(_voter != address(0), 'VTAF: address 0');
        voter = _voter;
    }




}