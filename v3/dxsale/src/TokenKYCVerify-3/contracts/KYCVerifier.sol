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



contract TokenKYCVerify is variables,Ownable {
    
mapping(address => bool) public KYC;
mapping(address => bool) public KYCAdded;
mapping(address => address) public KYCedBy;
mapping(address => string) public KYCedByName;
mapping(address => bool) public KYCVerfied;
mapping(address => string) public KYCComment;
mapping(address => string) public KYCComment1;
mapping(address => string) public KYCComment2;
mapping(address => string) public KYCScore;
mapping(address => string) public KYCName;  
mapping(address => bool) public verifiedAlready;
mapping(address => uint256) public KYCNumbers;
mapping(address => mapping(uint256 => address)) public KYCTotalList;
mapping(uint256 => address) public AllKYCWallets;

uint256 public KYCsverifiedNumber;

  function verifyKYC(address _wallet, string memory _score, string memory _comment, string memory _comment1, string memory _comment2) public payable {
  
    require(KYC[msg.sender],"NO KYC Authorization"); 
    require(!verifiedAlready[_wallet],"already verified!");
  
    if(feesEnabled){
        if(burn){
            require(IERC20(platformTokenBSC).transferFrom(msg.sender,dead,minPlatTokenReq), "sale token transfer fail");
        }
        else{
            require(msg.value >= verifyFees,"msg.value must be >= drop fees");
            payable(team_acc).transfer(verifyFees);
        }
    } 


    KYCVerfied[_wallet] = true;
    KYCComment[_wallet] = _comment;
    KYCComment1[_wallet] = _comment1;
    KYCComment2[_wallet] = _comment2;
    KYCScore[_wallet] = _score;
    KYCedBy[_wallet] = msg.sender;
    KYCedByName[_wallet] = KYCName[msg.sender];
    verifiedAlready[_wallet] = true;
    AllKYCWallets[KYCsverifiedNumber] = _wallet;
    KYCsverifiedNumber++;
    
    KYCTotalList[msg.sender][KYCNumbers[msg.sender]] = _wallet;
    KYCNumbers[msg.sender]++;

    
  }

function updateComment(address _walletAddress, string memory _newComment) public {
    
    require(KYC[msg.sender],"NOT KYC");
    require(KYCedBy[_walletAddress] == msg.sender, "Incorrect KYC");
    require(verifiedAlready[_walletAddress],"token not KYC verified yet");
    KYCComment[_walletAddress] = _newComment;
    
    
}
    
function updateComment1(address _walletAddress, string memory _newComment1) public {
    
    require(KYC[msg.sender],"NOT KYC");
    require(KYCedBy[_walletAddress] == msg.sender, "Incorrect KYC");
    require(verifiedAlready[_walletAddress],"token not KYC verified yet");
    KYCComment1[_walletAddress] = _newComment1;
    
    
}    
function updateComment2(address _walletAddress, string memory _newComment2) public {
    
    require(KYC[msg.sender],"NOT KYC");
    require(KYCedBy[_walletAddress] == msg.sender, "Incorrect KYC");
    require(verifiedAlready[_walletAddress],"token not KYC verified yet");
    KYCComment2[_walletAddress] = _newComment2;
    
    
}
function updateScore(address _walletAddress, string memory _newScore) public {
    
    require(KYC[msg.sender],"NOT KYC");
    require(KYCedBy[_walletAddress] == msg.sender, "Incorrect KYC");
    require(verifiedAlready[_walletAddress],"token not KYC verified yet");
    KYCScore[_walletAddress] = _newScore;
    
    
} 
    function addToKYC(address _KYCAddress, string memory _name)  onlyOwner public{
        require(!KYC[_KYCAddress], "KYC already exist");
        KYC[_KYCAddress]=true;
        KYCAdded[_KYCAddress] = true;
        KYCName[_KYCAddress] = _name;
        
    }
    
    function updateKYCName(address _KYCAddress, string memory _newName)  onlyOwner public{
        
        require(KYCAdded[_KYCAddress], "KYC doesn't exist");
        KYCName[_KYCAddress] = _newName;
        
    }
    
    function enableKYC(address _KYCAddress)  onlyOwner public{
        
        require(KYCAdded[_KYCAddress], "KYC doesnot exist!");
        require(!KYC[_KYCAddress],"KYC already enabled");
        KYC[_KYCAddress]=true;

        
    }
    
    function disableKYC(address _KYCAddress)  onlyOwner public{
        
        require(KYCAdded[_KYCAddress], "KYC doesnot exist!");
        require(KYC[_KYCAddress],"KYC already disabled");
        KYC[_KYCAddress]=false;
        
        
    }

    
    function updateDeadAddress(address _newDeadAddress) onlyOwner public {
        
        dead = _newDeadAddress;
        
        
    }    
 

    
 function AddToKYCInMass(address[] memory _KYCAddresses, string[] memory _KYCNames) public onlyOwner{
     
    for(uint256 i = 0; i < _KYCAddresses.length; i++){
        addToKYC(_KYCAddresses[i],_KYCNames[i]);
    }
     
 }
 
 function RemoveFromKYCInMass(address[] memory _KYCAddresses) public onlyOwner{
     
    for(uint256 i = 0; i < _KYCAddresses.length; i++){
        disableKYC(_KYCAddresses[i]);
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


function removeKYCVerified(address _walletAddress) public onlyOwner {
    
    KYCVerfied[_walletAddress] = false;
    
    
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
    
    
    function getTotalWalletsByKYC(address _KYC) public view returns(address[] memory) {
        
        address[] memory KYCedTokenList = new address[](KYCNumbers[_KYC]);
        for(uint256 i = 0; i < KYCNumbers[_KYC]; i++){
            KYCedTokenList[i] = KYCTotalList[_KYC][i];
    }
        
     return KYCedTokenList;   
        
    }
    
    function getData(address _wallet) public view returns(bool,address,string memory,string memory,string memory,string memory,string memory) {
        return (KYCVerfied[_wallet],KYCedBy[_wallet],KYCedByName[_wallet],KYCComment[_wallet],KYCComment1[_wallet],KYCComment2[_wallet],KYCScore[_wallet]);
    }
    
    function getAllKYCWallets() public view returns (address[] memory){
     address[] memory WalletList = new address[](KYCsverifiedNumber);   
        for(uint256 i = 0; i < KYCsverifiedNumber; i++){
            WalletList[i] = AllKYCWallets[i];
    }  
    
    return WalletList;    
        
        
    }
}
