// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
pragma experimental ABIEncoderV2;

interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function totalSupply() external view returns (uint256);

    function balanceOf(address who) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}



/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
  address public owner;


  event OwnershipRenounced(address indexed previousOwner);
  event OwnershipTransferred(
    address indexed previousOwner,
    address indexed newOwner
  );


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  constructor() public {
    owner = msg.sender;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Allows the current owner to relinquish control of the contract.
   */
  function renounceOwnership() public onlyOwner {
    emit OwnershipRenounced(owner);
    owner = address(0);
  }

  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param _newOwner The address to transfer ownership to.
   */
  function transferOwnership(address _newOwner) public onlyOwner {
    _transferOwnership(_newOwner);
  }

  /**
   * @dev Transfers control of the contract to a newOwner.
   * @param _newOwner The address to transfer ownership to.
   */
  function _transferOwnership(address _newOwner) internal {
    require(_newOwner != address(0));
    emit OwnershipTransferred(owner, _newOwner);
    owner = _newOwner;
  }
}

contract variables {

    address public constant platformTokenETH = 0xF063fE1aB7a291c5d06a86e14730b00BF24cB589; // Sale token address valid for mainnet ETH
    address public constant platformTokenBSC = 0x04F73A09e2eb410205BE256054794fB452f0D245; // Sale token address valid for mainnet BSC
    address public team_acc = 0xC14fb72518E67B008f1BD8E195861472f8128090;    //valid for mainnet
    uint256  public minPlatTokenReq = 1000000000000000000000;  //1000 sale tokens
    address public dead = 0x000000000000000000000000000000000000dEaD;
    bool public burn = false;
    bool public feesEnabled = false;
    uint256 public verifyFees = 1000000000000000000;
} 



contract TokenAuditVerify is variables,Ownable {
    
mapping(address => bool) public Auditors;
mapping(address => bool) public AuditorsAdded;
mapping(address => address) public auditedBy;
mapping(address => string) public auditedByName;
mapping(address => bool) public AuditVerfied;
mapping(address => string) public auditorComment;
mapping(address => string) public auditorComment1;
mapping(address => string) public auditorComment2;
mapping(address => string) public auditorScore;
mapping(address => string) public AuditorName;  
mapping(address => bool) public verifiedAlready;
mapping(address => uint256) public AuditorNumbers;
mapping(address => mapping(uint256 => address)) public AuditorTotalList;
mapping(uint256 => address) public AllAuditTokens;
uint256 public auditsverifiedNumber;

  function verifyAudit(address _token, string memory _score, string memory _comment, string memory _comment1, string memory _comment2) public payable {
  
    require(Auditors[msg.sender],"NOT auditor"); 
    require(!verifiedAlready[_token],"already verified!");
  
    if(feesEnabled){
        if(burn){
            require(IERC20(platformTokenBSC).transferFrom(msg.sender,dead,minPlatTokenReq), "sale token transfer fail");
        }
        else{
            require(msg.value >= verifyFees,"msg.value must be >= drop fees");
            payable(team_acc).transfer(verifyFees);
        }
    } 


    AuditVerfied[_token] = true;
    auditorComment[_token] = _comment;
    auditorComment1[_token] = _comment1;
    auditorComment2[_token] = _comment2;
    auditorScore[_token] = _score;
    auditedBy[_token] = msg.sender;
    auditedByName[_token] = AuditorName[msg.sender];
    verifiedAlready[_token] = true;
    AllAuditTokens[auditsverifiedNumber] = _token;
    auditsverifiedNumber++;
    
    AuditorTotalList[msg.sender][AuditorNumbers[msg.sender]] = _token;
    AuditorNumbers[msg.sender]++;
    
  }

function updateComment(address _tokenAddress, string memory _newComment) public {
    
    require(Auditors[msg.sender],"NOT auditor");
    require(auditedBy[_tokenAddress] == msg.sender, "Incorrect Auditor");
    require(verifiedAlready[_tokenAddress],"token not audit verified yet");
    auditorComment[_tokenAddress] = _newComment;
    
    
}
    
function updateComment1(address _tokenAddress, string memory _newComment1) public {
    
    require(Auditors[msg.sender],"NOT auditor");
    require(auditedBy[_tokenAddress] == msg.sender, "Incorrect Auditor");
    require(verifiedAlready[_tokenAddress],"token not audit verified yet");
    auditorComment1[_tokenAddress] = _newComment1;
    
    
}    
function updateComment2(address _tokenAddress, string memory _newComment2) public {
    
    require(Auditors[msg.sender],"NOT auditor");
    require(auditedBy[_tokenAddress] == msg.sender, "Incorrect Auditor");
    require(verifiedAlready[_tokenAddress],"token not audit verified yet");
    auditorComment2[_tokenAddress] = _newComment2;
    
    
}
function updateScore(address _tokenAddress, string memory _newScore) public {
    
    require(Auditors[msg.sender],"NOT auditor");
    require(auditedBy[_tokenAddress] == msg.sender, "Incorrect Auditor");
    require(verifiedAlready[_tokenAddress],"token not audit verified yet");
    auditorScore[_tokenAddress] = _newScore;
    
    
} 
    function addToAuditors(address _auditorAddress, string memory _name)  onlyOwner public{
        require(!Auditors[_auditorAddress], "auditor already exist");
        Auditors[_auditorAddress]=true;
        AuditorsAdded[_auditorAddress] = true;
        AuditorName[_auditorAddress] = _name;
        
    }
    
    function changeAuditorName(address _auditorAddress, string memory _newName)  onlyOwner public{
        
        require(AuditorsAdded[_auditorAddress], "auditor doesn't exist");
        AuditorName[_auditorAddress] = _newName;
        
    }
    
    function enableAuditor(address _auditorAddress)  onlyOwner public{
        
        require(AuditorsAdded[_auditorAddress], "auditor doesnot exist!");
        require(!Auditors[_auditorAddress],"Auditor already enabled");
        Auditors[_auditorAddress]=true;

        
    }
    
    function disableAuditor(address _auditorAddress)  onlyOwner public{
        
        require(AuditorsAdded[_auditorAddress], "auditor doesnot exist!");
        require(Auditors[_auditorAddress],"Auditor already disabled");
        Auditors[_auditorAddress]=false;
        
        
    }

    function updateAuditorName(address _auditorAddress,string memory _newName) public onlyOwner {
        
        AuditorName[_auditorAddress] = _newName;
        
        
    }
    
    
    function updateDeadAddress(address _newDeadAddress) onlyOwner public {
        
        dead = _newDeadAddress;
        
        
    }    
 

    
 function AddToAuditorsInMass(address[] memory _auditorAddresses, string[] memory _auditorNames) public onlyOwner{
     
    for(uint256 i = 0; i < _auditorAddresses.length; i++){
        addToAuditors(_auditorAddresses[i],_auditorNames[i]);
    }
     
 }
 
 function RemoveFromAuditorsInMass(address[] memory _auditorAddresses) public onlyOwner{
     
    for(uint256 i = 0; i < _auditorAddresses.length; i++){
        disableAuditor(_auditorAddresses[i]);
    }
 }
 
function changeSaleRequired(uint256 _newFeeAmount) public onlyOwner {
    
    require(_newFeeAmount >= 0,"invalid amount");
    minPlatTokenReq = _newFeeAmount;
    
    
    
}

function changeFees(uint256 _newFeeAmount) public onlyOwner {
    
    require(_newFeeAmount >= 0,"invalid amount");
    verifyFees = _newFeeAmount;
    
   
    
}


function removeAuditVerified(address _tokenAddress) public onlyOwner {
    
    AuditVerfied[_tokenAddress] = false;
    
    
}
    function enableFees() public onlyOwner{
        
        
        feesEnabled = true;
        
    }
    function disableFees() public onlyOwner{
        
        
        feesEnabled = false;
        
    }    
    function enableBurn() public onlyOwner{
        
        
        burn = true;
        
    }
    function disableBurn() public onlyOwner{
        
        
        burn = false;
        
    }
    
    
    function getTotalTokensByAuditor(address _Auditor) public view returns(address[] memory) {
        
        address[] memory auditedTokenList = new address[](AuditorNumbers[_Auditor]);
        for(uint256 i = 0; i < AuditorNumbers[_Auditor]; i++){
            auditedTokenList[i] = AuditorTotalList[_Auditor][i];
    }
        
     return auditedTokenList;   
        
    }
    
    function getData(address _token) public view returns(bool,address,string memory,string memory,string memory,string memory,string memory) {
        
        return (AuditVerfied[_token],auditedBy[_token],auditedByName[_token],auditorComment[_token],auditorComment1[_token],auditorComment2[_token],auditorScore[_token]);
        
        
    }
    function getAllAuditTokens() public view returns (address[] memory){
     address[] memory TokenList = new address[](auditsverifiedNumber);   
        for(uint256 i = 0; i < auditsverifiedNumber; i++){
            TokenList[i] = AllAuditTokens[i];
    }  
    
    return TokenList;    
        
        
    }
}
