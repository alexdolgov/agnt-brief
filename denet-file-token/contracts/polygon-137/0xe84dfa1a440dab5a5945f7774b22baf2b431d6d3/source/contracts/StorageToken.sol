// SPDX-License-Identifier: MIT

/*
    Created by DeNet
*/

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./ERC20Unsafe.sol";


import "./interfaces/IUserStorage.sol";
import "./interfaces/IPayments.sol";
import "./interfaces/IStorageToken.sol";
import "./utils/StringNumbersConstant.sol";
import "./PoSAdmin.sol";


/**
* @dev `feeCollector` - is cotnract created for getting some fees per storage actions.
* 
*`Warning this contract is proof of concept.`
*
* `Contract` can be updated via DeNet Improvement Proposals (DIP's)
*
* ## Starting Fees
*- User Payout Fee = 10%
*- Local Transfer's - zeor or less than User Transfer Fee.
*
* ## where does the fees go:
*- 30% of fee goes to Govermance
*- 20% of fee goes to Dapp Market Fund
*- 10% of fee goes to Miners Funding 
*- 10% of fee goes to All storage Token Holders 
*- 10% of fee goes to Referal rewards 
*
*`fees can be changed via Voting by DFILE Token in future`
*/
contract feeCollector is Ownable, StringNumbersConstant, IStorageToken{
    using SafeMath for uint256;
    using SafeMath for uint16;
    
    /* 
        Fee in TB tokne works with Minting by Transaction and Payout operations
        
        Fee calcs  by amount * fee / DIV_FEE
    */
    uint16 public payout_fee = START_PAYOUT_FEE;
    uint16 public payin_fee = START_PAYIN_FEE;
    
    uint16 public mint_percent = START_MINT_PERCENT; // 45% will minted by default if user exchange TB to PairToken. 50% will charded from user.    
    uint16 public unburn_percent = START_UNBURN_PERCENT;

    address public recipient_fee = DEFAULT_FEE_COLLECTOR;
    uint256 public fee_limit = DECIMALS_18; // 1 TB 
    uint256 public fee_collected = 0;

    address public DeNetDAOWallet;

    modifier onlyDeNetDAO() {
        require(msg.sender == DeNetDAOWallet, "PoSAdmin:msg.sender != DAO");
        _;
    }

    /**
        @dev update fee collector counter, if fee collected
    */ 
    function _addFee(uint256 amount) internal  {
        require(amount > 0);
        fee_collected = fee_collected.add(amount);
    }
    
    function calc_payout_fee(uint256 amount) public  view returns(uint256){
        return amount.mul(payout_fee).div(DIV_FEE);
    }
    
    function toFeelessPayout(uint256 amount) public view returns(uint256) {
        return amount.div(DIV_FEE.add(payout_fee.mul(unburn_percent).div(DIV_FEE))).mul(DIV_FEE);
    }
    
    function changeFeeLimit(uint new_fee_limit) public override onlyDeNetDAO {
        require(new_fee_limit > 0, "fee limit = 0");
        fee_limit = new_fee_limit;
    }

    function changeMintPercent(uint16 _newMintPercent) public override onlyDeNetDAO {
        require(_newMintPercent <= DIV_FEE, "_newMintPercent > DIV_FEE");
        mint_percent = _newMintPercent;
    }

    function changeUnburnPercent(uint16 _newUnBurnPercent) public override onlyDeNetDAO {
        require(_newUnBurnPercent <= DIV_FEE, "_newMintPercent > DIV_FEE");
        unburn_percent = _newUnBurnPercent;
    }

    function changePayoutFee(uint16 new_fee) public override onlyDeNetDAO {
        require(new_fee < DIV_FEE, "StorageToken.change_payout_fee:new_fee>=DIV_FEE");
        payout_fee = new_fee;
    }

    function changePayinFee(uint16 new_fee) public override onlyDeNetDAO {
        require(new_fee < DIV_FEE, "StorageToken.change_payin_fee:new_fee>=DIV_FEE");
        payin_fee = new_fee;
    }

    function change_recipient_fee(address _new_recipient_fee) public onlyDeNetDAO {
        require(_new_recipient_fee != address(0), "StorageToken.change_recipient_fee:_new_recipient_fee=0");
        recipient_fee = _new_recipient_fee;
    }

    /* Useful Getters */
    function currentFeeLimit() public view override returns(uint) {
        return fee_limit;
    }

    function currentPayoutFee() public view override returns(uint16) {
        return payout_fee;
    }

    function currentPayinFee() public view override returns(uint16) {
        return payin_fee;
    }

    function currentMintPercent() public view override returns(uint16) {
        return mint_percent;
    }

    function currentUnburnPercent() public view override returns(uint16) {
        return unburn_percent;
    }

    function currentDivFee() public pure override returns(uint16) {
        return DIV_FEE;
    }

    
}


contract StorageToken is  ERC20, Ownable, feeCollector{
    using SafeMath for uint256;
    using SafeMath for uint16;
    
    uint256 public pairTokenBalance = DECIMALS_18*3; // 3 DAI
    address public pairTokenAddress = PAIR_TOKEN_START_ADDRESS; // Polygon DAI
    
    /**
        @dev GasToken start rate 1 gas token = 30 pair token
    */
    constructor (string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        _mint(recipient_fee, pairTokenBalance.div(30));
    }
    
    /**
    * @dev change pair token address 
    *
    * @param _token - new pair Token Address, using for migrate from pair token to DAO.
    */
    function changeTokenAddress(address _token) internal  {
        pairTokenAddress = _token;
        _updatePairTokenBalance();
        require(pairTokenBalance > 0, "StorageToken.changeTokenAddress:pairTokenBalance=0");
    }


    /**
    * @dev need to update DAO address.
    */
    function changeDAOAddress(address _newDAO) internal {
        DeNetDAOWallet = _newDAO;
    }

    /**
    *@dev function to change name of storage token. Using, when released new token to make this token ["old"]
    *
    *@param newName - for example "Storage Size V2"
    *@param newSybmol - for example "tb-v2"
    */
    function makeThistokenOld(string calldata newName, string calldata newSybmol) public onlyDeNetDAO {
        _name = string(abi.encodePacked("[OLD] ", newName));
        _symbol = string(abi.encodePacked("OLD-", newSybmol));
    }

    function _getDepositReturns(uint256 amount) internal view returns (uint256) {
        require(amount > 0, "StorageToken._getDepositReturns:amount<=0");
        return totalSupply().mul(amount).div(pairTokenBalance).mul(DIV_FEE.sub(payin_fee)).div(DIV_FEE);
    }

    function _getDepositFeeReturns(uint256 amount) internal view returns (uint256) {
        require(amount > 0, "StorageToken._getDepositFeeReturns:amount<=0");
        return totalSupply().mul(amount).div(pairTokenBalance).mul(payin_fee.mul(mint_percent).div(DIV_FEE)).div(DIV_FEE);
    }
    

    function _getWidthdrawithReturns(uint256 amount) internal view returns (uint256) {
        amount = amount.sub(amount.mul(payout_fee.mul(DIV_FEE.sub(unburn_percent)).div(DIV_FEE)).div(DIV_FEE));
        require(amount > 0, "StorageToken._getWidthdrawithReturns:amount<=0");
        return pairTokenBalance.mul(amount).div(totalSupply());
    }

    /**
    *@dev return amount to burn orign token
    *@return toFeeCollector - amount ot feeCollector
    */
    function _getPayoutFeeAmount(uint256 amount) internal view returns (uint256) {
        require(amount > 0, "StorageToken._getPayoutBurn:amount<=0");
        return amount.mul(payout_fee).div(DIV_FEE);
    }
    function feelessBalance(address account) public view returns(uint256) {
        return _balances[account];
    }
    
    function getWidthdrawtReturns(uint256 amount) public view returns (uint256) {
        return _getWidthdrawithReturns(toFeelessPayout(amount));
    }
    
    /*
        Function to Deposit pair token
    */
    function _deposit(uint256 amount) internal {
        _depositByAddress(msg.sender, amount);
    }
    
    function _depositByAddress(address _account, uint256 amount) internal {
        IERC20 pairToken = IERC20(pairTokenAddress);
        uint balanceBefore = pairToken.balanceOf(address(this));
        require(pairToken.transferFrom(_account, address(this), amount), "StorageToken._depositByAddress:pairToken.transferFrom failed");
        uint balanceAfter = pairToken.balanceOf(address(this));
        
        // real deposited amount
        amount = balanceAfter.sub(balanceBefore);

        // calc fee to mint
        uint mintFee = _getDepositFeeReturns(amount);

        // calc returns of deposit
        uint depositReturns =_getDepositReturns(amount);

        _mint(_account, depositReturns);
        
        // add minted fee
        _mint(address(this), mintFee);
        _addFee(mintFee);
        _collectFee();

        // update pairtoken balance
        pairTokenBalance = pairTokenBalance.add(amount);
    }

    function _updatePairTokenBalance() internal {
        IERC20 PairToken = IERC20(pairTokenAddress);
        pairTokenBalance = PairToken.balanceOf(address(this));
    }
    
    function  _closeAllDeposiByAddress(address account) internal  {
        require(account != recipient_fee, "StorageToken._closeAllDeposiByAddresst:account=recipient_fee");
        _closePartOfDepositByAddress(account, feelessBalance(account));
    }
    
    function _closePartOfDeposit(uint256 amount) internal {
        _closePartOfDepositByAddress(msg.sender, amount);
    }

    function _closePartOfDepositByAddress(address account, uint amount) internal {
        require(feelessBalance(account) >= amount, "StorageToken._closePartOfDepositByAddress:account.feelessBalance<amount");

        IERC20 pairToken = IERC20(pairTokenAddress);
        uint pairToken_return = _getWidthdrawithReturns(amount);
        uint feeAmount = _getPayoutFeeAmount(amount);
        pairTokenBalance = pairTokenBalance.sub(pairToken_return);
        pairToken.transfer(account, pairToken_return);

        _burn(account, amount);
        _addFee(feeAmount);
        _mint(address(this), feeAmount);
        _collectFee();
    }
    
    function _collectFee()  internal virtual {
        if (fee_collected >= fee_limit) {
            uint contractBalance = balanceOf(address(this));

            if (contractBalance < fee_collected) {
                fee_collected = contractBalance;
            }

            _transfer(address(this), recipient_fee, fee_collected);
            fee_collected = 0;
        }
    }
}