// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/erc20/IERC20.sol";
import "@openzeppelin/contracts/token/erc20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/erc721/IERC721.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

interface IPurpleMonNFT is IERC721 {
  function getUserNftTokensForRarity( uint256 , address ) external view returns(uint256[] memory);
  function getUserNftTokens(address tokenOwner) external view returns(uint256[] memory);            
}

interface ISafeRandomNess {
    function randomNumberGenerator(uint256 seed) external view  returns (uint256);
}

contract PMOTTreasureChestGameV4 is Ownable, ReentrancyGuard, IERC721Receiver  {
    using SafeMath for uint256;    
    using Address for address;

    IERC20 public _purpleMonsterToken;
    IPurpleMonNFT public _purpleMonsterNFT;

    
    uint256 public pricePerPlayCommon;
    uint256 public pricePerPlayRare;
    uint256 public pricePerPlayUltraRare;    
    uint256 public totalBurnedStat;
    uint256 public gameNumber;    
    uint256 public burnPercentage;
    uint256 public ultraJackPotRatio = 480;
    uint256 public rareJackPotRatio = 300;
    uint256 public commonJackPotRatio = 140;
    uint256 private percentageBase = 1000;

    ISafeRandomNess _randomNess;
    
    

    address public burnAddress = 0x000000000000000000000000000000000000dEaD;
    
    mapping(uint256 => uint256[]) _priceLists;

    mapping(address => uint256[]) public playersGameNumberList;
    //mapping(uint256 => uint256) private _distribution;
    uint256[] private _distribution;

    struct GameResult
    {
        uint256 gameNumber;        
        uint256 result;
        uint256 prizeAmount;
        address player;
        bool prizeIsNft;        
    }

    struct PendingPrizes{
        uint256 tokenCount;
        uint64 commonNftCount;
        uint64 rareNftCount;
        uint64 ultraRareNftCount;
    }

    mapping(address => PendingPrizes) public playerPendingPrizes;

    event PriceChanged(uint256 rarity, uint256 newPrice);
    event GamePlayed(uint256 rarity, GameResult gameResult);
    event BurnRateChanged(uint256 newBurnRate);
    event ClaimReward(uint256 tokenPMOTCount, uint256[] tokenIds);
    event SetJackpotMulti(uint256 rarity, uint256 multiplier);

    modifier notContract() {
        require(!address(msg.sender).isContract(), "contract not allowed");
        require(msg.sender == tx.origin, "proxy contract not allowed");
        _;
    }  

   constructor(IERC20 _token, IPurpleMonNFT _nftToken ){
    

        _purpleMonsterToken = _token;
        _purpleMonsterNFT = _nftToken;

        burnPercentage = 250;
        uint256 burned =  108113;
        totalBurnedStat =  burned.mul(10**18); //carried over from V3 balance.
        gameNumber = 1;
        pricePerPlayCommon = 50 * 10 ** 18;
        pricePerPlayRare = 90 * 10 ** 18;
        pricePerPlayUltraRare = 175 * 10 ** 18;    

        emit BurnRateChanged(burnPercentage);
        emit PriceChanged(0, pricePerPlayCommon);
        emit PriceChanged(1, pricePerPlayRare);
        emit PriceChanged(2, pricePerPlayUltraRare);

   }

   function playGame(uint256 _rarity, uint256 _numOfPlays) public notContract nonReentrant  {       
      require(_rarity >=0 && _rarity <= 2, "Invalid Rarity Provided");
      require(_numOfPlays <= 20 && _numOfPlays > 0, "More then 0, No more then 20 at a time");
       
      uint256 gamePlayCost;
      uint256 costPerPlay;
      (gamePlayCost, costPerPlay) = getTotalCost(_rarity, _numOfPlays);
       
      uint256 burnAmount = gamePlayCost.mul(burnPercentage).div(percentageBase);

      require(_purpleMonsterToken.balanceOf(msg.sender) >= gamePlayCost, "Insufficient Balance to play");
      require(_purpleMonsterToken.transferFrom(msg.sender, burnAddress, burnAmount), "BURN TOKENS FAILED");
      require(_purpleMonsterToken.transferFrom(msg.sender, address(this), gamePlayCost.sub(burnAmount)), "TRANSFER TOKENS FAILED");   
       
      totalBurnedStat = totalBurnedStat.add(burnAmount);
      uint256 playResult = 0;
      uint256 lastPlayResult = 0;
      PendingPrizes storage pendingPrizes = playerPendingPrizes[msg.sender];

         for(uint i = 0; i< _numOfPlays; i++){
           
           uint256 seed  = playResult + lastPlayResult + _numOfPlays * gamePlayCost * costPerPlay;
           playResult  = _generateRandomNumber(msg.sender, seed);    
           lastPlayResult = playResult;
          
           playersGameNumberList[msg.sender].push(gameNumber);

           GameResult memory gameResult;
           gameResult.gameNumber = gameNumber;
           gameResult.player = msg.sender;
           gameResult.result = playResult;
        
            
           if(playResult == 0){
               //win NFT
               gameResult.prizeAmount = _rarity;
               gameResult.prizeIsNft = true;
               if(_rarity == 0){
                    pendingPrizes.commonNftCount = pendingPrizes.commonNftCount + 1;
               }
               else if(_rarity == 1){
                    pendingPrizes.rareNftCount = pendingPrizes.rareNftCount + 1;
               }else if (_rarity == 2){
                    pendingPrizes.ultraRareNftCount = pendingPrizes.ultraRareNftCount + 1;
               }
            } else if (playResult >= 1 && playResult < 447){
               //win 25%
               gameResult.prizeAmount = costPerPlay.mul(250).div(percentageBase);
            } else if (playResult >= 447 && playResult < 466) {
                //win 2x
                gameResult.prizeAmount = costPerPlay.mul(2);                                       
            } else if (playResult >= 466  && playResult < 678) {
               //win 50%
               gameResult.prizeAmount = costPerPlay.mul(500).div(percentageBase);           
            } else if(playResult >=678 && playResult < 906) {
               //win 75%
               gameResult.prizeAmount = costPerPlay.mul(750).div(percentageBase);               
            } else if(playResult >=906 && playResult < 966) {
               //win 100%
               gameResult.prizeAmount = costPerPlay;            
            } else if(playResult >= 966 && playResult < 998) {
               //win 150%
               gameResult.prizeAmount = costPerPlay.mul(1500).div(percentageBase);
            } else if(playResult >= 998 && playResult < 1000){                   
               gameResult.prizeAmount = jackpot(_rarity);                     
            }
            
            if(!gameResult.prizeIsNft){                
                //increment player pending prize amount
                pendingPrizes.tokenCount = pendingPrizes.tokenCount.add(gameResult.prizeAmount);                
            }
            
            gameNumber = gameNumber + 1;  
            emit GamePlayed( _rarity, gameResult); 
        } 
        claim(msg.sender);    
   }
   

    function claim(address sender) private   {
        //implement claim prize logic. Transfer any accumulated rewards from this contracts PMOT / NFT Balance.
        PendingPrizes storage pendingPrizesForPlayer =  playerPendingPrizes[sender];
        uint256 claimedPMOTCount = 0;
        if(pendingPrizesForPlayer.tokenCount > 0){
            require(_purpleMonsterToken.transfer(sender, pendingPrizesForPlayer.tokenCount), "TRANSFER TO USER: Revert");                 
                claimedPMOTCount = pendingPrizesForPlayer.tokenCount;
                pendingPrizesForPlayer.tokenCount = 0;
            }

            uint256 wonTokenCount = pendingPrizesForPlayer.commonNftCount + pendingPrizesForPlayer.rareNftCount + pendingPrizesForPlayer.ultraRareNftCount;
            
            uint256[] memory wonTokenIds =  new uint256[](wonTokenCount);
            
            if(pendingPrizesForPlayer.commonNftCount > 0){
                uint256[] memory commons = _purpleMonsterNFT.getUserNftTokensForRarity(0, address(this));
                for(uint256 i = 0; i < pendingPrizesForPlayer.commonNftCount; i++){                        
                    wonTokenIds[i] = commons[i];
                    _purpleMonsterNFT.safeTransferFrom(address(this), sender,commons[i]);
                }
            }

            if(pendingPrizesForPlayer.rareNftCount > 0){
                uint256[] memory rares = _purpleMonsterNFT.getUserNftTokensForRarity(1, address(this));
                for(uint256 i = 0; i < pendingPrizesForPlayer.rareNftCount; i++){                        
                    wonTokenIds[i + pendingPrizesForPlayer.commonNftCount] = rares[i];
                    _purpleMonsterNFT.safeTransferFrom(address(this), sender,rares[i]);
                }
                
            }

            if(pendingPrizesForPlayer.ultraRareNftCount > 0){
                uint256[] memory ultraRares = _purpleMonsterNFT.getUserNftTokensForRarity(2, address(this));
                for(uint256 i = 0; i < pendingPrizesForPlayer.ultraRareNftCount; i++){                        
                    wonTokenIds[i + pendingPrizesForPlayer.commonNftCount + pendingPrizesForPlayer.rareNftCount] = ultraRares[i];
                    _purpleMonsterNFT.safeTransferFrom(address(this), sender,ultraRares[i]);
                }
            }
        emit ClaimReward(claimedPMOTCount, wonTokenIds);
    }

    function jackpot(uint256 rarity) public view returns (uint256) {
        uint256 result = _purpleMonsterToken.balanceOf(address(this));        
        if(result > 0){
            if(rarity == 0){
                result =  result.mul(commonJackPotRatio).div(percentageBase);            
            } else if(rarity == 1) {
                result =  result.mul(rareJackPotRatio).div(percentageBase);            
            } else if (rarity == 2){
                result =  result.mul(ultraJackPotRatio).div(percentageBase);            
            }
        }
        else{
            result = 0;
        }
        return result;
    }

    function setJackpotMultiplier(uint256 rarity, uint256 jack) public onlyOwner {
        if(rarity == 0){
            commonJackPotRatio = jack;
        }else if (rarity == 1){
            rareJackPotRatio = jack;
        }else if (rarity == 2){
            ultraJackPotRatio = jack;
        }        
        emit SetJackpotMulti(rarity, jack);
    }

    function getTotalCost(uint256 rarity, uint256 numOfPlays) private view returns  (uint256, uint256){  
       uint256 cost = 0;
        uint256 price;
        if(rarity == 0){
            price = pricePerPlayCommon;
            cost = numOfPlays.mul(pricePerPlayCommon);
        } else if( rarity == 1){
            price = pricePerPlayRare;
            cost = numOfPlays.mul(pricePerPlayRare);
        }
        else if( rarity == 2){
            price = pricePerPlayUltraRare;
            cost = numOfPlays.mul(pricePerPlayUltraRare);
        }
        return (cost, price);
    }

    function setBurnRate(uint16 _newBurnRate) public onlyOwner {
        burnPercentage = _newBurnRate;
        emit BurnRateChanged(_newBurnRate);
    }

    function playerGameNumbers(address player) public view returns (uint256[] memory){
        return playersGameNumberList[player];
    }
    
    function setPrice(uint256 rarity, uint256 price) public onlyOwner {
            if(rarity == 0){
                pricePerPlayCommon = price.mul(10 ** 18);
            } else if( rarity == 1){
                pricePerPlayRare = price.mul(10 ** 18);
            }
            else if( rarity == 2){
                pricePerPlayUltraRare = price.mul(10 ** 18);
            }            
            emit PriceChanged(rarity, price);
    }
       
   function _generateRandomNumber(address sender, uint256 seed) private view returns (uint256) {        
        uint256 convertedAddress = uint256(uint160(address(sender)));
        uint256 randomHash = uint256(keccak256(abi.encodePacked(blockhash(block.number - 1), block.timestamp + convertedAddress,seed,  _randomNess.randomNumberGenerator(seed)))).mod(
                            1000
                        );                    
        return randomHash;
    }

    function setRandomness(address _addr) public onlyOwner {
        _randomNess = ISafeRandomNess(_addr);
    }

    function ShutDownGame(address rescueAddress) public  nonReentrant onlyOwner {
        uint256 balance = _purpleMonsterToken.balanceOf(address(this));
        _purpleMonsterToken.transfer(rescueAddress,balance);

        uint256[] memory tokenIds = _purpleMonsterNFT.getUserNftTokens(address(this));
        for(uint256 i = 0; i < tokenIds.length; i++){
            _purpleMonsterNFT.safeTransferFrom(address(this),rescueAddress, tokenIds[i]);
        }
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
    function onERC721Received(address /* operator */, address /* from */, uint256 /*  tokenId */ , bytes calldata /* data */) external pure  override returns (bytes4){        
        return this.onERC721Received.selector;
    }
}