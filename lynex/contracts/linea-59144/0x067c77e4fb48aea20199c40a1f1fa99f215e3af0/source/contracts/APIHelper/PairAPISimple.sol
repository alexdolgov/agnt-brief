// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


import '../libraries/Math.sol';
import '../interfaces/IBribeAPI.sol';
import '../interfaces/IGaugeAPIOptions.sol';
import '../interfaces/IGaugeFactory.sol';
import '../interfaces/IERC20.sol';
import '../interfaces/IMinter.sol';
import '../interfaces/IPair.sol';
import '../interfaces/IPairInfo.sol';
import '../interfaces/IPairFactory.sol';
import '../interfaces/IVoter.sol';
import '../interfaces/IVotingEscrow.sol';

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IAlgebraFactory} from "@cryptoalgebra/v1-core/contracts/interfaces/IAlgebraFactory.sol";


import "../Constants.sol";

interface IHypervisor{
    function pool() external view returns(address);
    function getTotalAmounts() external view returns(uint tot0,uint tot1);
}

contract PairAPISimple is Initializable {


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
        uint account_locked_gauge_balance; // account locked LP tokens balance
        uint account_lock_end;          // account locked LP tokens balance
        uint account_gauge_earned; 		// account earned emissions for this pair
    }


    struct tokenBribe {
        address token;
        uint8 decimals;
        uint256 amount;
        string symbol;
    }
    

    struct pairBribeEpoch {
        uint256 epochTimestamp;
        uint256 totalVotes;
        address pair;
        tokenBribe[] bribes;
    }

    uint256 public constant MAX_PAIRS = 1000;
    uint256 public constant MAX_EPOCHS = 200;
    uint256 public constant MAX_REWARDS = 16;
    uint256 public WEEK = Constants.EPOCH;


    IPairFactory public pairFactory;
    IAlgebraFactory public algebraFactory;

    address public owner;


    event Owner(address oldOwner, address newOwner);
    event Voter(address oldVoter, address newVoter);
    event WBF(address oldWBF, address newWBF);

    constructor() {}

    function initialize(IPairFactory _factory, address _algebraFactory) initializer public {
  
        owner = msg.sender;


        pairFactory = _factory;

        algebraFactory = IAlgebraFactory(_algebraFactory);
        
    }


    // valid only for sAMM and vAMM
    function getAllPair(address _user, uint _amounts, uint _offset) external view returns(pairInfo[] memory Pairs){

        
        require(_amounts <= MAX_PAIRS, 'too many pair');

        Pairs = new pairInfo[](_amounts);
        
        uint i = _offset;
        uint totPairs = pairFactory.allPairsLength();
        address _pair;

        for(i; i < _offset + _amounts; i++){
            // if totalPairs is reached, break.
            if(i == totPairs) {
                break;
            }
            _pair = pairFactory.allPairs(i);
            Pairs[i - _offset] = _pairAddressToInfo(_pair, _user);
        }
    }

    function getPair(address _pair, address _account) external view returns(pairInfo memory _pairInfo){
        return _pairAddressToInfo(_pair, _account);
    }

    function _pairAddressToInfo(address _pair, address _account) internal view returns(pairInfo memory _pairInfo) {

        IPair ipair = IPair(_pair); 
        
        address token_0 = ipair.token0();
        address token_1 = ipair.token1();
        uint r0;
        uint r1;

        // checkout is v2 or v3? if v3 then load algebra pool 
        bool _type = IPairFactory(pairFactory).isPair(_pair);
        
        if(_type == false){
            // hypervisor totalAmounts = algebra.pool + gamma.unused
            (r0,r1) = IHypervisor(_pair).getTotalAmounts();
        } else {
            (r0,r1,) = ipair.getReserves();
        }

        uint accountGaugeLPAmount = 0;
        uint earned = 0;
        uint gaugeTotalSupply = 0;
        uint emissions = 0;
        

        // Pair General Info
        _pairInfo.pair_address = _pair;
        _pairInfo.symbol = ipair.symbol();
        _pairInfo.name = ipair.name();
        _pairInfo.decimals = ipair.decimals();
        _pairInfo.stable = _type == false ? false : ipair.isStable();
        _pairInfo.total_supply = ipair.totalSupply();        
        
        // Token0 Info
        _pairInfo.token0 = token_0;
        _pairInfo.token0_decimals = IERC20(token_0).decimals();
        _pairInfo.token0_symbol = IERC20(token_0).symbol();
        _pairInfo.reserve0 = r0;
        _pairInfo.claimable0 = _type == false ? 0 : ipair.claimable0(_account);

        // Token1 Info
        _pairInfo.token1 = token_1;
        _pairInfo.token1_decimals = IERC20(token_1).decimals();
        _pairInfo.token1_symbol = IERC20(token_1).symbol();
        _pairInfo.reserve1 = r1;
        _pairInfo.claimable1 = _type == false ? 0 : ipair.claimable1(_account);

        // Account Info
        _pairInfo.account_lp_balance = IERC20(_pair).balanceOf(_account);
        _pairInfo.account_token0_balance = IERC20(token_0).balanceOf(_account);
        _pairInfo.account_token1_balance = IERC20(token_1).balanceOf(_account);
        _pairInfo.account_gauge_balance = accountGaugeLPAmount;
        _pairInfo.account_gauge_earned = earned;
    }

    function getPairBribe(uint _amounts, uint _offset, address _pair) external view returns(pairBribeEpoch[] memory _pairEpoch){

        require(_amounts <= MAX_EPOCHS, 'too many epochs');

        _pairEpoch = new pairBribeEpoch[](_amounts);

       return _pairEpoch;
    }

    function _bribe(uint _ts, address _br) internal view returns(tokenBribe[] memory _tb){

        IBribeAPI _wb = IBribeAPI(_br);
        uint tokenLen = _wb.rewardsListLength();

        _tb = new tokenBribe[](tokenLen);

        uint k;
        uint _rewPerEpoch;
        IERC20 _t;
        for(k = 0; k < tokenLen; k++){
            _t = IERC20(_wb.rewardTokens(k));
            IBribeAPI.Reward memory _reward = _wb.rewardData(address(_t), _ts);
            _rewPerEpoch = _reward.rewardsPerEpoch;
            if(_rewPerEpoch > 0){
                _tb[k].token = address(_t);
                _tb[k].symbol = _t.symbol();
                _tb[k].decimals = _t.decimals();
                _tb[k].amount = _rewPerEpoch;
            } else {
                _tb[k].token = address(_t);
                _tb[k].symbol = _t.symbol();
                _tb[k].decimals = _t.decimals();
                _tb[k].amount = 0;
            }
        }
    }


    function setOwner(address _owner) external {
        require(msg.sender == owner, 'not owner');
        require(_owner != address(0), 'zeroAddr');
        owner = _owner;
        emit Owner(msg.sender, _owner);
    }

}