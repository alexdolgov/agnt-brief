// SPDX-License-Identifier: Copyright 2022 Shipyard Software, Inc.
pragma solidity >=0.8.4;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./libraries/SafeAggregatorInterface.sol";
import "./libraries/SimpleDatabase.sol";
import "./libraries/InvariantCalcs.sol";
import "./libraries/LongshipUtils.sol";


interface LongshipGlobal {
    function checkAddress(address toCheck) external view returns (bool);
    function getMinLongFeeBps() external view returns (uint256);
}

contract Longship is SimpleDatabase, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using SafeAggregatorInterface for address;
    using SafeCast for int256;
    using SafeCast for uint256;

    mapping(uint128 => uint256) bricks;
    mapping(uint256 => uint256) ints;
    mapping(uint256 => longStruct) public longs;
    mapping(uint256 => repoStruct) public repos;
    mapping(uint128 => uint128) next_brick_bases;
    mapping(uint256 => uint256) int_reckonings;

    struct longStruct {
        uint128 liq_price;
        uint128 leverage;
        uint128 collateral;
        uint64 expiry;
        address holder;
    }

    struct repoStruct{
        uint128 repo_amount;
        uint128 underlying_quantity;
        uint64 expiry;
        uint128 bankruptcy_payout;
        address holder;
    }

    address public immutable PARENT;
    address public immutable underlying;
    address private immutable oracle;
    // Oracle must have been updated at least 12 hours ago
    uint256 constant MINIMUM_ORACLE_TIME = (1 days)/2;
    uint256 private constant ORACLE_FAILURE_TIME = 1 weeks;
    bool internal TECH_FAILURE;
    uint256 internal TECH_FAILURE_TIMESTAMP;

    uint256 constant ONE_IN_DEFAULT_DECIMALS = 1e18;
    uint256 constant ONE_IN_BASIS_POINTS = 1e4;
    uint256 public immutable ONE_IN_TOKEN_DECIMALS;

    uint128 internal top_reckoning;
    uint128 internal top_slope;
    uint128 public highest_base;
    uint128 public lowest_brick_base;
    uint64 public immutable BRICK_SIZE;
    uint64 private constant TICKS_PER_BRICK = 128;
    uint32 private constant TICKS_PER_INT = 8;
    uint32 private constant INTS_PER_BRICK = 16;
    uint32 private constant BITS_PER_TICK = 32;
    uint32 private constant BRICK_SIZE_DENOM = 10;
    uint32 private constant CHOMP_DENOM = 10;
    uint32 private constant MINIMUM_LEVERAGE = 2;
    uint32 private constant MAX_LONG_QUAD_NODE = 10;
    uint256 private constant LONG_FEE_MULT = 5*(10**5);
    uint256 private constant ONE_IN_QUAD_DECIMALS = 10**16;
    uint256 private constant ONE_IN_DIMES = 10**7;
    uint256 private constant MAX_REPO_PAYOUT_NUM = 11*10**15;


    uint256 internal chomp_payouts;
    //mults and weights at 16 decimals (QUAD_DECIMALS)
    uint256[] internal mults = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    // [int(round(x)) for x in (1e16 / np.sqrt(np.pi)) * np.polynomial.hermite.hermgauss(16)[1]] 
    uint256[] public weights = [1497815, 1309473216, 153000321625, 5259849265739, 72669376011847, 472847523540140, 1583383727509496, 2865685212380120, 2865685212380120, 1583383727509496, 472847523540140, 72669376011847, 5259849265739, 153000321625, 1309473216, 1497815];
    // [int(round(x)) for x in 1e16*np.sqrt(2)*np.polynomial.hermite.hermgauss(16)[0]]
    int256[] private _base_mults = [-66308781983931296, -54722257059493440, -44929553025200120, -36008736241715488, -27602450476307016, -19519803457163336, -11638291005549650, -3867606045005574, 3867606045005574, 11638291005549650, 19519803457163336, 27602450476307016, 36008736241715488, 44929553025200120, 54722257059493440, 66308781983931296];

    uint256 private long_nonce = 1;
    uint256 private repo_nonce = 1;
    uint256 public repos_owed;
    uint32 private max_repo_quad_node;

    event LongOpened(uint256 indexed nonce, uint128 liq_price, uint128 leverage, uint128 collateral, uint64 expiry, address holder);
    event LongClosed(uint256 nonce);
    event LongChomped(uint256 nonce, uint80 roundId, address chomper);
    event LongLiquidatedBankruptcy(uint256 nonce, address liquidator);
    event RepoOpened(uint256 indexed nonce, uint128 repo_amount, uint128 underlying_quantity, uint64 expiry, uint128 bankruptcy_payout, address holder);
    event RepoRedeemed(uint256 nonce);
    event RepoChomped(uint256 nonce, address chomper);
    event DepositMade(uint256 underlying_added, uint256 tokens_minted, address depositor);
    event DepositWithdrawn(uint256 underlying_withdrawn, uint256 tokens_burned, address depositor);

    modifier onlyParent() {
        require(msg.sender==PARENT, "Not parent");
        _;
    }

    modifier requireTechFailure {
      require(TECH_FAILURE);
      _;
   }

    constructor(address theToken, address theOracle, address theParent, uint64 _BRICK_SIZE, uint256 volatility) {
        require(AggregatorV3Interface(theOracle).decimals()==8);

        underlying = theToken;
        uint256 _tokenDecimals = IERC20Metadata(theToken).decimals();
        ONE_IN_TOKEN_DECIMALS = 10**_tokenDecimals;

        oracle = theOracle;

        PARENT = theParent;    

        uint128 _init_base = (theOracle.safeUnsignedLatest(MINIMUM_ORACLE_TIME)/2).toUint128();
        BRICK_SIZE = _BRICK_SIZE;
        highest_base = _init_base;
        lowest_brick_base = _init_base;
        next_brick_bases[_init_base] = (_init_base*_BRICK_SIZE)/BRICK_SIZE_DENOM;
        
        setMultsForVolatility(volatility);
    }

    function setVolatility(uint256 newVolatility) external onlyParent {
        setMultsForVolatility(newVolatility);
    }

    function setMultsForVolatility(uint256 vol) internal {
        // vol is in basis points (4 decimals), base_mults are in 16. So this is 20 decimals, get back to 16
        int256 _vol = int256(vol);
        int256 _SIGNED_ONE = int256(ONE_IN_BASIS_POINTS);
        bool repo_node_set = false;
        for(uint32 i=0; i < _base_mults.length; i++){
            mults[i] = LongshipUtils.exp(_vol*_base_mults[i]);
            if (!repo_node_set && (mults[i] > MAX_REPO_PAYOUT_NUM)) {
                max_repo_quad_node = i;
                repo_node_set = true;
            }
        }
    }

    function safeEthSend(address recipient, uint256 howMuch) internal {
        (bool success, ) = payable(recipient).call{value: howMuch}("");
        require(success, "payable failed");
    }

    // Assumes you'd only attach value when the underlying is wrapped ETH
    function unifiedTransmit(uint256 howMuch) internal {
        require(LongshipGlobal(PARENT).checkAddress(msg.sender), "sanctioned");
        if(msg.value > 0){
            require(msg.value == howMuch);
            uint256 _bal = IERC20(underlying).balanceOf(address(this));
            safeEthSend(underlying, howMuch);
            require(IERC20(underlying).balanceOf(address(this))-_bal >= howMuch);
        } else {
            IERC20(underlying).safeTransferFrom(msg.sender, address(this), howMuch);
        }
    }

    //gets current oracle price
    function currentOraclePrice() virtual public view returns (uint256) {
        return oracle.safeUnsignedLatest(MINIMUM_ORACLE_TIME);
    }

    //initiates technical failure flag if oracle has failed
    function checkOracle() public {
        if (!TECH_FAILURE) {
            if ((block.timestamp - oracle.latestTimestamp()) > ORACLE_FAILURE_TIME) {
                TECH_FAILURE = true;
                TECH_FAILURE_TIMESTAMP = block.timestamp;
            }
        }
    }

    function tokensFromDollars(uint256 dollar_amt) internal view returns(uint256){
        return (ONE_IN_TOKEN_DECIMALS*dollar_amt)/currentOraclePrice();
    }

    function setBrick(uint128 reckoning_amt, uint128 reckoning_slope, uint128 base) internal {
        uint256 brick = uint256(reckoning_amt);
        brick |= uint256(reckoning_slope)<<128;
        bricks[base] = brick;
    }

    function addToBrick(uint128 _amt, uint128 _slope, uint128 base) internal {
        uint256 brick = bricks[base];
        setBrick(uint128(brick) + _amt, uint128(brick>>128) + _slope, base);  
    }

    function subtractFromBrick(uint128 _amt, uint128 _slope, uint128 base) internal {
        uint256 brick = bricks[base];
        setBrick(uint128(brick) - _amt, uint128(brick>>128) - _slope, base);  
    }

    function setInt(uint128 brick_base, uint128 int_index, uint256 int_value) internal {
        uint256 int_key = uint256(brick_base);
        int_key |= uint256(int_index)<<128;
        ints[int_key] = int_value;
    }

    //adds to a specific tick using bitmask
    function modTick(uint128 brick_base, uint128 tick_index, uint32 tick_value, bool plus_minus_flag) internal {
        uint128 int_index = tick_index/TICKS_PER_INT;
        uint128 tick_in_int_index = tick_index % TICKS_PER_INT;
        uint256 int_key = uint256(brick_base);
        int_key |= uint256(int_index)<<128;
        uint256 _int = ints[int_key];
        uint32 tick = uint32(_int>>(tick_in_int_index*BITS_PER_TICK));
        uint32 tick_updated;
        if (plus_minus_flag){
            tick_updated = tick + tick_value;
        }
        else {
            tick_updated = tick - tick_value;
        }
        uint256 _int_updated = _int & (~ (uint256(2**32 - 1)<<(tick_in_int_index*BITS_PER_TICK)));
        _int_updated |= (uint256(tick_updated)<<tick_in_int_index*BITS_PER_TICK);
        ints[int_key] = _int_updated;
    }

    //gets an int as an array of its 32 bit values
    function getSplitInt(uint128 brick_base, uint128 int_index) internal view returns(uint32[] memory){
        uint256 int_key = uint256(brick_base);
        int_key |= uint256(int_index)<<128;
        uint256 _int = ints[int_key];
        uint32[] memory split_int = new uint32[](TICKS_PER_INT);
        for (uint i = 0; i < TICKS_PER_INT; i++) {
            split_int[i] = uint32(_int>>(i*BITS_PER_TICK));
        }
        return split_int;
    }

    function getReckoningOfInt(uint128 brick_base, uint128 int_index) internal view returns(uint128, uint128){
        uint256 int_key = uint256(brick_base);
        int_key |= uint256(int_index)<<128;
        uint256 reckoning_int_raw = int_reckonings[int_key];
        uint128 reckoning_amt = uint128(reckoning_int_raw);
        uint128 reckoning_slope = uint128(reckoning_int_raw>>128);
        return(reckoning_amt, reckoning_slope);
    }

    function setReckoningOfInt(uint128 brick_base, uint128 int_index, uint128 reckoning_amt, uint128 reckoning_slope) internal {
        uint256 int_key = uint256(brick_base);
        int_key |= uint256(int_index)<<128;
        uint256 int_reckoning_raw = uint256(reckoning_amt);
        int_reckoning_raw |= uint256(reckoning_slope)<<128;
        int_reckonings[int_key] = int_reckoning_raw;
    }

    //adds a brick to the top of the stack
    function addBrickTop() internal {
        uint128 highest_base_uncovered = next_brick_bases[highest_base];
        uint128 new_brick_base = highest_base_uncovered;
        uint128 new_brick_reckoning = top_reckoning;
        uint128 new_brick_slope = top_slope;
        setBrick(new_brick_reckoning, new_brick_slope, new_brick_base);
        top_reckoning += top_slope*(new_brick_base - highest_base_uncovered);
        highest_base_uncovered = (new_brick_base*BRICK_SIZE)/BRICK_SIZE_DENOM;
        highest_base = new_brick_base;
        next_brick_bases[new_brick_base] = highest_base_uncovered;
    }

    //adds a brick to the bottom of the stack
    function addBrickBottom() internal {
        uint128 new_brick_base = (lowest_brick_base*BRICK_SIZE_DENOM)/BRICK_SIZE;
        setBrick(0, 0, new_brick_base);
        next_brick_bases[new_brick_base] = lowest_brick_base;
        lowest_brick_base = new_brick_base;
    }

    //adds a long to the payout fields/data structures and resolves its liq price to the next highest tick
    function addLong(uint128 liq_price, uint128 total_margin, uint256 chomp_payout) internal returns(uint128 resolved_liq_price){
        uint128 highest_base_uncovered = next_brick_bases[highest_base];

        if (liq_price >= highest_base_uncovered){
            while(liq_price >= highest_base_uncovered){
                addBrickTop();
                highest_base_uncovered = next_brick_bases[highest_base];
            }
        }

        if (liq_price < lowest_brick_base){
            while(liq_price < lowest_brick_base){
                addBrickBottom();
            }
        }

        uint128 target_base = lowest_brick_base;
        uint128 current_base = next_brick_bases[target_base]; 

        while(liq_price >= current_base){
            target_base = current_base; 
            current_base = next_brick_bases[target_base];
        }

        uint128 tick_size = (current_base - target_base)/TICKS_PER_BRICK;
        uint128 int_index;
        {
            uint128 tick_index;
            if (((liq_price - target_base) % tick_size) != 0){
                tick_index = 1 + (liq_price - target_base)/tick_size;
            } else {
                tick_index = (liq_price - target_base)/tick_size;
            }
            if (tick_index == (TICKS_PER_BRICK)){
                return addLong(current_base, total_margin, chomp_payout);
            }
            

            modTick(target_base, tick_index, marginScaleToUSD(total_margin, target_base), true);

            int_index = tick_index/TICKS_PER_INT + 1;
            resolved_liq_price = tick_index*tick_size + target_base;
        }
        while(int_index < (INTS_PER_BRICK)){
            updateIntReckoningUp(target_base, resolved_liq_price, int_index, tick_size, total_margin);
            int_index += 1;
        }

        uint256 _marginal_amt;
        while(current_base < highest_base_uncovered){
            //(Price - Price)*(Token)/(ONE_IN_TOKEN_DECIMALS) = usd units
            _marginal_amt = (uint256(current_base - resolved_liq_price)*uint256(total_margin))/ONE_IN_TOKEN_DECIMALS;
            uint128 marginal_amt = SafeCast.toUint128(_marginal_amt);
            uint128 marginal_slope = total_margin;
            addToBrick(marginal_amt, marginal_slope, current_base);
            current_base = next_brick_bases[current_base];
        }

        top_slope += total_margin;
        _marginal_amt = (uint256(highest_base_uncovered - resolved_liq_price)*uint256(total_margin))/ONE_IN_TOKEN_DECIMALS;
        top_reckoning += SafeCast.toUint128(_marginal_amt);
        chomp_payouts += chomp_payout;

        return resolved_liq_price;
    }

    //remove a long from data structures, also prunes blocks at the end if they are now empty
    function removeLong(uint128 liq_price, uint128 total_margin, uint256 chomp_payout) internal {
        chomp_payouts -= chomp_payout;
        uint128 current_base = lowest_brick_base;
        uint128 target_base = current_base; 
        uint128 prev_base;
        while(liq_price >= current_base){
            prev_base = target_base;
            target_base = current_base;  
            current_base = next_brick_bases[target_base];
        }

        uint128 tick_size = (current_base - target_base)/TICKS_PER_BRICK;

        modTick(target_base, (liq_price - target_base)/tick_size, marginScaleToUSD(total_margin, target_base), false);

        uint128 int_index = ((liq_price - target_base)/tick_size)/TICKS_PER_INT + 1;
        while(int_index < (INTS_PER_BRICK)){
            updateIntReckoningDown(target_base, liq_price, int_index, tick_size, total_margin);
            int_index += 1;
        }

        uint128 highest_base_uncovered = next_brick_bases[highest_base];
        uint256 _marginal_amt;
        while(current_base < highest_base_uncovered){
            _marginal_amt = (uint256(current_base - liq_price)*uint256(total_margin))/ONE_IN_TOKEN_DECIMALS;
            uint128 marginal_amt = SafeCast.toUint128(_marginal_amt);
            uint128 marginal_slope = total_margin;
            subtractFromBrick(marginal_amt, marginal_slope, current_base);
            current_base = next_brick_bases[current_base];
        }

        top_slope -= total_margin;
        _marginal_amt = (uint256(highest_base_uncovered - liq_price)*uint256(total_margin))/ONE_IN_TOKEN_DECIMALS;
        top_reckoning -= SafeCast.toUint128(_marginal_amt);


        //pruning bricks
        uint256 this_brick = bricks[target_base];
        uint128 this_reckoning_slope = uint128(this_brick>>128);

        if (! ((target_base == lowest_brick_base) && (target_base == highest_base))){
            if  (this_reckoning_slope == top_reckoning){
                highest_base = prev_base;
            }
            else {   
                if(!(target_base == highest_base)){
                    uint256 next_brick = bricks[next_brick_bases[target_base]];
                    uint128 next_reckoning_slope = uint128(next_brick>>128);
                    if (0 == next_reckoning_slope){
                        lowest_brick_base = next_brick_bases[target_base];
                    }
                }  
            }
        }
    }

    //adds to an int reckoning
    function updateIntReckoningUp(uint128 target_base, uint128 liq_price, uint128 int_index, uint128 tick_size, uint128 total_margin) internal {
        (uint128 int_reckoning_amt, uint128 int_reckoning_slope) = getReckoningOfInt(target_base, int_index);
        int_reckoning_slope += total_margin;
        uint128 this_int_price = tick_size*TICKS_PER_INT*int_index + target_base;
        uint256 marginal_int_reckoning_amt = (uint256(this_int_price-liq_price)*uint256(total_margin))/(ONE_IN_TOKEN_DECIMALS);
        int_reckoning_amt += SafeCast.toUint128(marginal_int_reckoning_amt);
        setReckoningOfInt(target_base, int_index, int_reckoning_amt, int_reckoning_slope);
    }

    //subtracts from an int reckoning
    function updateIntReckoningDown(uint128 target_base, uint128 liq_price, uint128 int_index, uint128 tick_size, uint128 total_margin) internal {
        (uint128 int_reckoning_amt, uint128 int_reckoning_slope) = getReckoningOfInt(target_base, int_index);
        int_reckoning_slope -= total_margin;
        uint128 this_int_price = tick_size*TICKS_PER_INT*int_index + target_base;
        uint256 marginal_int_reckoning_amt = (uint256(this_int_price-liq_price)*uint256(total_margin))/(ONE_IN_TOKEN_DECIMALS);
        int_reckoning_amt -= SafeCast.toUint128(marginal_int_reckoning_amt);
        setReckoningOfInt(target_base, int_index, int_reckoning_amt, int_reckoning_slope);
    }

    //gets the payouts owed to long holders or chompers at an array of prices (must be in ascending order)
    function getPayouts(uint256[] memory prices) public view returns (uint256[] memory){
        uint128 current_base = lowest_brick_base;
        uint128 highest_base_uncovered = next_brick_bases[highest_base];
        uint256[] memory payouts = new uint256[](prices.length);
        uint32 i = 0;
        while((i < prices.length) && (prices[i] < current_base)){
            //Chomp payouts in token units, so (Token*Price)/(ONE_IN_TOKEN_DECIMALS) = price
            payouts[i] += (chomp_payouts*prices[i])/ONE_IN_TOKEN_DECIMALS;
            i += 1;
        }
        uint128 target_base = current_base;
        while((current_base <= highest_base_uncovered) && (i < prices.length)){ 
            current_base = next_brick_bases[target_base];
            uint256 this_brick = bricks[target_base];
            uint128 brick_reckoning_amt = uint128(this_brick);
            uint128 brick_reckoning_slope = uint128(this_brick>>128);
            while(prices[i]<current_base){
                uint256 _payout = getPayoutFromInt(prices[i], target_base, (current_base - target_base)/TICKS_PER_BRICK);
                //(Price - Price)*Token/ONE_IN_TOKEN_DECIMALS + USD + (token*price)/ONE_IN_TOKEN_DECIMALS = USD value
                payouts[i] = _payout + (prices[i] - uint256(target_base))*uint256(brick_reckoning_slope)/ONE_IN_TOKEN_DECIMALS 
                + brick_reckoning_amt + (chomp_payouts*prices[i])/ONE_IN_TOKEN_DECIMALS;
                i = i+1;
                if (i >= prices.length){
                    break;
                }
            }

            if(current_base == highest_base_uncovered){
                break;
            }
            target_base = current_base;
            current_base = next_brick_bases[target_base];
        }

        while(i<prices.length){
            payouts[i] = (prices[i] - highest_base_uncovered)*top_slope/ONE_IN_TOKEN_DECIMALS + top_reckoning + (chomp_payouts*prices[i])/ONE_IN_TOKEN_DECIMALS;
            i = i+1;
        }
        
        //emit Payouts(payouts);
        return payouts;
    }

    //gets the payout of longs contained in the block which encompasses the price queried
    function getPayoutFromInt(uint256 _price, uint128 target_base, uint128 tick_size) public view returns(uint256){  
        uint256 tick_index = (_price - target_base)/uint256(tick_size);
        uint128 int_index = uint128(tick_index/TICKS_PER_INT);
        (uint128 int_reckoning_amt, uint128 int_reckoning_slope) = getReckoningOfInt(target_base, int_index);
        uint32[] memory split_int = getSplitInt(target_base, int_index);
        uint256 curr_price = int_index*TICKS_PER_INT*tick_size + uint256(target_base);
        //USD + (Price - Price)*Token/ONE_IN_TOKEN_DECIMALS = USD value
        uint256 _payout = uint256(int_reckoning_amt) + (uint256(int_reckoning_slope)*(_price - curr_price))/ONE_IN_TOKEN_DECIMALS;
        uint32 j = 0;
        while(curr_price < _price){
            //(Price - Price)*Token/ONE_IN_TOKEN_DECIMALS = USD value
            _payout += ((_price - curr_price)*(marginUnscaleTwoFiftySix(split_int[j], target_base)))/ONE_IN_TOKEN_DECIMALS;
            j = j+1;
            curr_price += tick_size;
        }
        //emit Payoutsmall(_payout);
        return _payout;
    }
    
    //scales the margin of a long from token units to dimes
    function marginScaleToUSD(uint128 underlying_margin, uint128 brick_base) internal view returns(uint32){
        uint256 mult = (uint256(underlying_margin)*brick_base)/(ONE_IN_TOKEN_DECIMALS*ONE_IN_DIMES);
        uint32 mult_small = SafeCast.toUint32(mult);
        return mult_small;
    }

    //converts back from dimes to token units
    function marginUnscale(uint32 scaled_margin, uint128 brick_base) internal view returns(uint128){
        uint256 _scaled_margin = uint256(scaled_margin);
        uint256 mult = (_scaled_margin*ONE_IN_TOKEN_DECIMALS*ONE_IN_DIMES)/(brick_base);
        return SafeCast.toUint128(mult);
    }

    //converts baack from dimes to a uint256
    function marginUnscaleTwoFiftySix(uint32 scaled_margin, uint128 brick_base) internal view returns(uint256){
        uint256 _scaled_margin = uint256(scaled_margin);
        uint256 mult = (_scaled_margin*ONE_IN_TOKEN_DECIMALS*ONE_IN_DIMES)/(brick_base);
        return mult;
    }

    //gets lp tokesn owed from a deposit
    function lpTokensForDeposit(uint256 underlyingToAdd) public view returns (uint256 tokensToMint) {
        uint256 currentLPTokens = totalSupply();
        if(currentLPTokens==0){
            // Converts from TOKEN_DECIMALS to DEFAULT_DECIMALS (we want our token to be 18 decimals)
            tokensToMint = underlyingToAdd*ONE_IN_DEFAULT_DECIMALS/ONE_IN_TOKEN_DECIMALS;
            return tokensToMint;
        } else {
            InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariantsLP(underlyingToAdd, 0, getQuadraturePrices(), getPayouts(getQuadraturePrices()), weights, IERC20(underlying).balanceOf(address(this)), repos_owed, ONE_IN_TOKEN_DECIMALS);
            uint256 currentInvariant = irs.invariant_before;
            uint256 invariantWithLPAdded = irs.invariant_after;
            tokensToMint = (((invariantWithLPAdded - currentInvariant)*ONE_IN_DEFAULT_DECIMALS*currentLPTokens)/currentInvariant)/ONE_IN_DEFAULT_DECIMALS;
        }
    }

    //gets fraction of invariant removed from an lp withdrawal
    function invariantFractionFromSendBack(uint256 underlyingToSendBack) public view returns (uint256 fractionOfInvariantRemoved) {
        InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariantsLP(0, underlyingToSendBack, getQuadraturePrices(), getPayouts(getQuadraturePrices()), weights, IERC20(underlying).balanceOf(address(this)), repos_owed, ONE_IN_TOKEN_DECIMALS);
        (uint256 currentInvariant, uint256 invariantWithUnderlyingRemoved) = (irs.invariant_before, irs.invariant_after);

        fractionOfInvariantRemoved = (currentInvariant - invariantWithUnderlyingRemoved)*ONE_IN_DEFAULT_DECIMALS/currentInvariant;
    }

    //public function to add liquidity
    function makeLPDeposit(uint256 underlyingToAdd, address holder) external nonReentrant payable {
        uint256 tokensToMint = lpTokensForDeposit(underlyingToAdd);
        unifiedTransmit(underlyingToAdd);
        _mint(holder, tokensToMint);
        emit DepositMade(underlyingToAdd, tokensToMint, holder);
    }

    //public function to remove liquidity
    function removeLPDeposit(uint256 underlyingToSendBack) external nonReentrant {
        uint256 fractionOfInvariantRemoved = invariantFractionFromSendBack(underlyingToSendBack);
        // fraction is in DEFAULT_DECIMALS
        uint256 correspondingTokenToBurn= (fractionOfInvariantRemoved*totalSupply())/ONE_IN_DEFAULT_DECIMALS;
        // Reverts if not enough token is held
        _burn(msg.sender, correspondingTokenToBurn);
        IERC20(underlying).safeTransfer(msg.sender, underlyingToSendBack);
        emit DepositWithdrawn(underlyingToSendBack, correspondingTokenToBurn, msg.sender);
    } 


    //opens a repo
    function openRepo(uint256 quantity, uint256 price, address holder) external payable nonReentrant returns (uint256) {
        unifiedTransmit(quantity);
        InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariantsRepo(quantity, price, getPayouts(getQuadraturePrices()), weights, getQuadraturePrices(), IERC20(underlying).balanceOf(address(this)), repos_owed, ONE_IN_TOKEN_DECIMALS);
        if (irs.bankrupt_bool == false){
            if(irs.invariant_after > irs.invariant_before){
                return addRepo(quantity, price, holder);
            }
            else {
                revert("No invariant increase");
            }
        } else {
            if ((irs.first_node > max_repo_quad_node) &&(price < (currentOraclePrice()*MAX_REPO_PAYOUT_NUM)/ONE_IN_QUAD_DECIMALS)){
                return addRepo(quantity, price, holder);
            }
            else {
                revert("Bankrupt");
            }
        }
    }

    //adds a repo to internal data structures
    function addRepo(uint256 underlying_quantity, uint256 price, address holder) internal returns (uint256){
        repos_owed += price*underlying_quantity/ONE_IN_TOKEN_DECIMALS;
        uint64 expiry = uint64(block.timestamp) + 1 days;
        repoStruct memory repo = repoStruct(SafeCast.toUint128(price*underlying_quantity/ONE_IN_TOKEN_DECIMALS), SafeCast.toUint128(underlying_quantity), expiry, SafeCast.toUint128((price*underlying_quantity)/ONE_IN_TOKEN_DECIMALS), holder);
        repos[repo_nonce] = repo;
        emit RepoOpened(repo_nonce, repo.repo_amount, repo.underlying_quantity, repo.expiry, repo.bankruptcy_payout, repo.holder);
        repo_nonce += 1;
        return repo_nonce-1;
    }

    //redeems a repo, only callable by repo creator
    function redeemRepo(uint256 nonce) external nonReentrant {
        repoStruct storage repo = repos[nonce];
        require(msg.sender == repo.holder);
        require(repo.expiry != 0);
        InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariant(getQuadraturePrices(), getPayouts(getQuadraturePrices()), weights, IERC20(underlying).balanceOf(address(this)), repos_owed, ONE_IN_TOKEN_DECIMALS);
        if((irs.bankrupt_bool == true) && (irs.first_node==0)){
            revert("Short bankrupt");
        }
        if (block.timestamp > repo.expiry){
            repos_owed -= repo.repo_amount;
            IERC20(underlying).safeTransfer(msg.sender, tokensFromDollars(repo.repo_amount));
            delete(repos[nonce]);
            emit RepoRedeemed(nonce);
        }
        else {
            revert("Not mature");
        }
    }

    //get quadrature prices from current oracle price
    function getQuadraturePrices() public view returns (uint256[] memory){
        uint256[] memory prices = new uint256[](mults.length);
        uint256 _oraclePrice = currentOraclePrice();
        for (uint i = 0; i < mults.length; i++) {
            prices[i] = (mults[i]*_oraclePrice)/ONE_IN_QUAD_DECIMALS;
        }
        return prices;
    }

    //open a long
    function openLong(uint128 liq_price, uint128 leverage, uint128 collateral, address holder) external payable nonReentrant returns (uint256){
        uint128 total_margin = (leverage)*collateral;
        InvariantCalcs.invLongStruct memory requested_long = InvariantCalcs.invLongStruct(liq_price, leverage, collateral, 0, holder);
        InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariantsLong(LongshipGlobal(PARENT).getMinLongFeeBps().toUint128(), getQuadraturePrices(), requested_long, getPayouts(getQuadraturePrices()), weights, IERC20(underlying).balanceOf(address(this)), repos_owed, ONE_IN_TOKEN_DECIMALS);
        if (liq_price > currentOraclePrice()*mults[MAX_LONG_QUAD_NODE]/ONE_IN_QUAD_DECIMALS){
            revert("Liquidation price too high");
        }
        if (leverage < MINIMUM_LEVERAGE) {
            revert("Leverage too low");
        }
        if((irs.bankrupt_bool==true)&&(irs.first_node==(mults.length-1))){
            revert("Long bankrupt");
        }
        if (irs.invariant_after > irs.invariant_before){
            unifiedTransmit(collateral);
            uint128 resolved_liq_price = addLong(liq_price, total_margin, collateral/CHOMP_DENOM);
            uint64 expiry = uint64(block.timestamp) + 1 days;
            longStruct memory long = longStruct(resolved_liq_price, leverage, collateral, expiry, holder);
            longs[long_nonce] = long;
            emit LongOpened(long_nonce, resolved_liq_price, leverage, collateral, expiry, holder);
            long_nonce += 1;
            return long_nonce-1;
        } else {
            revert("No invariant increase");
        }
    }

    //close a long, only callabe by long creator
    function closeLong(uint256 nonce) external nonReentrant {
        longStruct storage long = longs[nonce];
        require(msg.sender==long.holder);
        if (long.expiry == 0){
            revert("Long does not exist");
        }
        if (block.timestamp > long.expiry){
            uint128 liq_price = long.liq_price;
            uint128 chomp_payout = long.collateral/CHOMP_DENOM;
            uint128 total_margin = (long.leverage*long.collateral) - chomp_payout;
            uint256 payout = InvariantCalcs.payoutFromLong(liq_price, total_margin, chomp_payout, currentOraclePrice(), ONE_IN_TOKEN_DECIMALS);
            removeLong(liq_price, total_margin, chomp_payout);
            emit LongClosed(nonce);
            delete(longs[nonce]);
            IERC20(underlying).safeTransfer(msg.sender, tokensFromDollars(payout));
        } else {
            revert("Not mature");
        }
    }

    //chomp long if below liq price, callable by anyone
    function chompLong(uint256 nonce, uint80 roundId) external nonReentrant {
        longStruct storage long = longs[nonce];
        if (long.expiry == 0){
            revert("Long does not exist");
        }
        (uint256 thePrice, uint256 theTimestamp) = oracle.safeUnsignedAndTimestampAtRound(roundId);
        if (theTimestamp >= long.expiry){
            uint128 liq_price = long.liq_price;
            uint128 chomp_payout = long.collateral/CHOMP_DENOM;
            uint128 total_margin = (long.leverage*long.collateral) - chomp_payout;
            if (thePrice <= uint256(liq_price)){
                IERC20(underlying).safeTransfer(msg.sender, chomp_payout);
                removeLong(liq_price, total_margin, chomp_payout);
                delete(longs[nonce]);
                emit LongChomped(nonce, roundId, msg.sender);
            }
        } else {
            revert("Not mature");
        }
    }


    //close long at minimum leverage, callable only when system is long bankrupt
    function bankruptcyLiquidateLong(uint256 nonce) external nonReentrant {
        InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariantReverse(getQuadraturePrices(), getPayouts(getQuadraturePrices()), weights, IERC20(underlying).balanceOf(address(this)), repos_owed, ONE_IN_TOKEN_DECIMALS);
        if(!((irs.bankrupt_bool==true)&&(irs.first_node==(mults.length-1)))){
            revert("not long bankrupt");
        }
        longStruct storage long = longs[nonce];
        uint128 chomp_payout = long.collateral/CHOMP_DENOM;
        uint128 total_minimum_margin = SafeCast.toUint128(MINIMUM_LEVERAGE*long.collateral - chomp_payout);
        uint128 original_total_margin = SafeCast.toUint128(long.leverage*long.collateral - chomp_payout);
        uint256 payout = InvariantCalcs.payoutFromLong(long.liq_price, total_minimum_margin, chomp_payout, currentOraclePrice(), ONE_IN_TOKEN_DECIMALS);
        IERC20(underlying).safeTransfer(msg.sender, tokensFromDollars(payout));
        removeLong(long.liq_price, original_total_margin, chomp_payout);
        delete(longs[nonce]);
        emit LongLiquidatedBankruptcy(nonce, msg.sender);
    }
    

    //chomp repo when system is short bankrupt
    function bankruptcyChompRepo(uint256 nonce) external nonReentrant {
        InvariantCalcs.invariantReturnStruct memory irs = InvariantCalcs.getInvariant(getQuadraturePrices(), getPayouts(getQuadraturePrices()), weights, IERC20(underlying).balanceOf(address(this)), repos_owed, ONE_IN_TOKEN_DECIMALS);
        if((irs.bankrupt_bool==true) && (irs.first_node == 0)){
            repoStruct storage repo = repos[nonce];
            if (repo.expiry == 0){
                revert("Repo does not exist");
            }
            uint256 to_transfer = repo.bankruptcy_payout;
            IERC20(underlying).safeTransfer(repo.holder, tokensFromDollars(to_transfer));
            repos_owed -= repo.repo_amount;
            delete(repos[nonce]);
            emit RepoChomped(nonce, msg.sender);
        }
        else {
            revert("Not bankrupt");
        }
    }

    //get underlying back in case of technical failure
    function redeemUnderlyingLongTechFailure(uint256 nonce) external nonReentrant requireTechFailure{
        longStruct storage long = longs[nonce];
        IERC20(underlying).safeTransfer(long.holder, long.collateral);
        delete(longs[nonce]);
    }

    //get input of repo back in case of technical failure
    function redeemUnderlyingRepoTechFailure(uint256 nonce) external nonReentrant requireTechFailure {
        repoStruct storage repo = repos[nonce];
        IERC20(underlying).safeTransfer(repo.holder, repo.underlying_quantity);
        delete(repos[nonce]);
    }

    //get pro rata share of lp in case of technical failure
    function redeemLPTechFailure(uint256 tokenToBurn) external nonReentrant requireTechFailure {
        if (block.timestamp > (TECH_FAILURE_TIMESTAMP + 1 weeks)){
            uint256 underlyingToSendBack = IERC20(underlying).balanceOf(address(this))*tokenToBurn/totalSupply();
            _burn(msg.sender, tokenToBurn);
            IERC20(underlying).safeTransfer(msg.sender, underlyingToSendBack);
        }
    }

    function getWeights() public view returns (uint256[] memory){
        return weights;
    }

}
