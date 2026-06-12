// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";


contract EsLYVE is ReentrancyGuard{
    using SafeMath for uint256;

    IERC20 public lyveToken;
    uint256 public totalEsLYVE;
    uint256 public nextVestingId = 1;
    mapping(address => uint256) public esLyveBalance;

    address public owner;
    bool public stoped;

    event Deposited(address indexed beneficiary, uint256 amount);
    event StartedVesting(address indexed account, uint256 amount, uint256 vestingId);
    event ClaimedVested(address indexed account, uint256 amount, uint256 vestingId);
    event DeleteVested(address indexed account, uint256 amount, uint256 id);

    struct Vesting {
        uint256 id;
        uint256 totalAmount;
        uint256 claimedAmount;
        uint256 lockedLYVE;
        uint256 startTime;
    }

   // mapping(address => Vesting[]) public vestings;
    mapping(address => mapping(uint256 => Vesting)) public vestings;

    mapping(address => uint256[]) public userVestingIds;

    constructor(address _lyveToken) {
        lyveToken = IERC20(_lyveToken);
        owner = msg.sender;
        stoped = false;
    }
    modifier onlyOwner() {
        require(msg.sender == owner ,"onlyFactory");
        _;
    }
   modifier notStoped() {
        require(!stoped ,"onlyFactory");
        _;
    }
    function setOwner(address _owner) external onlyOwner{        
        owner = _owner;
    }

    function stop(bool _stop) external onlyOwner{        
        stoped = _stop;
    }
    
    function depositEsLYVE(uint256 amount, address beneficiary)  external  nonReentrant{
        require(lyveToken.transferFrom(msg.sender, address(this), amount), "Transfer failed");
        esLyveBalance[beneficiary] = esLyveBalance[beneficiary].add(amount);
        totalEsLYVE = totalEsLYVE.add(amount);

        emit Deposited(beneficiary, amount);
    }

    function startVesting(uint256 amount) external notStoped nonReentrant {
        require(amount > 0,"error amount");
        require(esLyveBalance[msg.sender] >= amount, "Insufficient esLYVE balance");
        require(lyveToken.transferFrom(msg.sender, address(this), amount), "LYVE transfer failed");

        esLyveBalance[msg.sender] = esLyveBalance[msg.sender].sub(amount);
        totalEsLYVE = totalEsLYVE.sub(amount);

        Vesting memory newVesting = Vesting({
            id: nextVestingId,   //  nextVestingId not vestings[msg.sender].length
            totalAmount: amount,
            claimedAmount: 0,
            lockedLYVE : amount,
            startTime: block.timestamp
        });
        vestings[msg.sender][nextVestingId] = newVesting;
        userVestingIds[msg.sender].push(nextVestingId);
        nextVestingId = nextVestingId.add(1);  //  nextVestingId 
        emit StartedVesting(msg.sender, amount, newVesting.id);
    }
    
    function claimAll( ) external notStoped  {        
        uint256[] memory vestingIds = userVestingIds[msg.sender];
        require(vestingIds.length > 0);
        for(uint256 i=0;i<vestingIds.length;i++){
            _claimVestedById(vestingIds[i]);
        }
    }
    function claimVestedById(uint256 id) external notStoped {        
        _claimVestedById(id);
    }
     function _claimVestedById(uint256 id) internal nonReentrant {        
        require(vestings[msg.sender][id].startTime != 0, "Invalid ID");  
        Vesting storage v = vestings[msg.sender][id];
        (uint256 claimable ,uint256 claimLockedLYVE)= _calculateClaimable(v);
        uint256 totalCalimable = claimable + claimLockedLYVE;
        require(totalCalimable > 0, "Nothing to claim");

        v.claimedAmount = v.claimedAmount.add(claimable);
        v.lockedLYVE = v.lockedLYVE.sub(claimLockedLYVE) ;
        require(v.lockedLYVE >= 0,"error lockedLYVE");
        require(lyveToken.transfer(msg.sender, totalCalimable), "Transfer failed");

        if (v.claimedAmount == v.totalAmount && block.timestamp.sub(v.startTime) >= 7 days
            && v.lockedLYVE == 0
         ) {
            delete vestings[msg.sender][id];  // delete vesting
            _removeUserVesting(msg.sender,id);
            emit DeleteVested(msg.sender, claimable, id);
        }
        emit ClaimedVested(msg.sender, claimable, id);
    }
    function _removeUserVesting(address _user, uint256 _vestingId) internal {
        uint256[] storage vestingIds = userVestingIds[_user];
        uint256 index;
        bool found = false;

        for (uint256 i = 0; i < vestingIds.length; i++) {
            if (vestingIds[i] == _vestingId) {
                index = i;
                found = true;
                break;
            }
        }
        require(found, "Vesting ID not found");
        // Swap the found vesting ID with the last element
        vestingIds[index] = vestingIds[vestingIds.length - 1];
        // Remove the last element
        vestingIds.pop();
    }

    function calculateClaimable(address account,uint256 id) external view returns (uint256,uint256) {
        Vesting memory v = vestings[account][id];
        if(v.startTime == 0){
            return (0,0);
        }
        return _calculateClaimable(v);
    }
    function _calculateClaimable(Vesting memory v) internal view returns (uint256,uint256) {
        uint256 timeElapsed = block.timestamp.sub(v.startTime);
        uint256 claimable;
        uint256 claimLockedLYVE ;

        if (timeElapsed >= 7 days) {
            claimable = v.totalAmount.sub(v.claimedAmount);
            claimLockedLYVE = v.lockedLYVE;
        } else {
            claimable = v.totalAmount.mul(timeElapsed).div(7 days).sub(v.claimedAmount);
        }
    
        return (claimable, claimLockedLYVE); 
    }

    function getBalanceRatio(address account) external view returns (uint256) {
        if (totalEsLYVE == 0) return 0;
        return esLyveBalance[account].mul(1e18).div(totalEsLYVE);
    }
    function getAllVesting(address account) public view returns ( Vesting[] memory ) {
        uint256[] memory vestingIds = userVestingIds[account];
        uint256 count = 0;
       for(uint256 i = 0;i < vestingIds.length ;i++){
            uint256 id = vestingIds[i];
            Vesting memory vesting = vestings[account][id];
            if(!_isNull(vesting)) count ++;
                
       }
       Vesting[] memory userVesting = new Vesting[](count);
        uint256 index = 0;
       for(uint256 i = 0;i < vestingIds.length ;i++){
            uint256 id = vestingIds[i];
            Vesting memory vesting = vestings[account][id];
            if( !_isNull(vesting)){
                userVesting[index] = vesting;
                index++;
            }
       }
      return userVesting;
    }
    function _isNull(Vesting memory vesting) internal pure returns(bool){
      return vesting.startTime == 0 && vesting.id == 0;
    }
    
}