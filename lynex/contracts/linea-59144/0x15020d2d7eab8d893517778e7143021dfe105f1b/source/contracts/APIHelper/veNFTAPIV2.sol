
// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


import '../Constants.sol';
import '../libraries/Math.sol';
import '../interfaces/IBribeAPI.sol';
import '../interfaces/IERC20.sol';
import '../interfaces/IPair.sol';
import '../interfaces/IPairFactory.sol';
import '../VoterV5/IVoterV5.sol';
import {IVotingEscrowV2} from '../VoterV5/VotingEscrow/IVotingEscrowV2.sol';
import '../interfaces/IRewardsDistributor.sol';

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

interface IPairAPI {
    struct pairInfo {
        // pair info
        address pair_address; 			// pair contract address
        string symbol; 				    // pair symbol
        string name;                    // pair name
        uint decimals; 			        // pair decimals
        bool stable; 				    // pair pool type (stable = false, means it's a variable type of pool)
        uint total_supply; 			    // pair tokens supply
    
        // token pair info
        address token0; 				// pair 1st token address
        string token0_symbol; 			// pair 1st token symbol
        uint token0_decimals; 		    // pair 1st token decimals
        uint reserve0; 			        // pair 1st token reserves (nr. of tokens in the contract)
        uint claimable0;                // claimable 1st token from fees (for unstaked positions)

        address token1; 				// pair 2nd token address
        string token1_symbol;           // pair 2nd token symbol
        uint token1_decimals;    		// pair 2nd token decimals
        uint reserve1; 			        // pair 2nd token reserves (nr. of tokens in the contract)
        uint claimable1; 			    // claimable 2nd token from fees (for unstaked positions)

        // pairs gauge
        address gauge; 				    // pair gauge address
        uint gauge_total_supply; 		// pair staked tokens (less/eq than/to pair total supply)
        address fee; 				    // pair fees contract address
        address bribe; 				    // pair bribes contract address
        uint emissions; 			    // pair emissions (per second)
        address emissions_token; 		// pair emissions token address
        uint emissions_token_decimals; 	// pair emissions token decimals

        // User deposit
        uint account_lp_balance; 		// account LP tokens balance
        uint account_token0_balance; 	// account 1st token balance
        uint account_token1_balance; 	// account 2nd token balance
        uint account_gauge_balance;     // account pair staked in gauge balance
        uint account_gauge_earned; 		// account earned emissions for this pair
    }

    function getPair(address _pair, address _account) external view returns(pairInfo memory _pairInfo);

    function pair_factory() external view returns(address);
}

contract veNFTAPIV2 is Initializable {

    struct pairVotes {
        address pair;
        uint256 weight;
    }

    struct veNFT {
        uint8 decimals;
        
        bool voted;
        uint256 attachments;

        uint256 id;
        uint128 amount;
        uint256 voting_amount;
        uint256 rebase_amount;
        uint256 lockEnd;
        uint256 vote_ts;
        pairVotes[] votes;        
        
        address account;
        address delegatee;

        address token;
        string tokenSymbol;
        uint256 tokenDecimals;
    }

    struct Votes {
        bool voted;
        uint256 votingPower;
        uint256 epochVotes;
        uint256 nextEpochVotes;
        uint256 voteTs;
        pairVotes[] votes;
    }

    struct Reward {
        
        uint256 id;
        uint256 amount;  
        uint8 decimals;
        
        address pair;
        address token;
        address fee;
        address bribe;

        string symbol;
    }

    struct RewardsParams {
        uint256 id;
        address pair;
        uint48 ts;
    }
   
    uint256 constant public MAX_RESULTS = 1000;
    uint256 constant public MAX_PAIRS = 30;

    IVoterV5 public voter;
    address public underlyingToken;
    

    IVotingEscrowV2 public ve;
    IRewardsDistributor public rewardDisitributor;

    address public pairAPI;
    IPairFactory public pairFactory;
    

    address public owner;
    event Owner(address oldOwner, address newOwner);

    struct AllPairRewards {
        Reward[] rewards;
    }
    constructor() {}

    function initialize(address _voter, address _rewarddistro, address _pairApi, IPairFactory _factory) initializer public {

        owner = msg.sender;

        pairAPI = _pairApi;
        voter = IVoterV5(_voter);
        rewardDisitributor = IRewardsDistributor(_rewarddistro);

        require(rewardDisitributor.voting_escrow() == voter.ve(), 've!=ve');
        
        ve = IVotingEscrowV2( rewardDisitributor.voting_escrow());
        underlyingToken = address(IVotingEscrowV2(ve).token());

        pairFactory = _factory;

    }



    function getAllNFT(uint256 _amounts, uint256 _offset) external view returns(veNFT[] memory _veNFT){

        require(_amounts <= MAX_RESULTS, 'too many nfts');
        _veNFT = new veNFT[](_amounts);

        uint i = _offset;
        address _owner;

        for(i; i < _offset + _amounts; i++){
            _owner = ve.ownerOf(i);
            // if id_i has owner read data
            if(_owner != address(0)){
                _veNFT[i-_offset] = _getNFTFromId(i, _owner);
            }
        }
    }

    function getNFTFromId(uint256 id) external view returns(veNFT memory){
        return _getNFTFromId(id,ve.ownerOf(id));
    }

    function getNFTFromAddress(address _user) external view returns(veNFT[] memory venft){

        uint256 i=0;
        uint256 _id;
        uint256 totNFTs = ve.balanceOf(_user);

        venft = new veNFT[](totNFTs);

        for(i; i < totNFTs; i++){
            _id = ve.tokenOfOwnerByIndex(_user, i);
            if(_id != 0){
                venft[i] = _getNFTFromId(_id, _user);
            }
        }
    }

    function getVotesFromAddress(address _user) external view returns(Votes memory votesResult){

        uint _totalPoolVotes = voter.poolVoteLength(_user);
        pairVotes[] memory votes = new pairVotes[](_totalPoolVotes);

        uint k;
        uint256 _poolWeight;
        address _votedPair;

        for(k = 0; k < _totalPoolVotes; k++) {

            _votedPair = voter.poolVote(_user, k);
            if(_votedPair == address(0)){
                break;
            }
            _poolWeight = voter.votes(_user, _votedPair);
            votes[k].pair = _votedPair;
            votes[k].weight = _poolWeight;
        }
        uint epoch = voter._epochTimestamp();
        votesResult.votingPower = ve.getVotes(_user);
        votesResult.epochVotes = ve.getPastVotes(_user, epoch);
        votesResult.nextEpochVotes = ve.getPastVotes(_user, epoch + Constants.EPOCH);
        votesResult.voteTs = voter.lastVoted(_user);
        votesResult.votes = votes;
        votesResult.voted = epoch < votesResult.voteTs;

    }

    function _getNFTFromId(uint256 id, address _owner) internal view returns(veNFT memory venft){

        if(_owner == address(0)){
            return venft;
        }

        uint _totalPoolVotes = voter.poolVoteLength(_owner);
        pairVotes[] memory votes = new pairVotes[](_totalPoolVotes);

        IVotingEscrowV2.LockDetails memory _lockedBalance;
        _lockedBalance = ve.lockDetails(id);

        uint k;
        uint256 _poolWeight;
        address _votedPair;

        for(k = 0; k < _totalPoolVotes; k++) {

            _votedPair = voter.poolVote(_owner, k);
            if(_votedPair == address(0)){
                break;
            }
            _poolWeight = voter.votes(_owner, _votedPair);
            votes[k].pair = _votedPair;
            votes[k].weight = _poolWeight;
        }

        venft.id = id;
        venft.account = _owner;
        venft.delegatee = ve.delegates(id, uint48(block.timestamp));
        venft.decimals = ve.decimals();
        venft.amount = uint128(_lockedBalance.amount);
        venft.voting_amount = ve.balanceOfNFT(id);
        venft.rebase_amount = rewardDisitributor.claimable(id);
        venft.lockEnd = _lockedBalance.endTime;
        venft.vote_ts = voter.lastVoted(_owner);
        venft.votes = votes;
        venft.token = address(ve.token());
        venft.tokenSymbol =  IERC20(venft.token).symbol();
        venft.tokenDecimals = IERC20(venft.token).decimals();
        venft.voted = false; // ve.voted(id);
        venft.attachments = 0; // ve.attachments(id);
      
    }

    // used only for sAMM and vAMM    
    function allPairRewards(uint256 _amount, uint256 _offset, uint256 id) external view returns(AllPairRewards[] memory rewards){
        
        rewards = new AllPairRewards[](MAX_PAIRS);

        uint256 totalPairs = pairFactory.allPairsLength();
        
        uint i = _offset;
        address _pair;
        for(i; i < _offset + _amount; i++){
            if(i >= totalPairs){
                break;
            }
            _pair = pairFactory.allPairs(i);
            rewards[i].rewards = _pairRewardAll(id, _pair);
        }
    }

    function singlePairReward(uint256 id, address _pair) external view returns(Reward[] memory _reward) {
        return _pairRewardAll(id, _pair);   
    }

    function multiPairReward(uint256 id, address[] memory _pairs) external view returns(AllPairRewards[] memory rewards){
        uint256 len = _pairs.length;
        rewards = new AllPairRewards[](len);
        for(uint256 i = 0; i < len; i++){
            rewards[i].rewards = _pairRewardAll(id, _pairs[i]);
        }
        return rewards;
    }

    function multiPairRewardTimestamp(uint256 id, address[] memory _pairs, uint48 ts) external view returns(AllPairRewards[] memory rewards){
        uint256 len = _pairs.length;
        rewards = new AllPairRewards[](len);
        for(uint256 i = 0; i < len; i++){
            RewardsParams memory params = RewardsParams({
                id: id,
                pair: _pairs[i],
                ts: ts
            });
            rewards[i].rewards = _pairReward(params);
        }
        return rewards;
    }

    function _pairRewardAll(uint256 id, address _pair) internal view returns(Reward[] memory _reward){

        if(_pair == address(0)){
            return _reward;
        }

        
        IPairAPI.pairInfo memory _pairApi = IPairAPI(pairAPI).getPair(_pair, address(0));
               
        address externalBribe = _pairApi.bribe;
        
        uint256 totBribeTokens = (externalBribe == address(0)) ? 0 : IBribeAPI(externalBribe).rewardsListLength();
        
        uint bribeAmount;

        _reward = new Reward[](2 + totBribeTokens);

        address _gauge = (voter.gauges(_pair));
        
        if(_gauge == address(0)){
            return _reward; 
        }
       

        uint256 _feeToken0 = IBribeAPI(_pairApi.fee).earned(id, _pairApi.token0);
        uint256 _feeToken1 = IBribeAPI(_pairApi.fee).earned(id, _pairApi.token1);


        if(_feeToken0 > 0){
            _reward[0] = Reward({
                id: id,
                pair: _pair,
                amount: _feeToken0,
                token: _pairApi.token0,
                symbol: IERC20(_pairApi.token0).symbol(),
                decimals: IERC20(_pairApi.token0).decimals(),
                fee: _pairApi.fee,
                bribe: address(0)
            });
        }

        
        if(_feeToken1 > 0){
            _reward[1] = Reward({
                id: id,
                pair: _pair,
                amount: _feeToken1,
                token: _pairApi.token1,
                symbol: IERC20(_pairApi.token1).symbol(),
                decimals: IERC20(_pairApi.token1).decimals(),
                fee: _pairApi.fee,
                bribe: address(0)
            });
        }
        

        //externalBribe point to Bribes.sol
        if(externalBribe == address(0)){
            return _reward;
        }

        uint k = 0;
        address _token;      

        for(k; k < totBribeTokens; k++){
            _token = IBribeAPI(externalBribe).rewardTokens(k);
            bribeAmount = IBribeAPI(externalBribe).earned(id, _token);

            _reward[2 + k] = Reward({
                id: id,
                pair: _pair,
                amount: bribeAmount,
                token: _token,
                symbol: IERC20(_token).symbol(),
                decimals: IERC20(_token).decimals(),
                fee: address(0),
                bribe: externalBribe
            });
            
        }

        return _reward;
    }

    function _pairReward(RewardsParams memory params) internal view returns(Reward[] memory _reward){

        if(params.pair == address(0)){
            return _reward;
        }

        
        IPairAPI.pairInfo memory _pairApi = IPairAPI(pairAPI).getPair(params.pair, address(0));
               
        address externalBribe = _pairApi.bribe;
        
        uint256 totBribeTokens = (externalBribe == address(0)) ? 0 : IBribeAPI(externalBribe).rewardsListLength();
        
        uint bribeAmount;

        _reward = new Reward[](2 + totBribeTokens);

        address _gauge = (voter.gauges(params.pair));
        
        if(_gauge == address(0)){
            return _reward; 
        }
       

        uint256 _feeToken0 = IBribeAPI(_pairApi.fee).earnedTokenId(params.id, _pairApi.token0, params.ts);
        uint256 _feeToken1 = IBribeAPI(_pairApi.fee).earnedTokenId(params.id, _pairApi.token1, params.ts);


        if(_feeToken0 > 0){
            _reward[0] = Reward({
                id: params.id,
                pair: params.pair,
                amount: _feeToken0,
                token: _pairApi.token0,
                symbol: IERC20(_pairApi.token0).symbol(),
                decimals: IERC20(_pairApi.token0).decimals(),
                fee: _pairApi.fee,
                bribe: address(0)
            });
        }

        
        if(_feeToken1 > 0){
            _reward[1] = Reward({
                id: params.id,
                pair: params.pair,
                amount: _feeToken1,
                token: _pairApi.token1,
                symbol: IERC20(_pairApi.token1).symbol(),
                decimals: IERC20(_pairApi.token1).decimals(),
                fee: _pairApi.fee,
                bribe: address(0)
            });
        }
        

        //externalBribe point to Bribes.sol
        if(externalBribe == address(0)){
            return _reward;
        }

        uint k = 0;
        address _token;      

        for(k; k < totBribeTokens; k++){
            _token = IBribeAPI(externalBribe).rewardTokens(k);
            bribeAmount = IBribeAPI(externalBribe).earnedTokenId(params.id, _token, params.ts);

            _reward[2 + k] = Reward({
                id: params.id,
                pair: params.pair,
                amount: bribeAmount,
                token: _token,
                symbol: IERC20(_token).symbol(),
                decimals: IERC20(_token).decimals(),
                fee: address(0),
                bribe: externalBribe
            });
            
        }

        return _reward;
    }
    



    function setOwner(address _owner) external {
        require(msg.sender == owner, 'not owner');
        require(_owner != address(0), 'zeroAddr');
        owner = _owner;
        emit Owner(msg.sender, _owner);
    }

    
    function setVoter(address _voter) external  {
        require(msg.sender == owner);

        voter = IVoterV5(_voter);
    }


    function setRewardDistro(address _rewarddistro) external {
        require(msg.sender == owner);
        
        rewardDisitributor = IRewardsDistributor(_rewarddistro);
        require(rewardDisitributor.voting_escrow() == voter.ve(), 've!=ve');

        ve = IVotingEscrowV2( rewardDisitributor.voting_escrow() );
        underlyingToken = address(IVotingEscrowV2(ve).token());
    }
    
    function setPairAPI(address _pairApi) external {
        require(msg.sender == owner);
        
        pairAPI = _pairApi;
    }


    function setPairFactory(address _pairFactory) external {
        require(msg.sender == owner);  
        pairFactory = IPairFactory(_pairFactory);
    }

}
