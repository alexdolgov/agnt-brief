// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;


import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "./zap.sol";

interface NFTInterface{
    function getRarityOfTokenId(uint256 tokenId) external view returns (uint256);
    function getUserNftTokens(address user) external returns (uint256[] memory);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function getUserNftTokensForRarity( uint256 rarity, address tokenOwner) external view returns(uint256[] memory);
}

contract NFTCavePool is Ownable,ReentrancyGuard, IERC721Receiver {
    using SafeMath for uint256;
    

    // Info of each user.
     struct NftUserInfo{
        uint256[] pmotUltraRaretokenIds;
        uint256[] mythicUltraRaretokenIds;
        uint256[] platinumTokenIds;
        uint256 amountStaked;        
        uint256 rewardDebt;
        uint256 lastHarvestBlock;
    }

    // Info of each pool.
   struct NftPoolInfo{
        uint256 lastRewardBlock;        
        uint256 amountStaked;
        uint256 poolRatio;   
        uint256 accPerShare;     
        address targetLP;          
        address pmotUltraRareNft;  
        address mythicUltraRareNft;
    }

    // The  TOKEN!    
    IERC20 public rewardToken;
    Zap public zapper;
    address public pmotNFTaddress;
    //  tokens created per block.
    uint256 public rewardPerBlock;
    
    // V1
    // Deposit burn address
    address public burnAddress;
    // V1
    // Deposit fee to burn
    uint16 public depositFeeToBurn;

    // Info of each pool.
    NftPoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping (address => NftUserInfo) public userInfo;
    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 private totalAllocPoint = 0;
    // The block number when  mining starts.
    uint256 public startBlock;
    // The block number when  mining ends.
    uint256 public bonusEndBlock;

    event Compound(address indexed user, uint256 amount);
    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 amount);

    constructor(        
        IERC20 _rewardToken,
        uint256 _rewardPerBlock,
        address _burnAddress, 
        uint16 _depositFeeBP, 
        uint256 _startBlock,
        uint256 _bonusEndBlock,
        address payable _zapper, 
        address _targetLPContract,       
        address pmotNft,
        address mythicNft,
        address pmotNFTAddressforIssue
    )  {        
        pmotNFTaddress = pmotNFTAddressforIssue;
        rewardToken = _rewardToken;
        rewardPerBlock = _rewardPerBlock;
        burnAddress = _burnAddress;
        depositFeeToBurn = _depositFeeBP;
        zapper = Zap(_zapper);
        rewardToken.approve(_zapper,type(uint256).max);
        if(_startBlock <= block.number)
            startBlock = block.number;
        else
            startBlock = _startBlock;

        bonusEndBlock = _bonusEndBlock;

        // V1 / Deposit fee limited to 10% No way for contract owner to set higher deposit fee
        require(depositFeeToBurn <= 1000, "contract: invalid deposit fee basis points");

            // staking pool
        poolInfo.push(NftPoolInfo({            
            poolRatio: 1000,
            lastRewardBlock: startBlock,                        
            targetLP: _targetLPContract,
            accPerShare: 0,            
            amountStaked: 0,
            pmotUltraRareNft: pmotNft,
            mythicUltraRareNft: mythicNft
        }));

        totalAllocPoint = 1000;

    }

    function stopReward() public onlyOwner {
        bonusEndBlock = block.number;
    }


    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to) public view returns (uint256) {
        if (_to <= bonusEndBlock) {
            return _to.sub(_from);
        } else if (_from >= bonusEndBlock) {
            return 0;
        } else {
            return bonusEndBlock.sub(_from);
        }
    }

    // View function to see pending Reward on frontend.
    function pendingReward(address _user) external view returns (uint256) {
        NftPoolInfo storage pool = poolInfo[0];
        NftUserInfo storage user = userInfo[_user];
        uint256 accPerShare = pool.accPerShare;
        uint256 lpSupply = pool.amountStaked;
        if (block.number > pool.lastRewardBlock && lpSupply != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
            uint256 Reward = multiplier.mul(rewardPerBlock);
            accPerShare = accPerShare.add(Reward.mul(1e12).div(lpSupply));
        }
        return user.amountStaked.mul(accPerShare).div(1e12).sub(user.rewardDebt);
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) public {
        NftPoolInfo storage pool = poolInfo[_pid];
        if (block.number <= pool.lastRewardBlock) {
            return;
        }
        uint256 lpSupply = pool.amountStaked;
        if (lpSupply == 0) {
            pool.lastRewardBlock = block.number;
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
        uint256 Reward = multiplier.mul(rewardPerBlock);
        pool.accPerShare = pool.accPerShare.add(Reward.mul(1e12).div(lpSupply));
        pool.lastRewardBlock = block.number;
    }

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }


    // TODO: Change to staking NFTs
    function deposit(uint256 _amount) public {
        NftPoolInfo storage pool = poolInfo[0];
        NftUserInfo storage user = userInfo[msg.sender];

        updatePool(0);
        if (user.amountStaked > 0) {
            uint256 pending = user.amountStaked.mul(pool.accPerShare).div(1e12).sub(user.rewardDebt);
            if(pending > 0) {
                rewardToken.transfer(address(msg.sender), pending);
            }
        }
              
        //loop over amount and transfer in for deposit one of each NFT required
        //then add one to the amount user staked.          
        if(_amount > 0) {
            NFTInterface pmotNFT = NFTInterface(pool.pmotUltraRareNft);
            NFTInterface mythicNFT = NFTInterface(pool.mythicUltraRareNft);

            uint256[] memory mythicsTokens = mythicNFT.getUserNftTokens(msg.sender);
            uint256[] memory usersURTokens = new uint256[](mythicsTokens.length);
            uint256 urCounter = 0;
            for(uint256 i = 0; i < mythicsTokens.length; i++){
                if(mythicsTokens[i] > 1500 ){
                    usersURTokens[urCounter] = mythicsTokens[i];
                    urCounter = urCounter + 1;
                }
            }
            
            require(urCounter >= _amount, "deposit: Not enough NFTs");

             uint256[] memory pmotTokens;
             uint256[] memory usersURTokens2;
            if(pool.pmotUltraRareNft == pmotNFTaddress ){
               pmotTokens = pmotNFT.getUserNftTokensForRarity(2,msg.sender);
               require(pmotTokens.length >= _amount, "deposit: Not enough NFTs");
            }else {
                pmotTokens = pmotNFT.getUserNftTokens(msg.sender);
                usersURTokens2 = new uint256[](pmotTokens.length);
                uint256 urCounter2 = 0;
                for(uint256 i = 0; i < pmotTokens.length; i++){
                    if(pmotTokens[i] > 1500 ){
                        usersURTokens2[urCounter2] = pmotTokens[i];
                        urCounter2 = urCounter2 + 1;
                    }
                }            
                require(urCounter >= _amount, "deposit: Not enough NFTs");
            }           
            

            for(uint256 t = 0; t < _amount; t++){                                
                mythicNFT.safeTransferFrom(address(msg.sender), address(this), usersURTokens[t]); 
                user.mythicUltraRaretokenIds.push(usersURTokens[t]);                
                if(pool.pmotUltraRareNft == pmotNFTaddress ){
                        pmotNFT.safeTransferFrom(address(msg.sender), address(this), pmotTokens[t]);                             
                        user.pmotUltraRaretokenIds.push(pmotTokens[t]);
                }else{
                        pmotNFT.safeTransferFrom(address(msg.sender), address(this), usersURTokens2[t]);                             
                        user.pmotUltraRaretokenIds.push(usersURTokens2[t]);
                }
            }   
            user.amountStaked = user.amountStaked + _amount;           
            pool.amountStaked = pool.amountStaked + _amount;         
        } 
        
        user.rewardDebt = user.amountStaked.mul(pool.accPerShare).div(1e12);

        emit Deposit(msg.sender, _amount);
    }

    //TO ZAP into rewards Token LP, goes to users wallets. User has deposit it in another transaction 
    //due to msg.sender on deposit.
    function compound() public nonReentrant {
        NftPoolInfo storage pool = poolInfo[0];
        NftUserInfo storage user = userInfo[msg.sender];

        updatePool(0);

        uint256 _amount = 0;
        if (user.amountStaked > 0) {
            uint256 pending = user.amountStaked.mul(pool.accPerShare).div(1e12).sub(user.rewardDebt);
            if(pending > 0) {                
                zapper.zapInToken(address(rewardToken), pending, address(pool.targetLP), msg.sender);               
                user.rewardDebt = user.amountStaked.mul(pool.accPerShare).div(1e12);
            }
        }
        emit Compound(msg.sender, _amount);        
    }

    function getUserStakedTokens1(address user ) external view returns (uint256[] memory){
        return userInfo[user].pmotUltraRaretokenIds;
    }
    function getUserStakedTokens2(address user ) external view returns (uint256[] memory){
        return userInfo[user].mythicUltraRaretokenIds;
    }
    function getUserStakedTokensPlat(address user ) external view returns (uint256[] memory){
        return userInfo[user].platinumTokenIds;
    }

    // Withdraw tokens from STAKING.
    function withdraw(uint256 _amount) public {
        NftPoolInfo storage pool = poolInfo[0];
        NftUserInfo storage user = userInfo[msg.sender];
        require(user.amountStaked >= _amount, "withdraw: not good");        
        updatePool(0);
        uint256 pending = user.amountStaked.mul(pool.accPerShare).div(1e12).sub(user.rewardDebt);
        if(pending > 0) {
            rewardToken.transfer(address(msg.sender), pending);
        }

        //Loop over amount to withdraw the number of NFT pairings.
        //reduce user amount by 1 for each pairing.
        if(_amount > 0) {
            NFTInterface pmotNFT = NFTInterface(pool.pmotUltraRareNft);
            NFTInterface mythicNFT = NFTInterface(pool.mythicUltraRareNft);
            uint256 toPopCounter = user.amountStaked.sub(_amount);
            for(uint256 ti = user.amountStaked; ti > toPopCounter; ti--){
                pmotNFT.safeTransferFrom(address(this), address(msg.sender), user.pmotUltraRaretokenIds[ti-1]);                       
                mythicNFT.safeTransferFrom(address(this), address(msg.sender), user.mythicUltraRaretokenIds[ti-1]);                       
                user.pmotUltraRaretokenIds.pop();
                user.mythicUltraRaretokenIds.pop();
            }
            user.amountStaked = user.amountStaked.sub(_amount);
            pool.amountStaked = pool.amountStaked.sub(_amount);
        }        
        
        user.rewardDebt = user.amountStaked.mul(pool.accPerShare).div(1e12);

        emit Withdraw(msg.sender, _amount);
    }

    
    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw() public {
        NftPoolInfo storage pool = poolInfo[0];
        NftUserInfo storage user = userInfo[msg.sender];
        NFTInterface pmotNFT = NFTInterface(pool.pmotUltraRareNft);
        NFTInterface mythicNFT = NFTInterface(pool.mythicUltraRareNft);
        uint256 amount = user.amountStaked;
        pool.amountStaked = pool.amountStaked.sub(amount);

        //withdraw all user pairings
        for(uint256 ti = amount; ti > 0 ; ti--){
            pmotNFT.safeTransferFrom(address(this), address(msg.sender), user.pmotUltraRaretokenIds[ti-1]);                       
            mythicNFT.safeTransferFrom(address(this), address(msg.sender), user.mythicUltraRaretokenIds[ti-1]);                       
            user.pmotUltraRaretokenIds.pop();
            user.mythicUltraRaretokenIds.pop();
        }
        user.amountStaked = 0;
        user.rewardDebt = 0;
        emit EmergencyWithdraw(msg.sender, user.amountStaked);
    }
   
    
    // V1 Add a function to update rewardPerBlock. Can only be called by the owner.
    function updateRewardPerBlock(uint256 _rewardPerBlock) public onlyOwner {
        rewardPerBlock = _rewardPerBlock;
        //Automatically updatePool 0
        updatePool(0);        
    } 
    
    // V1 Add a function to update bonusEndBlock. Can only be called by the owner.
    function updateBonusEndBlock(uint256 _bonusEndBlock) public onlyOwner {
        bonusEndBlock = _bonusEndBlock;
    }       
    

    function setZapper(address payable _zapper) external onlyOwner {
        require(_zapper != address(0), "setZapTimeLock: not address 0");
        zapper = Zap(_zapper);
        rewardToken.approve(_zapper,type(uint256).max);
    }

    function sweep(address tokenToSweep) public onlyOwner{
        //no validation required, users stake ERC721 they will be safe, can only sweep ERC20
        //to clear residual rewards token and ZAP reminants
        IERC20 sweeper = IERC20(tokenToSweep);        
        sweeper.transfer(msg.sender, sweeper.balanceOf(address(this)));
    }

    /*****IERC721Receiver */
     /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
     *
     * The selector can be obtained in Solidity with `IERC721.onERC721Received.selector`.
     *
     *  Note: Parameters are required by the override, but optional for usage, hence compiler warning as they are not needed in this case.
     */
    function onERC721Received(address /* operator */, address /* from */, uint256 /* tokenId */, bytes calldata /* data */) external pure override returns (bytes4){
        return this.onERC721Received.selector;
    }
}