// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import './lib/SafeMath.sol';
import './lib/SafeERC20.sol';
import './lib/FixedPoint.sol';
import './lib/Ownable.sol';
import './interfaces/ITreasury.sol';
import './interfaces/IsHUMP.sol';
import './interfaces/IBondingCalculator.sol';
import './interfaces/IStaking.sol';
import './interfaces/IERC20Metadata.sol';

interface IBackingCalculator{
    function premium() external view returns (uint);
    function treasuryBacking() external view returns(uint _treasuryBacking);
}

contract WhaleBondStakeDepository is Ownable {
    using FixedPoint for *;
    using SafeERC20 for IERC20;
    using SafeMath for uint;

    /* ======== EVENTS ======== */
    event BondCreated( uint deposit, uint indexed payout, uint indexed expires, uint indexed priceInUSD );
    event BondRedeemed( address indexed recipient, uint payout, uint remaining );
    event BondPriceChanged( uint indexed priceInUSD, uint indexed internalPrice, uint indexed debtRatio );
    event ControlVariableAdjustment( uint initialBCV, uint newBCV, uint adjustment, bool addition );

    /* ======== STATE VARIABLES ======== */
    address public immutable HUMP; // intermediate reward token from treasury
    address public immutable sHUMP; // token given as payment for bond
    address public immutable principle; // token used to create bond
    address public immutable treasury; // mints HUMP when receives principle
    address public immutable DAO; // receives profit share from bond

    bool public immutable isLiquidityBond; // LP and Reserve bonds are treated slightly different
    address public immutable bondCalculator; // calculates value of LP tokens

    address public staking; // to stake and claim

    Terms public terms; // stores terms for new bonds
    Adjust public adjustment; // stores adjustment to BCV data

    mapping( address => Bond ) public _bondInfo; // stores bond information for depositors

    uint public totalDebt; // total value of outstanding bonds; used for pricing
    uint public lastDecay; // reference block for debt decay
    
    uint public totalPrinciple; // total principle bonded through this depository

    string internal name_; //name of this bond
    IBackingCalculator public backingCalculator;
    uint8 public principleDecimals; //principle decimals or pair markdown decimals

    /* ======== STRUCTS ======== */

    // Info for creating new bonds
    struct Terms {
        uint controlVariable; // scaling variable for price
        uint vestingTerm; // in blocks
        uint minimumPrice; // vs principle value , 4 decimals 0.15 = 1500
        uint maxPayout; // in thousandths of a %. i.e. 500 = 0.5%
        uint fee; // as % of bond payout, in hundreths. ( 500 = 5% = 0.05 for every 1 paid)
        uint maxDebt; // 9 decimal debt ratio, max % total supply created as debt
    }

    // Info for bond holder with gons
    struct Bond {
        uint gonsPayout; // sHUMP gons remaining to be paid
        uint humpPayout; // HUMP amount at the moment of bond
        uint vesting; // Blocks left to vest
        uint lastBlock; // Last interaction
        uint pricePaid; // In DAI, for front end viewing
    }

    // Info for incremental adjustments to control variable 
    struct Adjust {
        bool add; // addition or subtraction
        uint rate; // increment
        uint target; // BCV when adjustment finished
        uint buffer; // minimum length (in blocks) between adjustments
        uint lastBlock; // block when last adjustment made
    }

    /* ======== INITIALIZATION ======== */
    constructor ( 
        string memory _name,
        address _HUMP,
        address _sHUMP,
        address _principle,
        uint8 _principleDecimals,
        address _treasury, 
        address _DAO, 
        address _backingCalculator,
        address _bondCalculator
    ) {
        require( _HUMP != address(0) );
        HUMP = _HUMP;
        require( _sHUMP != address(0) );
        sHUMP = _sHUMP;
        require( _principle != address(0) );
        principle = _principle;
        require(_principleDecimals != 0);
        principleDecimals = _principleDecimals;
        require( _treasury != address(0) );
        treasury = _treasury;
        require( _DAO != address(0) );
        DAO = _DAO;
        require(address(0)!=_backingCalculator);
        backingCalculator = IBackingCalculator(_backingCalculator);
        bondCalculator = _bondCalculator; // bondCalculator should be address(0) if not LP bond
        isLiquidityBond = ( _bondCalculator != address(0) );
        name_ = _name;
    }

    /**
     *  @notice initializes bond parameters
     *  @param _controlVariable uint
     *  @param _vestingTerm uint
     *  @param _minimumPrice uint
     *  @param _maxPayout uint
     *  @param _fee uint
     *  @param _maxDebt uint
     *  @param _initialDebt uint
     */
    function initializeBondTerms( 
        uint _controlVariable, 
        uint _vestingTerm,
        uint _minimumPrice,
        uint _maxPayout,
        uint _fee,
        uint _maxDebt,
        uint _initialDebt
    ) external onlyOwner() {
        terms = Terms ({
            controlVariable: _controlVariable,
            vestingTerm: _vestingTerm,
            minimumPrice: _minimumPrice,
            maxPayout: _maxPayout,
            fee: _fee,
            maxDebt: _maxDebt
        });
        totalDebt = _initialDebt;
        lastDecay = block.number;
    }
    
    /* ======== POLICY FUNCTIONS ======== */
    enum PARAMETER { VESTING, PAYOUT, FEE, DEBT, MINPRICE, BCV }
    /**
     *  @notice set parameters for new bonds
     *  @param _parameter PARAMETER
     *  @param _input uint
     */
    function setBondTerms ( PARAMETER _parameter, uint _input ) external onlyOwner() {
        if ( _parameter == PARAMETER.VESTING ) { // 0
            require( _input >= 10000, "Vesting must be longer than 36 hours" );
            terms.vestingTerm = _input;
        } else if ( _parameter == PARAMETER.PAYOUT ) { // 1
            require( _input <= 1000, "Payout cannot be above 1 percent" );
            terms.maxPayout = _input;
        } else if ( _parameter == PARAMETER.FEE ) { // 2
            require( _input <= 10000, "DAO fee cannot exceed payout" );
            terms.fee = _input;
        } else if ( _parameter == PARAMETER.DEBT ) { // 3
            terms.maxDebt = _input;
        } else if ( _parameter == PARAMETER.MINPRICE ) { // 4
            terms.minimumPrice = _input;
        } else if ( _parameter == PARAMETER.BCV ) { // 5
            terms.controlVariable = _input;
        }
    }

    /**
     *  @notice set control variable adjustment
     *  @param _addition bool
     *  @param _increment uint
     *  @param _target uint
     *  @param _buffer uint
     */
    function setAdjustment (
        bool _addition,
        uint _increment, 
        uint _target,
        uint _buffer 
    ) external onlyOwner() {
        adjustment = Adjust({
            add: _addition,
            rate: _increment,
            target: _target,
            buffer: _buffer,
            lastBlock: block.number
        });
    }
    
    /**
     *  @notice set contract for auto stake
     *  @param _manager address
     */
    function setStaking(address _manager) external onlyOwner() {
        require(_manager != address(0) );
        staking = _manager;
    }

    /* ======== USER FUNCTIONS ======== */
    /**
     *  @notice deposit bond
     *  @param _amount uint
     *  @param _maxPrice uint
     *  @param _depositor address
     *  @return uint
     */
    function deposit( 
        uint _amount, 
        uint _maxPrice,
        address _depositor
    ) external returns ( uint ) {
        require( _depositor != address(0), "Invalid address" );

        decayDebt();
        require( totalDebt <= terms.maxDebt, "Max capacity reached" );
        
        uint priceInUSD = bondPriceInUSD(); // Stored in bond info
        //uint nativePrice = _bondPrice();

        require( _maxPrice >= _bondPrice(), "Slippage limit: more than max price" ); // slippage protection

        uint value = ITreasury( treasury ).tokenValue( principle, _amount );
        uint payout = payoutFor( value ); // payout to bonder is computed

        require( payout >= 10000000, "Bond too small" ); // must be > 0.01 HUMP ( underflow protection )
        require( payout <= maxPayout(), "Bond too large"); // size protection because there is no slippage

        // profits are calculated
        uint fee = payout.mul( terms.fee ).div( 10000 );
        uint profit = value.sub( payout ).sub( fee );

        /**
            principle is transferred in
            approved and
            deposited into the treasury, returning (_amount - profit) HUMP
         */
        IERC20( principle ).safeTransferFrom( msg.sender, address(this), _amount );
        IERC20( principle ).approve( address( treasury ), _amount );
        ITreasury( treasury ).deposit( _amount, principle, profit );
        
        totalPrinciple=totalPrinciple.add(_amount);
        
        if ( fee != 0 ) { // fee is transferred to dao 
            IERC20(HUMP).safeTransfer( DAO, fee ); 
        }
        
        // total debt is increased
        totalDebt = totalDebt.add( value ); 
        //TODO
        //uint stakeAmount = totalBond.sub(fee);
        
        IERC20(HUMP).approve( staking, payout );

        IStaking(staking).stake(address(this), payout, false);
        /* ---------------------------------------------------------- */
        
        uint stakeGons = IsHUMP(sHUMP).gonsForBalance(payout);

        // depositor info is stored
        _bondInfo[ _depositor ] = Bond({ 
            gonsPayout: _bondInfo[ _depositor ].gonsPayout.add( stakeGons ),
            humpPayout: _bondInfo[ _depositor ].humpPayout.add( payout ),
            vesting: terms.vestingTerm,
            lastBlock: block.number,
            pricePaid: priceInUSD
        });

        // indexed events are emitted
        emit BondCreated( _amount, payout, block.number.add( terms.vestingTerm ), priceInUSD );
        emit BondPriceChanged( bondPriceInUSD(), _bondPrice(), debtRatio() );

        adjust(); // control variable is adjusted
        return payout; 
    }

    /** 
     *  @notice redeem bond for user, keep the parameter bool _stake for compatibility of redeem helper
     *  @param _recipient address
     *  @param _stake bool
     *  @return uint
     */ 
    function redeem( address _recipient, bool _stake) external returns ( uint ) {        
        Bond memory info = _bondInfo[ _recipient ];
        uint percentVested = percentVestedFor( _recipient ); // (blocks since last interaction / vesting term remaining)

        require ( percentVested >= 10000 ,"not yet fully vested") ; // if fully vested

        IStaking(staking).claim( address(this) );
                
        delete _bondInfo[ _recipient ]; // delete user info
        uint _amount = IsHUMP(sHUMP).balanceForGons(info.gonsPayout);
        emit BondRedeemed( _recipient, _amount, 0 ); // emit bond data
        IERC20(sHUMP).transfer( _recipient, _amount ); // pay user everything due
        return _amount;
    }

    /* ======== INTERNAL HELPER FUNCTIONS ======== */

    /**
     *  @notice makes incremental adjustment to control variable
     */
    function adjust() internal {
        uint blockCanAdjust = adjustment.lastBlock.add( adjustment.buffer );
        if( adjustment.rate != 0 && block.number >= blockCanAdjust ) {
            uint initial = terms.controlVariable;
            if ( adjustment.add ) {
                terms.controlVariable = terms.controlVariable.add( adjustment.rate );
                if ( terms.controlVariable >= adjustment.target ) {
                    adjustment.rate = 0;
                }
            } else {
                terms.controlVariable = terms.controlVariable.sub( adjustment.rate );
                if ( terms.controlVariable <= adjustment.target ) {
                    adjustment.rate = 0;
                }
            }
            adjustment.lastBlock = block.number;
            emit ControlVariableAdjustment( initial, terms.controlVariable, adjustment.rate, adjustment.add );
        }
    }

    /**
     *  @notice reduce total debt
     */
    function decayDebt() internal {
        totalDebt = totalDebt.sub( debtDecay() );
        lastDecay = block.number;
    }

    function setBackingCalculator(address _backingCalculator) external onlyOwner{
        require(address(0) != _backingCalculator);
        backingCalculator = IBackingCalculator(_backingCalculator);
    }

    function setPrincipleDecimals(uint8 _principleDecimals) external onlyOwner{
        require(_principleDecimals != 0);
        principleDecimals = _principleDecimals;
    }

    /* ======== VIEW FUNCTIONS ======== */

    /**
     *  @notice determine maximum bond size
     *  @return uint
     */
    function maxPayout() public view returns ( uint ) {
        return IERC20(HUMP).totalSupply().mul( terms.maxPayout ).div( 100000 );
    }

    /**
     *  @notice calculate interest due for new bond
     *  @param _value uint
     *  @return uint
     */
    function payoutFor( uint _value ) public view returns ( uint ) {
        return FixedPoint.fraction( _value, bondPrice() ).decode112with18().div( 1e14 );
    }

    /**
     *  @notice calculate current bond premium
     *  @return price_ uint
     */
    function bondPrice() public view returns ( uint price_ ) {        
        price_ = terms.controlVariable.mul( debtRatio() ).add( 1000000000 ).div( 1e5 );
        if ( price_ < terms.minimumPrice ) {
            price_ = terms.minimumPrice;
        }
        uint bph = backingCalculator.treasuryBacking(); //1e4
        uint nativeBph = toNativePrice(bph); //1e4
        if ( price_ < nativeBph ) {
            price_ = nativeBph.mul(uint(100).add(backingCalculator.premium())).div(100);
        }
    }

    function toNativePrice(uint _bph) public view returns (uint _nativeBph){
        if(isLiquidityBond) {
            _nativeBph = _bph.mul(10**principleDecimals).div(IBondingCalculator( bondCalculator ).markdown( principle ));
        }
        else {
            _nativeBph=_bph;
        }
    }

    /**
     *  @notice calculate current bond price and remove floor if above
     *  @return price_ uint
     */
    function _bondPrice() internal returns ( uint price_ ) {
        price_ = terms.controlVariable.mul( debtRatio() ).add( 1000000000 ).div( 1e5 );
        if ( price_ < terms.minimumPrice ) {
            price_ = terms.minimumPrice;        
        } else if ( terms.minimumPrice != 0 ) {
            terms.minimumPrice = 0;
        }
        uint bph = backingCalculator.treasuryBacking();//1e4
        uint nativeBph = toNativePrice(bph);//1e4
        if ( price_ < nativeBph ) {
            price_ = nativeBph.mul(uint(100).add(backingCalculator.premium())).div(100);
        }
    }

    /**
     *  @notice converts bond price to USD value
     *  @return price_ uint
     */
    function bondPriceInUSD() public view returns ( uint price_ ) {
        if( isLiquidityBond ) {
            price_ = bondPrice().mul( IBondingCalculator( bondCalculator ).markdown( principle ) ).div( 1e4 );
        } else {
            price_ = bondPrice().mul( 10 ** IERC20Metadata( principle ).decimals() ).div( 1e4 );
        }
    }
    
    /**
     *  @notice return bond info with latest sHUMP balance calculated from gons
     *  @param _depositor address
     *  @return payout uint
     *  @return vesting uint
     *  @return lastBlock uint
     *  @return pricePaid uint
     */
    function bondInfo(address _depositor) 
    public view returns (uint payout, uint vesting, uint lastBlock, uint pricePaid) {
        Bond memory info = _bondInfo[ _depositor ];
        payout = IsHUMP(sHUMP).balanceForGons(info.gonsPayout);
        vesting = info.vesting;
        lastBlock = info.lastBlock;
        pricePaid = info.pricePaid;
    }


    /**
     *  @notice calculate current ratio of debt to HUMP supply
     *  @return debtRatio_ uint
     */
    function debtRatio() public view returns ( uint debtRatio_ ) {   
        uint supply = IERC20(HUMP).totalSupply();
        debtRatio_ = FixedPoint.fraction( 
            currentDebt().mul( 1e9 ), 
            supply
        ).decode112with18().div( 1e18 );
    }

    /**
     *  @notice debt ratio in same terms for reserve or liquidity bonds
     *  @return uint
     */
    function standardizedDebtRatio() external view returns ( uint ) {
        if ( isLiquidityBond ) {
            return debtRatio().mul( IBondingCalculator( bondCalculator ).markdown( principle ) ).div( 1e9 );
        } else {
            return debtRatio();
        }
    }

    /**
     *  @notice calculate debt factoring in decay
     *  @return uint
     */
    function currentDebt() public view returns ( uint ) {
        return totalDebt.sub( debtDecay() );
    }

    /**
     *  @notice amount to decay total debt by
     *  @return decay_ uint
     */
    function debtDecay() public view returns ( uint decay_ ) {
        uint blocksSinceLast = block.number.sub( lastDecay );
        decay_ = totalDebt.mul( blocksSinceLast ).div( terms.vestingTerm );
        if ( decay_ > totalDebt ) {
            decay_ = totalDebt;
        }
    }


    /**
     *  @notice calculate how far into vesting a depositor is
     *  @param _depositor address
     *  @return percentVested_ uint
     */
    function percentVestedFor( address _depositor ) public view returns ( uint percentVested_ ) {
        Bond memory bond = _bondInfo[ _depositor ];
        uint blocksSinceLast = block.number.sub( bond.lastBlock );
        uint vesting = bond.vesting;

        if ( vesting > 0 ) {
            percentVested_ = blocksSinceLast.mul( 10000 ).div( vesting );
        } else {
            percentVested_ = 0;
        }
    }

    /**
     *  @notice calculate amount of HUMP available for claim by depositor
     *  @param _depositor address
     *  @return pendingPayout_ uint
     */
    function pendingPayoutFor( address _depositor ) external view returns ( uint pendingPayout_ ) {
        uint percentVested = percentVestedFor( _depositor );
        uint payout = IsHUMP(sHUMP).balanceForGons(_bondInfo[ _depositor ].gonsPayout);

        if ( percentVested >= 10000 ) {
            pendingPayout_ = payout;
        } else {
            pendingPayout_ = 0;
        }
    }
    
    /**
     *  @notice show the name of current bond
     *  @return _name string
     */
    function name() public view returns (string memory _name) {
        return name_;
    }

    /* ======= AUXILLIARY ======= */

    /**
     *  @notice allow anyone to send lost tokens (excluding principle or HUMP) to the DAO
     *  @return bool
     */
    function recoverLostToken( address _token ) external returns ( bool ) {
        require( _token != HUMP );
        require( _token != sHUMP );
        require( _token != principle );
        IERC20( _token ).safeTransfer( DAO, IERC20( _token ).balanceOf( address(this) ) );
        return true;
    }
}