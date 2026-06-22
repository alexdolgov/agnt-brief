// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./core/interfaces/IDex.sol";
import "./core/DividendDistributor.sol";


contract Manarium is ERC20, Ownable
{
    using SafeMath for uint256;
    using Address for address;

    // BNB MAINNET: 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c
    address constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    
    uint256 constant public PRIZE_POOL_FEES = 10; // 1%
    uint256 constant public DISTRIBUTION_FEES = 5; // 0.5%
    uint256 constant public DEVELOPMENT_FEES = 5; // 0.5%
    uint256 constant public TOTAL_FEES = 20; // 2%
    uint256 constant public PROCENT_DENOMINATOR = 1000; // 100%

    address constant public PRIZE_POOL_WALLET = 0x3e44881b4BC060FC3cF202b796147022Cd8e80C3;
    address constant public DEVELOPMENT_WALLET = 0x1664a715B15345C50bdd3b92Bf3EB7a4E4d39B4A;
    address constant public REFERRAL_WALLET = 0x739F3d09fF6AD00610e1D5B34B21eA8Bf4F6C125;
    address constant public AIRDROP_WALLET = 0x38D457F0BAA0aa3cC6Cf0496e9eb12870a2AecdF;

    bool public feesEnabled = true;

    bool private _inSwap;    
    bool private _inAirdropTransfer;
    bool private _inReferralTransfer;

    address private _pair;
    IDEXRouter private _router;

    IDividendDistributor private _distributor;

    mapping(address => bool) private _isExcludedFromFees;
    mapping(address => bool) private _isExcludedFromDividends;
    mapping(address => bool) private _tournaments;

    uint256 public swapThreshold = 1000 * 10 ** 18; // 1000 
    
    event SendTokensForDividends(uint256 amount);
    event SendTokensForRewards(uint256 amount);
    event AirdropTransfered(uint256 amount);
    event ReferralTransfered(uint256 amount);
    event Burned(uint256 amount);

    modifier swapping() 
    {
        _inSwap = true;
        _; 
        _inSwap = false; 
    }

    modifier airdrop()
    {
        _inAirdropTransfer = true;
        _; 
        _inAirdropTransfer = false; 
    }

    modifier referral()
    {
        _inReferralTransfer = true;
        _; 
        _inReferralTransfer = false; 
    }

    receive() external payable {}

    constructor() ERC20("Manarium", "ARI"){

        // MAINNET 0x10ED43C718714eb63d5aA57B78B54704E256024E
        _router = IDEXRouter(0x10ED43C718714eb63d5aA57B78B54704E256024E); // PANCAKE SWAP
        _pair = IDEXFactory(_router.factory()).createPair(WBNB, address(this));
        _distributor = new DividendDistributor(address(_router));

        excludeFromFeesAndDividends(address(this), true);
        excludeFromFeesAndDividends(address(0), true);
        excludeFromFeesAndDividends(msg.sender, true);
        excludeFromFeesAndDividends(DEVELOPMENT_WALLET, true);
        excludeFromFeesAndDividends(REFERRAL_WALLET, true);
        excludeFromFeesAndDividends(PRIZE_POOL_WALLET, true);
        excludeFromFeesAndDividends(AIRDROP_WALLET, true);

        _isExcludedFromDividends[address(_router)] = true;
        _isExcludedFromDividends[address(_pair)] = true;

        _approve(address(this), address(_router), type(uint128).max);
        _approve(address(this), _pair, type(uint128).max);

        uint256 totalSupply = 100000000 * 10**18; // 100 000 000
        _mint(msg.sender, totalSupply);
    }

    function enableFees() external onlyOwner {
        feesEnabled = true;
    }

    function disableFees() external onlyOwner {
        feesEnabled = false;
    }

    function excludeFromFeesAndDividends(address account_, bool excluded_) public onlyOwner{
        excludeFromFees(account_, excluded_);
        excludeFromDividends(account_, excluded_);
    }

    function excludeFromFees(address account_, bool excluded_) public onlyOwner{
        _isExcludedFromFees[account_] = excluded_;
    }

    function excludeFromDividends(address account_, bool excluded_) public onlyOwner{
        _isExcludedFromDividends[account_] = excluded_; 
    }

    function isExcludedFromFees(address account_) external view returns(bool){
        return _isExcludedFromFees[account_];
    }

    function isExcludedFromDividends(address account_) external view returns(bool){
        return _isExcludedFromDividends[account_];
    }

    function registerTournament(address tournament) external onlyOwner {
        require(tournament.isContract());
        require(!_tournaments[tournament]);
        _tournaments[tournament] = true;
        excludeFromFeesAndDividends(tournament, true);
    }

    function unregisterTournament(address tournament) external onlyOwner{
        require(_tournaments[tournament]);
        _tournaments[tournament] = false;
        excludeFromFeesAndDividends(tournament, false);
    }

    function updateRouter(address newAddress) public onlyOwner {
        require(newAddress != address(_router), "The router already has that address");
        _router = IDEXRouter(newAddress);
        _pair = IDEXFactory(_router.factory()).createPair(WBNB, address(this));
        
        _isExcludedFromDividends[_pair] = true;
        _isExcludedFromDividends[address(_router)] = true;
    }

    function updateDividendContract(address _contract) public onlyOwner{
        require(_contract != address(_distributor), "The dividend already has that address");
        _distributor = new DividendDistributor(address(_contract));
    }

    function airdropTransfer(address[] memory receivers, uint256[] memory amounts) public onlyOwner airdrop  
    {
        require(receivers.length > 0 && amounts.length > 0);
        require(receivers.length == amounts.length, 'Receivers length not equals amounts');

        uint256 amount = 0;
        for(uint256 index = 0; index < receivers.length; index++)
        {
            require(amounts[index] <= balanceOf(AIRDROP_WALLET));
            _transfer(AIRDROP_WALLET, receivers[index], amounts[index]);
            amount = amount.add(amounts[index]);
        }

        emit AirdropTransfered(amount);
    }

    function referralTransfer(address receiver, uint256 amount) public onlyOwner referral
    {
        require(amount > 0);
        require(balanceOf(REFERRAL_WALLET) >= amount);
        _transfer(REFERRAL_WALLET, receiver, amount);
        
        emit ReferralTransfered(amount);
    }

    function burn(uint256 amount) external{
        require(msg.sender == owner() || _tournaments[msg.sender], "Burn can only owner or tournaments");
        require(amount <= balanceOf(msg.sender));
        
        _burn(msg.sender, amount);
        emit Burned(amount);
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public override returns (bool) {

        // Tokens from the Prize Pool Wallet do not require approve. 
        // They can only be used by tournament contracts (check on _transfer)
        if(sender == PRIZE_POOL_WALLET) {
            _transfer(sender, recipient, amount);
            return true;
        }
        
        // Tokens do not require approve to enter the tournament.
        // Only tournament contract 
        if(_tournaments[recipient] && _tournaments[msg.sender]){
            _transfer(sender, recipient, amount);
            return true;
        }

        return super.transferFrom(sender, recipient, amount);
    } 

    function _transfer(
        address sender,
        address recipient,
        uint256 amount)
    internal override {
        if(sender == AIRDROP_WALLET) require(_inAirdropTransfer, 'Tokens from AIRDROP_WALLET can sends only for special function.');   
        else if(sender == REFERRAL_WALLET) require(_inReferralTransfer, 'Tokens from REFERRAL_WALLET can sends only for special function.');   
        else if(sender == PRIZE_POOL_WALLET) require(_tournaments[msg.sender], 'Tokens from PRIZE_POOL_WALLET can sends only from tournaments.');

        if(shouldTakeFee(sender, recipient))
            amount = takeFee(sender, amount);

        if(shouldSwapBack())
            swapBack();

        super._transfer(sender, recipient, amount);
        
        if(!_isExcludedFromDividends[sender]){ try _distributor.setShare(sender, balanceOf(sender)) {} catch {} }
        if(!_isExcludedFromDividends[recipient]){ try _distributor.setShare(recipient, balanceOf(recipient)) {} catch {} }
    }

    function shouldTakeFee( address sender, address recipient) internal view returns(bool){
        return feesEnabled && !_isExcludedFromFees[sender] && !_isExcludedFromFees[recipient];
    }

    function takeFee(address sender, uint256 amount) internal returns (uint256) {
        uint256 _amountFee = amount.mul(TOTAL_FEES).div(PROCENT_DENOMINATOR);
        super._transfer(sender, address(this), _amountFee);
        return amount.sub(_amountFee);
    }

    function shouldSwapBack() internal view returns (bool) {
        return msg.sender != _pair
               && !_inSwap
               && !_inAirdropTransfer
               && !_inReferralTransfer
               && !_tournaments[msg.sender]
               && balanceOf(address(this)) >= swapThreshold;
    }

    function swapBack() internal swapping {
        
        uint256 amount = balanceOf(address(this));
        uint256 prizePoolAmount = amount.mul(PRIZE_POOL_FEES).div(TOTAL_FEES);
        
        uint256 amountBNB = swapTokens(amount.sub(prizePoolAmount));
        uint256 developmentAmount = amountBNB.mul(DEVELOPMENT_FEES).div(TOTAL_FEES.sub(PRIZE_POOL_FEES));
        uint256 distributionAmount = amountBNB.sub(developmentAmount);

        sendToDevelopment(developmentAmount);
        sendToDistribution(distributionAmount);
        sendToPrizePool(prizePoolAmount);
    }

    function swapTokens(uint256 amount) private returns (uint256)
    {
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = WBNB;

        _router.swapExactTokensForETHSupportingFeeOnTransferTokens(
            amount,
            0,
            path,
            address(this),
            block.timestamp
        );

        uint256 amountBNB = address(this).balance;
        return amountBNB;
    }

    function sendToDevelopment(uint256 amount) private returns (bool){
        (bool success, ) = payable(DEVELOPMENT_WALLET).call{value: amount, gas: 30000}("");
        return success;
    }

    function sendToDistribution(uint256 amount) private{
        try _distributor.deposit{value: amount}() {} catch {}
        emit SendTokensForDividends(amount);
    }
    
    function sendToPrizePool(uint256 amount) private {
        _transfer(address(this), PRIZE_POOL_WALLET, amount);
        emit SendTokensForRewards(amount);
    }

    function setSwapBackSettings(uint256 _amount) external onlyOwner {
        swapThreshold = _amount;
    }

    function setDividendToken(address _dividendToken) external onlyOwner{
        _distributor.setDividendToken(_dividendToken);
    }

    function claimDividend() external {
        _distributor.claimDividend(msg.sender);
    }
    
    function getUnpaidEarnings(address shareholder) external view returns (uint256) {
        return _distributor.getUnpaidEarnings(shareholder);
    }

    function getRealisedEarnings(address shareholder) external view returns (uint256) {
        return _distributor.getRealisedEarnings(shareholder);
    }

}