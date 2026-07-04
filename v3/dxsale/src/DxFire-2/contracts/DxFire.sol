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



library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
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

contract Consts {

    address public constant platformTokenETH = 0xF063fE1aB7a291c5d06a86e14730b00BF24cB589; // Sale token address valid for mainnet ETH
    address public constant platformTokenBSC = 0x04F73A09e2eb410205BE256054794fB452f0D245; // Sale token address valid for mainnet BSC
    address public team_acc = 0xC14fb72518E67B008f1BD8E195861472f8128090;    //valid for mainnet
    uint256  public minPlatTokenReq = 1000000000000000000000;  //1000 sale tokens
    address public dead = 0x000000000000000000000000000000000000dEaD;
    bool public burn = true;
    bool public feesEnabled = false;
    uint256 public fireFees = 1000000000000000000;
}



contract DxFire is Consts,Ownable {
    
    using SafeMath for uint256;
   

//address payable platformAddress;



    
    mapping(address => mapping(address => uint256)) public voterPresale;
    mapping(address => mapping(address => uint256)) public voterToken;
    mapping(address => mapping(address => uint256)) public voteCount;
    mapping(address => address) public tokenToPresaleAddr;
    mapping(address => address) public presaleToTokenAddr;
    mapping(address => bool) public embargo;
    mapping(address => bool) public tokenDisabled;
    mapping(address => bool) public presaleDisabled;
    mapping(address => bool) public Moderator;
    mapping(address => uint256) public tokenIndex;
    mapping(address => bool) public tokenIndexed;
    //mapping(address => uint256) public upvote;
    mapping(address => uint256) public upvoteToken;
    //mapping(address => uint256) public proUpvote;
    //mapping(address => uint256) public proDownvote;    
    mapping(uint256 => uint256) public top10;
    //address[] public top10PreAddr = new address[](11);
    //address[] public top10TokAddr = new address[](11);
    mapping(uint256 => address) public top10TokAddr;
    uint256 public lastReset = block.timestamp;
    uint256 public fireDownThreshold = 18000;
    uint256 public voteReductionAmount = 5;
    uint256 public votingTimeout = 3600;
    bool public fireMeterDisabled;
    bool public reductionDisabled;
/*
 function swapPresaleAddr(address addrIn, address addrOut, uint256 index) internal {
     
     
     top10PreAddr[index] = addrIn;
     top10PreAddr[index.add(1)] = addrOut;
     
     
 }
*/
 function swapTokenAddr(address addrIn, address addrOut, uint256 index) internal {
     
     
     top10TokAddr[index] = addrIn;
     top10TokAddr[index+1] = addrOut;
     if(tokenIndex[addrIn] > 0){
        tokenIndex[addrIn] = tokenIndex[addrIn].sub(1);
     }
     if(addrOut != address(0x0)){
        tokenIndex[addrOut] = tokenIndex[addrOut].add(1);
     }
 }
 /*
  function enableVote(address _presale) public {
      
    require(!presaleVoteStruct[_presale].votingEnabled, "Voting already enabled!");
    presaleVotes memory votingPresalesData = presaleVotes({
                          votingEnabled:true,
                          upvotes:0,
                          downvotes:0,
                          proupvotes:0,
                          prodownvotes:0
            });
            
    presaleVoteStruct[_presale] = votingPresalesData;
      
      
  }

*/
    function FireUp(address _presale, address _token) public payable{
        require(msg.sender == tx.origin,"can't vote via contracts");
        require(!fireMeterDisabled,"fire meter disabled");
        require(!tokenDisabled[_token],"this token is not eligible");
        require(!presaleDisabled[_presale],"this presale is not eligible");        
        require(_presale != address(0),"cant vote on zero presale addrs!");
        require(_token != address(0),"cant vote on zero token addrs!");
        require(!embargo[msg.sender],"voter is not allowed!");
        
        if(feesEnabled){
            if(burn){
                require(IERC20(platformTokenETH).transferFrom(msg.sender,dead,minPlatTokenReq), "sale token transfer fail");
            }
            else{
                require(msg.value >= fireFees,"msg.value must be >= drop fees");
                payable(team_acc).transfer(fireFees);
            }
        } 
 //       require(block.timestamp > voterPresale[_presale][msg.sender], "presale voting timeout");
        require(block.timestamp > voterToken[_token][msg.sender], "token voting timeout");
        
        if(block.timestamp > lastReset.add(fireDownThreshold)){
            if(!reductionDisabled){
                reduceTopVote();    
                lastReset = block.timestamp;
            }
        } 
        
//        voterPresale[_presale][msg.sender] = block.timestamp.add(votingTimeout);
        voterToken[_token][msg.sender] = block.timestamp.add(votingTimeout);
//    presaleVoteStruct[_presale].upvotes++;
//        upvote[_presale]++;
        upvoteToken[_token]++;
        voteCount[msg.sender][_token]++;
        presaleToTokenAddr[_presale] = _token;
        tokenToPresaleAddr[_token] = _presale;
/*        
//        uint i = 9;
//        while(i < 10){
        for(uint i = 9;i >= 0; i--){
        
            if(upvoteToken[_token] >= top10[i]){
                if(i == 0){
//                    swapPresaleAddr(_presale, top10PreAddr[i],i);
//                    swapTokenAddr(_token,top10TokAddr[i],i);
                    top10[i] = upvoteToken[_token];

                }
            }
            else{
//                    swapPresaleAddr(_presale, top10PreAddr[i-1],i-1);
//                    swapTokenAddr(_token,top10TokAddr[i-1],i-1);
                    top10[i] = upvoteToken[_token];                
//                    break;
            
            }
            
//            i--;        
        }
        */
    if(!tokenIndexed[_token]) {
//        if(upvoteToken[_token] >= top10[10]){

//                    swapPresaleAddr(_presale, top10PreAddr[i],i);
//                    swapTokenAddr(_token,top10TokAddr[i],i);
//                    top10[9] = upvoteToken[_token];
                    tokenIndex[_token] = 10;
                
//            }       
        tokenIndexed[_token] = true;
   }
    else {
        if(tokenIndex[_token] > 0){
            if(upvoteToken[_token] >= top10[tokenIndex[_token].sub(1)]){
           
                swapTokenAddr(_token,top10TokAddr[tokenIndex[_token].sub(1)],tokenIndex[_token].sub(1)); 
                top10[tokenIndex[_token]] = upvoteToken[_token];
                top10[tokenIndex[top10TokAddr[tokenIndex[_token].add(1)]]] = upvoteToken[top10TokAddr[tokenIndex[_token].add(1)]];           
                }
            }
            
            else {
                
                top10[tokenIndex[_token]] = upvoteToken[_token];
                
            }
        }
    }
    function reduceTopVote() internal {
//        uint i = 9;    
//       while(i >= 0){
        for(uint256 i = 0;i <= 9;i++){
        if(top10[i] >= voteReductionAmount){
            top10[i] = top10[i].sub(voteReductionAmount); 
//          upvote[top10PreAddr[i]] = upvote[top10PreAddr[i]].sub(voteReductionAmount);
            upvoteToken[top10TokAddr[i]] = top10[i];
        }
           else{
               
             top10[i] = 0;  
             upvoteToken[top10TokAddr[i]] = 0;  
           }
//          i--;
       } 
        

    }


    function reduceTopVoteOwner() public onlyOwner {
//        uint i = 9;    
//       while(i >= 0){
        for(uint256 i = 0;i <= 9;i++){
        if(top10[i] >= voteReductionAmount){
            uint256 tempTop10 = top10[i].sub(voteReductionAmount);
            uint256 tempUpVote = upvoteToken[top10TokAddr[i]].sub(voteReductionAmount);
            top10[i] = tempTop10; 
//          upvote[top10PreAddr[i]] = upvote[top10PreAddr[i]].sub(voteReductionAmount);
//            upvoteToken[top10TokAddr[i]] = tempUpVote;
            upvoteToken[top10TokAddr[i]] = top10[i];
        }
           else{
               
             top10[i] = 0;  
             upvoteToken[top10TokAddr[i]] = 0;  
           }
//          i--;
       } 
        

    }    
    /*
    function PROUPVOTE(address _presale) public{
        require(!embargo[msg.sender],"voter is not allowed!");
        require(proVoter[msg.sender],"voter is not pro!");
        //require(IERC20(platformToken).balanceOf(msg.sender) >= minPlatTokenReq, "User doesnt have enough sale token to vote!");
        require(!voter[_presale][msg.sender], "User already voted!");
        

            
    voter[_presale][msg.sender] = true;
//    presaleVoteStruct[_presale].proupvotes++;
    proUpvote[_presale]++;

   
 
    }
*/    
    /*
    function DOWNVOTE(address _presale) public payable{

        require(!embargo[msg.sender],"voter is not allowed!");
        
        if(feesEnabled){
            if(burn){
                require(IERC20(platformTokenETH).transferFrom(msg.sender,dead,minPlatTokenReq), "sale token transfer fail");
            }
            else{
                require(msg.value >= dropFees,"msg.value must be >= drop fees");
                payable(team_acc).transfer(dropFees);
            }
        }
        
        
        require(presaleVoteStruct[_presale].votingEnabled, "Voting not enabled!");
        require(!voter[_presale][msg.sender].alreadyVoted, "User already voted!");
        

            
    voter[_presale][msg.sender] = true;
    presaleVoteStruct[_presale].downvotes++;
    downvote[_presale]++;

   
 
    }
    
    */
    
    /*
    function PRODOWNVOTE(address _presale) public{
        require(!embargo[msg.sender],"voter is not allowed!");
        require(proVoter[msg.sender],"voter is not pro!");
        //require(IERC20(platformToken).balanceOf(msg.sender) >= minPlatTokenReq, "User doesnt have enough sale token to vote!");
        require(presaleVoteStruct[_presale].votingEnabled, "Voting not enabled!");
        require(!voter[_presale][msg.sender].alreadyVoted, "User already voted!");
        

            
    voter[_presale][msg.sender] = true;
    presaleVoteStruct[_presale].prodownvotes++;
    proDownvote[_presale]++;

   
 
    } 
    
    */
    
 /*   
    function addToProVoter(address _walletAddress)  onlyOwner public{
        
        proVoter[_walletAddress]=true;
        
        
    }
    
    function removeFromProVoter(address _walletAddress)  onlyOwner public{
        
        proVoter[_walletAddress]=false;
        
        
    }
*/    
    function updateDeadAddress(address _newDeadAddress) onlyOwner public {
        
        dead = _newDeadAddress;
        
        
    }    
 
    function addToEmbargo(address _embargoAddress) onlyOwner public {
        
        require(!embargo[_embargoAddress],"voter is already embargoed");
        
        embargo[_embargoAddress] = true;
        
        
    }
    function removeFromEmbargo(address _embargoAddress) onlyOwner public {
        
        require(embargo[_embargoAddress],"voter is not in embargo list");
        
        embargo[_embargoAddress] = false;
        
        
    }
    
 function AddToWhitelist(address[] memory _whitelistAddress) public onlyOwner{
     
    for(uint256 i = 0; i < _whitelistAddress.length; i++){
        addToEmbargo(_whitelistAddress[i]);
    }
     
 }
 
 function RemoveFromWhitelist(address[] memory _whitelistAddress) public onlyOwner{
     
    for(uint256 i = 0; i < _whitelistAddress.length; i++){
        removeFromEmbargo(_whitelistAddress[i]);
    }
 }
 
function changeSaleRequired(uint256 _newFeeAmount) public onlyOwner {
    
    require(_newFeeAmount >= 0,"invalid amount");
    minPlatTokenReq = _newFeeAmount;
    
    
    
}

function changeFees(uint256 _newFeeAmount) public onlyOwner {
    
    require(_newFeeAmount >= 0,"invalid amount");
    fireFees = _newFeeAmount;
    
   
    
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
    function getTop() public view returns (address[] memory,address[] memory, uint256 [] memory){
        
        address[] memory top10PreAddress = new address[](10);
        address[] memory top10TokAddress = new address[](10);
        uint256[] memory top10TokScore = new uint256[](10);
        for(uint i = 0;i <= 9;i++){
          top10PreAddress[i] = tokenToPresaleAddr[top10TokAddr[i]];
          top10TokAddress[i] = top10TokAddr[i];
          top10TokScore[i] = top10[i];
//          i--;
       } 
        return (top10PreAddress,top10TokAddress, top10TokScore);
        
        
    }
     function getTopToken() public view returns (address[] memory){
        
        address[] memory top10TokAddress = new address[](10);
        for(uint i = 0;i <= 9;i++){
          top10TokAddress[i] = top10TokAddr[i];

//          i--;
       } 
        return (top10TokAddress);
        
        
    }

     function getTopTokenScore() public view returns (uint256[] memory){
        
        uint256[] memory top10TokScore = new uint256[](10);
        for(uint i = 0;i <= 9;i++){
          top10TokScore[i] = top10[i];

//          i--;
       } 
        return (top10TokScore);
        
        
    }
    function changeVoteReduceAmount(uint256 _newAmount) public onlyOwner {
        
        
        voteReductionAmount = _newAmount;
        
        
        
    }
    function changefireDownThreshold(uint256 _newThreshold) public onlyOwner {
        
        
        fireDownThreshold = _newThreshold;
        
        
        
    }
    function changeVotingTimeout(uint256 _newTimeout) public onlyOwner {
        
        
        votingTimeout = _newTimeout;
        
        
        
    }
    function EnableFireMeter() public onlyOwner {
        
        require(fireMeterDisabled,"already enabled");
        fireMeterDisabled = false;
        
        
        
    }
    function DisableFireMeter() public onlyOwner {
        
        require(!fireMeterDisabled,"already disabled");
        fireMeterDisabled = true;
        
        
        
    }

    function EnableVoteReduction() public onlyOwner {
        
        require(reductionDisabled,"already enabled");
        reductionDisabled = false;
        
        
        
    }
    function DisableVoteReduction() public onlyOwner {
        
        require(!reductionDisabled,"already disabled");
        reductionDisabled = true;
        
        
    }
    function DisableToken(address _token) public {
        require(Moderator[msg.sender],"not moderator");
        require(!tokenDisabled[_token],"already disabled");
        tokenDisabled[_token] = true;
        presaleDisabled[tokenToPresaleAddr[_token]] = true;
        
        
    }
    function EnableToken(address _token) public {
        require(Moderator[msg.sender],"not moderator");        
        require(tokenDisabled[_token],"already enabled");
        tokenDisabled[_token] = false;
        presaleDisabled[tokenToPresaleAddr[_token]] = false;        
        
    }

    function addToModerator(address _newModerator) public onlyOwner {
        require(!Moderator[_newModerator],"already added");
        Moderator[_newModerator] = true;
    
    }    
    function removeFromModerator(address _oldModerator) public onlyOwner {
        require(Moderator[_oldModerator],"already removed or never added");
        Moderator[_oldModerator] = false;
    
    }
    
    function updateListScore(uint256 _index,  uint256 _updateScore) public onlyOwner {
        top10[_index] = _updateScore;
    
    }
    function updateListTokenAddress(uint256 _index,  address _updateAddress) public onlyOwner {
        top10TokAddr[_index] = _updateAddress;
    
    }
    function updateListPresaleAddress(address _indexTokenAddress,  address _updatePresaleAddress) public onlyOwner {
        tokenToPresaleAddr[_indexTokenAddress] = _updatePresaleAddress;
    
    }
    
    function getTimeStamp() public view returns(uint256) {
        return block.timestamp;
    
    }
    function withdrawToken(address _token) public onlyOwner {
        IERC20(_token).transfer(team_acc, IERC20(_token).balanceOf(address(this)));
    
    }
    function withdrawNative(uint256 _amount) public payable onlyOwner {
        payable(team_acc).transfer(_amount);
    
    }  
}