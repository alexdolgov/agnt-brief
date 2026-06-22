// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./core/OwnerPausable.sol";

contract ManariumSale is Ownable, OwnerPausable
{
    using SafeMath for uint256;

    struct Beneficiary
    {
        uint256 deposited;
        uint256 claimed;
    }

    uint256 public tokensAmount = 5000000 * 10**18; // 5 000 000 
    uint256 public hardCap = 200 * 10**18; // 200 bnb
    uint256 public minContribution = 1 * 10**17; // 0.1 bnb
    uint256 public maxContribution = 2 * 10**18;  // 2 bnb
    
    uint256 public tokensPerBNB; 
    uint256 public receivedAmount;

    uint256[] private _unlockTimeStamp; // timestamp when unlock
    uint256 constant public vestingPeriod = 30 days; 
    uint16 constant public vestingUnlockProcent = 1025; // 10.25%
    uint16 constant public listingUnlockProcent = 1800; // 18%
    uint16 constant public maxProcent = 10000; //100%

    bool public whiteListEnabled = true;
    bool public finilized = false;

    uint256 private _finilizedTime;
    bool private _notPurchasedTokenClaimed = false;

    mapping(address => bool) private whiteList;
    mapping(address => Beneficiary) private _beneficiary;

    IERC20 public token;

    event StartPresale();
    event Finilized();
    event Claimed(uint256 amount, address indexed sender );
    event Deposited(uint256 amount, uint256 deposited, address indexed sender); 

    constructor( address token_ )
    {
        token = IERC20(token_);
        tokensPerBNB = tokensAmount.div(hardCap);
        _pause();
    }

    function depositedFrom(address owner) public view returns(uint256){
        return _beneficiary[owner].deposited;
    }

    function beneficiaryTokenAmount(address owner) public view returns(uint256){
        return tokensPerBNB.mul(depositedFrom(owner));
    }

    function beneficiaryClaimed(address owner) public view returns(uint256){
        return  _beneficiary[owner].claimed;
    }

    function availableToClaim(address owner) public view returns(uint256){
        uint256 tokens = calculateWithdrawTokens(owner);
        return tokens.sub(beneficiaryClaimed(owner));
    }

    function saleStarted() public view returns(bool){
        return !paused() && !finilized;
    }

    function saleFinilized() public view returns(bool){
        return finilized;
    }

    function getUnlockTimeStamp() public view returns(uint256[] memory){
        return _unlockTimeStamp;
    }

    // PRESALE DETAILS
    function startPresale() external onlyOwner{
        require(!saleStarted());
        _unpause();
        emit StartPresale();
    }

    // PAUSE PRESALE 
    function pausePresale() external onlyOwner{
        _pause();
    }

    function finilize() external onlyOwner{
        require(!saleFinilized(), 'Already finilized');
        
        finilized = true;
        _finilizedTime = block.timestamp;
        _pause();
        
        uint16 procent = listingUnlockProcent;
        uint256 nextUnlock = _finilizedTime;
        while(procent < maxProcent) 
        {
            nextUnlock = nextUnlock.add(vestingPeriod);
            _unlockTimeStamp.push(nextUnlock); // Add all unlock timestamp
            procent += vestingUnlockProcent;
        }

        emit Finilized();
    }

    function updateTokenContract(address contract_) external onlyOwner{
        require(!saleFinilized());
        require(address(token) != contract_);
        token = IERC20(contract_);
    }

    function updateTokensAmount(uint256 value) external onlyOwner{
        require(!saleFinilized());
        require(value > 0);
        require(tokensAmount != value);
        
        tokensAmount = value;
        updateTokenPerBNB();
    }

    function updateMaxContribution(uint256 value) external onlyOwner{
        require(!saleFinilized());
        require(value > 0);
        require(receivedAmount == 0);
        require(maxContribution != value);
        
        maxContribution = value;
    }

    function updateMinContribution(uint256 value) external onlyOwner{
        require(!saleFinilized());
        require(value > 0);
        require(receivedAmount == 0);
        require(minContribution != value);
        
        minContribution = value;
    }

    function updateHardCap(uint256 value) external onlyOwner{
        require(!saleFinilized());
        require(value > 0);
        require(value > receivedAmount);
        require(hardCap != value);

        hardCap = value;
        updateTokenPerBNB();
    }

    function updateTokenPerBNB() private {
        tokensPerBNB = tokensAmount.div(hardCap);
    }
  
    // WHITE LIST FUNCTIONS
    function changeWhiteListState(bool state) external onlyOwner{
        require(whiteListEnabled != state);
        whiteListEnabled = state;
    }

    function addToWhiteList(address[] memory addresses) external onlyOwner{
        require(whiteListEnabled, 'Whitelist is not enabled.');
        require(addresses.length > 0);
        for(uint index = 0; index < addresses.length; index++){
            whiteList[addresses[index]] = true;
        }
    }

    function removeFromWhiteList(address addresses) external onlyOwner{
        require(whiteList[addresses]);
        whiteList[addresses] = false;
    }

    function whitelistedAddress(address owner) public view returns(bool isWhitelisted){
        return whiteList[owner];
    }


    // PRESALE FUNCTIONS
    function deposit() external payable returns(bool success){
        require(saleStarted());
        require(!saleFinilized());
        require(msg.value > 0);
        require(receivedAmount.add( msg.value ) <= hardCap, 'Received Amount cannot be greater then Hard Cap.');

        if(whiteListEnabled) 
            require(whitelistedAddress(msg.sender), 'Whitelist hasn`t this address. ');

        address sender = msg.sender;
        uint256 value = msg.value;

        Beneficiary storage beneficiary = _beneficiary[sender];
        uint256 amount = beneficiary.deposited.add(value);
        
        require(amount >= minContribution && amount <= maxContribution, 'The contribution must be greater than minContribution and less then maxContribution.');

        beneficiary.deposited = amount;
        receivedAmount = receivedAmount.add(value);

        emit Deposited(receivedAmount, value, sender);
        return true;
    }

    function reclaimTokens() external returns(bool success){
        require(saleFinilized(), 'Private sale is not finilaze');

        address sender = msg.sender;
        Beneficiary storage beneficiary = _beneficiary[sender];
        require(beneficiary.deposited > 0 ,'This address did not feel in the presale.');

        uint256 tokens = calculateWithdrawTokens(sender);
        tokens = tokens.sub(beneficiary.claimed);
        require(tokens > 0, "No Tokens Available.");

        beneficiary.claimed = beneficiary.claimed.add(tokens);
        token.transfer(sender, tokens);
        
        emit Claimed(tokens, sender);
        return true;
    }

    function calculateWithdrawTokens(address sender) private view returns (uint256)
    {
        if(!saleFinilized())
            return 0;

        Beneficiary storage beneficiary = _beneficiary[sender];
        if(beneficiary.deposited == 0)
            return 0;

        uint256 allTokens = tokensPerBNB.mul(beneficiary.deposited); // All tokens for beneficiary
        uint256 withdraw = allTokens.mul(listingUnlockProcent).div(maxProcent); // TGE unlock tokens

        for(uint8 i = 0; i < _unlockTimeStamp.length; i++){
             if(block.timestamp < _unlockTimeStamp[i])
                break; 

             withdraw = withdraw.add(allTokens.mul(vestingUnlockProcent).div(maxProcent));
        }

        return withdraw;
    }

    function reclaimNotPurchasedTokens() external onlyOwner{
        require(saleFinilized(), 'Private sale is not finilaze');
        require(receivedAmount < hardCap, 'All tokens purchased');
        require(!_notPurchasedTokenClaimed, 'Tokens already claimed');

        uint256 leftBNB = hardCap.sub(receivedAmount);
        uint256 leftTokens = tokensPerBNB.mul(leftBNB);
            
        _notPurchasedTokenClaimed = true;
        token.transfer(owner(), leftTokens);
    }

    function reclaimEther() external onlyOwner {
        assert( payable(owner()).send( address(this).balance ));
    }

}