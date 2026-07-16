// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.4;

/*                                                                    
   DIGITAL ASSET MORTGAGES FOR EVERYONE
   CLIMB THE DIGITAL PROPERTY LADDER
                                                 .@@.                           
                                              @@@@@@.                           
                                          @@@@@@@@@@.                           
                          @@@@@       .@@@@@@@@@@@@@.                           
                          @@@@@    @@@@@@@@@@@@@@@@@.                           
                          @@@@@         @@         @.                           
                          @@&    @@        #@@      .                           
                               @@@@@@     @@@@@@                                
                               @@@@@@     @@@@@@                                
                               @@@@@@     @@@@@@                                
                               @@@@@@     @@@@@@                                
                          @@@@@@@@@@@@@@@@@@@@@@@@@@.                           
                          @@@@@@@@@@@@@@@@@@@@@@@@@@.                           
                          @@@@@@@@@@@@@@@@@@@@@@@@@@.   
    mortgagefi
*/
 
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Multicall} from "@openzeppelin/contracts/utils/Multicall.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20} from "./ERC20.sol";

contract mortgagefiusdccbbtcupgraded is ERC20, Multicall, AccessControl {

    using SafeERC20 for IERC20;

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN");
    mapping(address => uint256)public mySizeWaitingForExit;
    IERC20 public stablecoin;
    IERC20 public contractCoin;
    address public rewardsCoin;
    uint256 public inExitLine;
    uint256 public minimumContractSize;
    uint256 public stablesInContracts; // in stablecoins
    uint256 public convertedCoins; // in stablecoins
    uint256 public coinsInContracts; // in contract coin
    uint256 public buffer;
    uint256 public lastYieldInteraction;
    uint256 public earlyrepayMultiplier;
    address public conversionVault;
    address public contracts;
    address public feeReceiver;
    address public CLoracle;
    bool public byobEnabled;

    // allocation logic for depositors
    uint256 public pointMultiplier = 10e18;
    uint256 public totalPoints;
    uint256 public unclaimed;
    mapping(address => uint256) public lastPoints;
    mapping(address => uint256)public claimable;
    mapping(address => address)public yieldOverwrite;

    // contracts logics
    mapping(uint256 => uint256)public  expiration;
    mapping(uint256 => uint256)public  startDate;
    mapping(uint256 => uint256)public  coinSize;
    mapping(uint256 => uint256)public  feeSize;
    mapping(uint256 => uint256)public  baseSize;
    mapping(uint256 => uint256)public  amountPaid;

    // registry
    mapping(address => bool) public isRegistered;
    mapping(uint256 => address) public registry;
    uint256 public registryIndex;

    function Owing(address _depositor) public view returns(uint256) {
        uint256 newPoints = totalPoints - lastPoints[_depositor];
        uint256 weight = balanceOf[_depositor];
        return (weight * newPoints) / pointMultiplier;
    }

    modifier fetch(address _depositor) {
        uint256 owing = Owing(_depositor);
        if (owing > 0) {
            unclaimed = unclaimed - owing;
            claimable[_depositor] += owing; // _mint(_depositor, owing);
            if(yieldOverwrite[_depositor] != address(0x0)){
                claimable[_depositor] -= owing;
                claimable[yieldOverwrite[_depositor]] += owing;
            }
        }
        lastPoints[_depositor] = totalPoints;
        _;
    }

    modifier giveYield() {
        // lazy send to conversion to give predictable flow
        uint256 myBalance = stablecoin.balanceOf(address(this));
        if(myBalance > inExitLine){
            // do it
            uint256 _delta = myBalance - inExitLine;
            uint256 _tosend = _delta;
            if(block.timestamp - lastYieldInteraction <= 1 days){
                _tosend = _delta* (block.timestamp - lastYieldInteraction)/1 days;
            }
            stablecoin.safeTransfer(conversionVault, _tosend);
        }
        // yield it
        if(buffer > 0){
            // calculate size
            uint256 _size;
            if(block.timestamp - lastYieldInteraction > 30 days){
                _size = buffer;
                buffer = 0;
            }
            if(block.timestamp - lastYieldInteraction <= 30 days){
                _size = buffer* (block.timestamp - lastYieldInteraction)/30 days;
                buffer -= _size;
            }
        
        totalPoints = totalPoints + (_size * pointMultiplier / totalSupply);
        unclaimed += _size;
        }
        lastYieldInteraction = block.timestamp;
        _;
    }

    constructor(
        IERC20 _stablecoin, 
        IERC20 _contractcoin,
        address _rewardsCoin, 
        address _contracts,
        string memory _name,
        string memory _symbol)ERC20(_name, _symbol, ERC20(address(_stablecoin)).decimals()) {
        _setupRole(ADMIN_ROLE, _msgSender());
        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);
        stablecoin = _stablecoin;
        contractCoin = _contractcoin;
        contracts = _contracts;
        rewardsCoin = _rewardsCoin;
        minimumContractSize = 1000;
        CLoracle = address(0x64c911996D3c6aC71f9b455B1E8E7266BcbD848F);//base btc usd address
        earlyrepayMultiplier = 2;
        byobEnabled = true;
    }

    function deposit(address receiver,uint256 amount)giveYield()fetch(receiver) external {
        register(msg.sender);
        // transfer in stables
        stablecoin.safeTransferFrom(msg.sender,address(this),amount);
        // mint tokens
        _mint(receiver, amount);
    }
    function burnToGetOutInLine(uint256 amount)giveYield()fetch(msg.sender) onlyRole(ADMIN_ROLE) external {
        // get in line to exit the protocol
        // burn shares
        _burn(msg.sender,amount);
        // add to size
        mySizeWaitingForExit[msg.sender] += amount;
        inExitLine += amount;
    }

    function fromLineToWallet(uint256 size)giveYield() external {
        // when there is availabillity exit with funds from the line 
        mySizeWaitingForExit[msg.sender] -= size;
        inExitLine -= size;
        stablecoin.safeTransfer(msg.sender, size);
    }
    function claimFor(address receiver)giveYield() fetch(receiver) public {
        // payout addresses yield
        uint256 size = claimable[receiver];
        claimable[receiver] = 0;
        _mint(receiver, size);
    }
    function claim() giveYield() fetch(msg.sender) external {
        // payout your yield
        uint256 size = claimable[msg.sender];
        claimable[msg.sender] = 0;
        _mint(msg.sender, size);
    }
    function setOverwrite(address who, address receiver)onlyRole(ADMIN_ROLE) external {
        // set address to overwrite the receiver of the yield (dexes,etc) 
        yieldOverwrite[who] = receiver;
    }
    function setEarlyrepayMultiplier(uint256 amount)onlyRole(ADMIN_ROLE) external {
        // 
        require(amount <= 15,"fees to high"); 
        earlyrepayMultiplier = amount;
    }   
    function setByob(bool flag)onlyRole(ADMIN_ROLE) external {
        // enable or disable the byob function
        byobEnabled = flag;
    }    
    

    function createContract(uint256 size, uint256 duration, uint256 maxPaymentPerMonth, address ref) giveYield() external {
        // duration in years
        require(duration >= 1 && duration <= 30,"duration mismatch" );
        // utilisation rate
        uint256 freeCoins = contractCoin.balanceOf(address(this)) - coinsInContracts;
        require(size >= minimumContractSize && size <= freeCoins,"reserves mismatch" );
        
        // unutilised supply marks the price
        uint256 stables = convertedCoins - stablesInContracts;
        // determine own coins for deposit required
        uint256 ownCoins =  size/50;
        if(duration <= 24){ownCoins = size - size*4*duration/100;}
        if(duration <= 12){ownCoins = size/2;}
        if(ownCoins<2000){ownCoins = 2000;}
        
        uint256 utilisationAfterSize = (size + coinsInContracts)*10000/contractCoin.balanceOf(address(this));//in 10000 points
        // transfer in deposit
        contractCoin.safeTransferFrom(msg.sender, address(this), ownCoins);
        // add to in contracts
        coinsInContracts += ownCoins;
        // calculate premium
        require(utilisationAfterSize <= 10000,"utilisation protection <= 100%");
        uint256 fees;
        if(utilisationAfterSize < 9500){
            fees = size * stables*(7*9500+11*utilisationAfterSize)/(9500*(freeCoins)*100);
        }
        if(utilisationAfterSize >= 9500){
            fees = size * stables*(7*9500+11*utilisationAfterSize)/(9500*(freeCoins)*100)+size * stables*(utilisationAfterSize-9500)*1000/(freeCoins*1000*610);        
            }
        fees = fees*duration; // each year is fees
        // update pool utilisation
        stablesInContracts += stables * size/freeCoins;
        // size to in contracts
        coinsInContracts += size;
         // check price vs maxprice 
        uint256 _paymentPerMonth = (stables* size/freeCoins + fees)/(duration* 12);
        require(_paymentPerMonth <= maxPaymentPerMonth,"max payment mismatch");
        // set contract details
        uint256 _nftID = INFT(contracts).mint(msg.sender);
        // mint the contract update ID
        expiration[_nftID] = block.timestamp + duration * 365 days;
        startDate[_nftID] = block.timestamp;
        coinSize[_nftID] = size + ownCoins;
        feeSize[_nftID] = fees;
        baseSize[_nftID] = stables* size/freeCoins ;
        // basic sanity check
        require(baseSize[_nftID] > 0 ,"preventing free coins" );

        IERC20Extended(rewardsCoin).mint(ref,stables*100* size/freeCoins);
    }
    function createContractByob(uint256 size, uint256 duration, uint256 maxPaymentPerMonth)  giveYield() fetch(msg.sender) external {
        // duration in years
        claimFor(feeReceiver);
        require(byobEnabled == true,"byob disabled");
        require(duration >= 1 && duration <= 30,"duration mismatch" );
        // utilisation rate
        uint256 freeCoins = contractCoin.balanceOf(address(this)) - coinsInContracts; 
        require(size >= minimumContractSize ,"size below minimum" );
        // oracle
        
        (uint256 answer) = chainlinkChecks();
        // => 8 decimals
        // vs 6 decimal stablecoin
        // normalise stables from oracle
        uint256 stables = uint256(answer) / 100;
        // swap stables below 
        // swap pricings stables / freecoins

        //stables = convertedCoins - stablesInContracts;
        // determine own coins for deposit required
        uint256 ownCoins =  size/50;
        if(duration <= 24){ownCoins = size - size*4*duration/100;}
        if(duration <= 12){ownCoins = size/2;}
        if(ownCoins<2000){ownCoins = 2000;}
        
        // calculate premium
        uint256 fees;
        
        fees = size * stables*(18)/((10**8)*100);
        fees = fees*duration; // each year is fees 
        // transfer in deposit
        contractCoin.safeTransferFrom(msg.sender, address(this), ownCoins + size);
        // add to in contracts
        coinsInContracts += ownCoins;
        // update pool utilisation
        stablesInContracts += stables * size/10**8;
        // size to in contracts
        coinsInContracts += size;
         // check price vs maxprice 
        require((stables* size/10**8 + fees)/(duration* 12) <= maxPaymentPerMonth,"max payment mismatch");
        // set contract details
        uint256 _nftID = INFT(contracts).mint(msg.sender);
        
        // mint the contract update ID
        expiration[_nftID] = block.timestamp + duration * 365 days;
        startDate[_nftID] = block.timestamp;
        coinSize[_nftID] = size + ownCoins;
        feeSize[_nftID] = fees;
        baseSize[_nftID] = stables* size/10**8;
        convertedCoins += baseSize[_nftID];
        // basic sanity check
        require(baseSize[_nftID] > 0 ,"preventing free coins" );
        // mint tokens
        _mint(msg.sender, baseSize[_nftID]);
    }

    function chainlinkChecks() internal returns(uint256 price){
        // Get the latest round data from Chainlink oracle
    (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound
    ) = ICLoracle(CLoracle).latestRoundData();
    
    // Check if the price feed is stale
    require(updatedAt > block.timestamp - 86400, "Chainlink price feed is stale"); // 24 hour staleness check
    require(answer > 0, "Oracle Fail");
    require(answeredInRound >= roundId, "Stale price round");

    // Base Mainnet Sequencer Feed address
    address sequencerFeed = 0xBCF85224fc0756B9Fa45aA7892530B47e10b6433;
    
    // Check sequencer status
    (, int256 answer2, uint256 startedAt2, , ) = ICLoracle(sequencerFeed).latestRoundData();
    
    // answer == 0: Sequencer is up
    // answer == 1: Sequencer is down
    require(answer2 == 0, "Sequencer is down");
    
    // Ensure grace period has passed after sequencer is back up
    uint256 gracePeriod = 3600; // 1 hour
    require(block.timestamp - startedAt2 >= gracePeriod, "Grace period not over");
    return(uint256(answer));
    }

    function payDownContract(uint256 _nftID, uint256 size) giveYield() fetch(feeReceiver) external {
        (uint256 outstanding, uint256 defaultAt,) = openDebt(_nftID);
        require(size <= outstanding,"size rekt");
        uint256 total = size;
        stablecoin.safeTransferFrom(msg.sender,address(this),total);
        // only the fees matter
        uint256 fees = total * feeSize[_nftID]/(baseSize[_nftID]+feeSize[_nftID]);
        amountPaid[_nftID] += size;
        // add to buffer that is fees in order for delayed minting
        uint256 _protocolTake = fees/10;
        buffer += fees - _protocolTake;
        // mint tokens that are protocol fees
        _mint(feeReceiver, _protocolTake);   
        // event
        emit payment(msg.sender,_nftID,size);     
    }
    function finishContract(uint256 _nftID) giveYield() public {
        // require ownership
        require(msg.sender == INFT(contracts).ownerOf(_nftID),"not owner");
        // check payments and burn nft, do bookkeping
        // check for things if payed down
        require(amountPaid[_nftID] >= feeSize[_nftID]+baseSize[_nftID],"payments not finished");
        // burn nft by sending to this address
        // holder of the nft = owner
        INFT(contracts).transferFrom(msg.sender, address(this),_nftID);
        // update books
        coinsInContracts -= coinSize[_nftID];
        // update books
        stablesInContracts -= baseSize[_nftID];
        // update books
        convertedCoins -= baseSize[_nftID];
        // send the moneys
        contractCoin.safeTransfer(msg.sender,coinSize[_nftID]);
    }
    function earlyRepayContractInFull(uint256 _nftID) fetch(feeReceiver) public {
        require(msg.sender == INFT(contracts).ownerOf(_nftID),"not owner");
        // do the things
        uint256 earlyFees = (baseSize[_nftID] - (amountPaid[_nftID] * baseSize[_nftID]  /(baseSize[_nftID] + feeSize[_nftID])))*earlyrepayMultiplier/100;
        uint256 totalpayment = earlyFees + baseSize[_nftID] - (amountPaid[_nftID] * baseSize[_nftID]  /(baseSize[_nftID] + feeSize[_nftID]));
        stablecoin.safeTransferFrom(msg.sender,address(this),totalpayment);
        amountPaid[_nftID] = feeSize[_nftID]+baseSize[_nftID];
        
        // fees
        uint256 _protocolTake = earlyFees/10;
        // yield allo
        buffer += earlyFees - _protocolTake;
        // mint tokens that are protocol fees
        _mint(feeReceiver, _protocolTake); 
        finishContract(_nftID);
        // event
        emit payment(msg.sender,_nftID,totalpayment);  
    }
    function defaultContract(uint256 _nftID) giveYield() public {
        (uint256 outstanding, uint256 defaultAt,) = openDebt(_nftID); 
        require(outstanding > defaultAt, "not ready to default");
        // burn it down to 0
        stablesInContracts -= baseSize[_nftID];
        coinsInContracts -= coinSize[_nftID];
        baseSize[_nftID] = 0;
        coinSize[_nftID] = 0;
    }
    function openDebt(uint256 _nftID)public view
        returns (uint256 _currentPaymentPending, uint256 _defaultAtThisSize,uint256 secondsTillLiq)
    {
        secondsTillLiq = 0;
        _currentPaymentPending = baseSize[_nftID] + feeSize[_nftID] - amountPaid[_nftID];
        if(block.timestamp < expiration[_nftID] && _currentPaymentPending > 0){
            _currentPaymentPending = (baseSize[_nftID] + feeSize[_nftID])*(block.timestamp - startDate[_nftID])/(expiration[_nftID] - startDate[_nftID]) - amountPaid[_nftID];
        }
        _defaultAtThisSize = (baseSize[_nftID] + feeSize[_nftID])* 45 days/(expiration[_nftID] - startDate[_nftID]);
        if(_currentPaymentPending  < _defaultAtThisSize){
            // fill in the gap 3888000 (45 days to secs)
            secondsTillLiq = 3888000*(_defaultAtThisSize - _currentPaymentPending)/_defaultAtThisSize;
        }
        return (_currentPaymentPending,_defaultAtThisSize,secondsTillLiq);
    }
    function simulateMonthlyPayment(uint256 size, uint256 duration)public view
        returns (uint256 _monthlyPayment,uint256 _utilisation,uint256 _rate,uint256 ownCoins,uint256 total)
    {
        uint256 freeCoins = contractCoin.balanceOf(address(this)) - coinsInContracts; 
        if(freeCoins == 0){return (0,0,0,0,0);}
        uint256 stables = convertedCoins - stablesInContracts;
        // determine own coins for deposit required
         ownCoins =  size/50;
        if(duration <= 24){ownCoins = size - size*4*duration/100;}
        if(duration <= 12){ownCoins = size/2;}
        if(ownCoins<2000){ownCoins = 2000;}
        // calculate premium
        uint256 utilisationAfterSize = (size + coinsInContracts)*10000/contractCoin.balanceOf(address(this));//in 10000 points
        uint256 fees;
        if(utilisationAfterSize < 9500){
            //fees = size*stables* utilisationAfterSize/(freeCoins *95000);
            fees = size * stables*(7*9500+11*utilisationAfterSize)/(9500*(freeCoins)*100);
        }
        if(utilisationAfterSize >= 9500){
            //fees = size * stables* utilisationAfterSize/(freeCoins *95000) + size * stables*(utilisationAfterSize - 9500)/(freeCoins*500);
        fees = size * stables*(7*9500+11*utilisationAfterSize)/(9500*(freeCoins)*100)+size * stables*(utilisationAfterSize-9500)*1000/(freeCoins*1000*610);
        }   
        uint256 _rate = fees * 10000 *freeCoins / stables / size;//

        fees = fees*duration; // each year is fees
        
        total = size*stables/freeCoins+ fees;

         // check price vs maxprice
        _monthlyPayment = (stables * size/freeCoins+ fees)/(duration*12);
        return (_monthlyPayment,utilisationAfterSize,_rate,ownCoins,total);
    }

    function freeCoins()public view
        returns (uint256 coinsAvailable,uint256 pricePerCoin)
    {
        coinsAvailable = contractCoin.balanceOf(address(this)) - coinsInContracts;
        uint256 freeCoins = contractCoin.balanceOf(address(this)) - coinsInContracts; 
        if(freeCoins == 0){return (0,0);}
        uint256 stables = convertedCoins - stablesInContracts ;//
        pricePerCoin = stables*100000000/freeCoins;
        return (coinsAvailable,pricePerCoin);
    }
    function calculateAPR()public view
        returns (uint256 apr)
    {
        apr = 0;
        if(buffer > 0){
            apr = buffer*10000*365/30/this.totalSupply();
        }
        return (apr);
    }
    function register(address _toRegister) internal  {
        if(!isRegistered[_toRegister]){
            isRegistered[_toRegister] = true;
            registry[registryIndex] = _toRegister;
            registryIndex++;
        }
    }

    function setFeeReceiver(address _feeReceiver) external onlyRole(ADMIN_ROLE) {
        //
        feeReceiver = _feeReceiver;
    }
    function setConversionVault(address _conversionVault) external onlyRole(ADMIN_ROLE) {
        //
        conversionVault = _conversionVault;
    }
    function addConvertedCoins(uint256 _size) external  {
        //
        require(msg.sender == conversionVault,"not conversion vault");
        convertedCoins += _size;
    }
    function transfer(address to, uint256 amount) public fetch(msg.sender) fetch(to) override returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public fetch(from) fetch(to) override returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    event payment(address indexed caller, uint256 indexed nftID, uint256 paymentSize);

}
interface INFT {
    function mint(address to) external  returns (uint256 _nftID);
    function transferFrom(address _from, address _to, uint256 _tokenId) external payable;
    function ownerOf(uint256 _tokenId) external view returns (address);
}
interface IERC20Extended {
    function mint(address account, uint256 amount) external;
    function burnFrom(address account, uint256 amount) external;
}
interface ICLoracle {
    function decimals() external view returns (uint8);
  function description() external view returns (string memory);
  function version() external view returns (uint256);
  function getRoundData(uint80 _roundId) external view returns (
    uint80 roundId,
    int256 answer,
    uint256 startedAt,
    uint256 updatedAt,
    uint80 answeredInRound
  );
  function latestRoundData() external view returns (
    uint80 roundId,
    int256 answer,
    uint256 startedAt,
    uint256 updatedAt,
    uint80 answeredInRound
  );
}